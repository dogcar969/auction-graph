import {
  assert,
  describe,
  test,
  clearStore,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach,
  newMockEvent,
  newMockCall,
  dataSourceMock,
} from "matchstick-as/assembly/index";
import {
  Address,
  BigInt,
  log,
  DataSourceContext,
  Value,
} from "@graphprotocol/graph-ts";
import { auctionRecord, listing } from "../generated/schema";
import { Bid, Auction } from "../generated/Auction/Auction";
import {
  handleBid,
  handleItemCanceled,
  handleItemListed,
  handleItemPass,
  handleItemSold,
  handlePrepaid,
  handleWithdraw,
  handlerevertWithNotApproved,
  handlerevertWithOwnershipChange,
} from "../src/auction";
import {
  createBidEvent,
  createItemListedEvent,
  createPrepaidEvent,
  createItemSoldEvent,
  createItemCanceledEvent,
  createItemPassEvent,
  createrevertWithNotApprovedEvent,
  createrevertWithOwnershipChangeEvent,
} from "./auction-utils";
import { WithdrawCall } from "../generated/Auction/Auction";

let payer = Address.fromString("0xa16081f360e3847006db660bae1c6d1b2e17ec2a");
let value = BigInt.fromI32(100);
let newPrePaidEvent = createPrepaidEvent(payer, value);

let nftAddress = Address.fromString(
  "0x0000000000000000000000000000000000000001"
);
let tokenId = BigInt.fromI32(234);
let seller = Address.fromString("0x0000000000000000000000000000000000000002");
let buyer = Address.fromString("0x0000000000000000000000000000000000000003");
let price = BigInt.fromI32(234);
let biggerPrice = BigInt.fromI32(345);
let id = nftAddress.toHexString() + tokenId.toString();
let newListedEvent = createItemListedEvent(nftAddress, tokenId, seller, price);
let newBidEvent = createBidEvent(nftAddress, tokenId, buyer, biggerPrice);
let newCancelEvent = createItemCanceledEvent(nftAddress, tokenId);
let newSoldEvent = createItemSoldEvent(nftAddress, tokenId, buyer, biggerPrice);
let newPassEvent = createItemPassEvent(nftAddress, tokenId);
let newNotApprovedEvent = createrevertWithNotApprovedEvent(nftAddress, tokenId);
let newChangeEvent = createrevertWithOwnershipChangeEvent(nftAddress, tokenId);
let context = new DataSourceContext();
context.set("period", Value.fromBigInt(BigInt.fromI32(600)));
dataSourceMock.setReturnValues(payer.toHexString(), "sepolia", context);

// 0xa16081f360e3847006db660bae1c6d1b2e17ec2a is the default address used in newMockEvent() function

function checkAuctionRecord(
  _id: string,
  _listing: listing,
  status: string,
  settleTime: BigInt
): void {
  assert.fieldEquals(
    "auctionRecord",
    _id,
    "nftAddress",
    _listing.nftAddress.toHexString()
  );
  assert.fieldEquals(
    "auctionRecord",
    _id,
    "tokenId",
    _listing.tokenId.toString()
  );
  assert.fieldEquals(
    "auctionRecord",
    _id,
    "seller",
    _listing.seller.toHexString()
  );
  assert.fieldEquals(
    "auctionRecord",
    _id,
    "buyer",
    _listing.buyer.toHexString()
  );
  assert.fieldEquals("auctionRecord", _id, "price", _listing.price.toString());
  assert.fieldEquals("auctionRecord", _id, "settleTime", settleTime.toString());
  assert.fieldEquals("auctionRecord", _id, "status", status);
}

describe("prepay and withdraw", () => {
  test("prepaid for the first time", () => {
    handlePrepaid(newPrePaidEvent);
    assert.fieldEquals("user", payer.toHexString(), "balance", "100");
  });

  test("prepaid twice", () => {
    handlePrepaid(newPrePaidEvent);
    assert.fieldEquals("user", payer.toHexString(), "balance", "200");
  });

  test("withdraw", () => {
    let withdraw = changetype<WithdrawCall>(newMockCall());
    handleWithdraw(withdraw);
    assert.fieldEquals(
      "user",
      "0xa16081f360e3847006db660bae1c6d1b2e17ec2a",
      "balance",
      "0"
    );
  });
});

describe("test below don't need anything done before", () => {
  afterEach(() => {
    clearStore();
  });
  test("listing created and stored", () => {
    handleItemListed(newListedEvent);
    assert.entityCount("listing", 1);

    assert.fieldEquals(
      "listing",
      id,
      "nftAddress",
      "0x0000000000000000000000000000000000000001"
    );
    assert.fieldEquals("listing", id, "tokenId", "234");
    assert.fieldEquals(
      "listing",
      id,
      "seller",
      "0x0000000000000000000000000000000000000002"
    );
    assert.fieldEquals("listing", id, "price", "234");
    assert.fieldEquals(
      "listing",
      id,
      "expiredTime",
      newListedEvent.block.timestamp.plus(BigInt.fromI32(600)).toString()
    );
    assert.fieldEquals(
      "listing",
      id,
      "buyer",
      "0x0000000000000000000000000000000000000000"
    );
    // More assert options:
    // https://thegraph.com/docs/en/developer/matchstick/#asserts
  });
  // test(
  //   "list same listing twice",
  //   () => {
  //     handleItemListed(newListedEvent);
  //   },
  //   true
  // );
});
describe("test below need have a listing first", () => {
  beforeEach(() => {
    handleItemListed(newListedEvent);
  });
  afterEach(() => {
    clearStore();
  });
  test("listing canceled before anyone bids", () => {
    let _listing = listing.load(id);
    handleItemCanceled(newCancelEvent);
    assert.entityCount("listing", 0);
    if (_listing) {
      checkAuctionRecord(
        newChangeEvent.transaction.hash.toHexString() +
          "-" +
          newChangeEvent.logIndex.toString(),
        _listing,
        "canceled",
        newChangeEvent.block.timestamp
      );
    } else {
      assert.stringEquals("listing", "not exists");
    }
  });
  test("listing passed", () => {
    let _listing = listing.load(id);
    handleItemPass(newPassEvent);
    assert.entityCount("listing", 0);
    if (_listing) {
      checkAuctionRecord(
        newChangeEvent.transaction.hash.toHexString() +
          "-" +
          newChangeEvent.logIndex.toString(),
        _listing,
        "pass",
        newChangeEvent.block.timestamp
      );
    } else {
      assert.stringEquals("listing", "not exists");
    }
  });
  test("listing bided", () => {
    handlePrepaid(createPrepaidEvent(buyer, biggerPrice));
    handleBid(newBidEvent);
    assert.fieldEquals("user", buyer.toHexString(), "balance", "0");
    assert.fieldEquals("listing", id, "buyer", buyer.toHexString());
    assert.fieldEquals("listing", id, "price", biggerPrice.toString());
    assert.fieldEquals(
      "listing",
      id,
      "expiredTime",
      newBidEvent.block.timestamp.plus(BigInt.fromI32(600)).toString()
    );
  });
  describe("test below need bid first", () => {
    beforeEach(() => {
      handlePrepaid(createPrepaidEvent(buyer, biggerPrice));
      handleBid(newBidEvent);
    });
    test("item sold", () => {
      let _listing = listing.load(id);
      handleItemSold(newSoldEvent);
      assert.fieldEquals(
        "user",
        seller.toHexString(),
        "balance",
        biggerPrice.toString()
      );
      assert.entityCount("listing", 0);
      if (_listing) {
        checkAuctionRecord(
          newChangeEvent.transaction.hash.toHexString() +
            "-" +
            newChangeEvent.logIndex.toString(),
          _listing,
          "sold",
          newChangeEvent.block.timestamp
        );
      } else {
        assert.stringEquals("listing", "not exists");
      }
    });
    test("item canceled after bid", () => {
      let _listing = listing.load(id);
      handleItemCanceled(newCancelEvent);
      assert.fieldEquals(
        "user",
        buyer.toHexString(),
        "balance",
        biggerPrice.toString()
      );
      assert.entityCount("listing", 0);
      if (_listing) {
        checkAuctionRecord(
          newChangeEvent.transaction.hash.toHexString() +
            "-" +
            newChangeEvent.logIndex.toString(),
          _listing,
          "canceled",
          newChangeEvent.block.timestamp
        );
      } else {
        assert.stringEquals("listing", "not exists");
      }
    });
    test("sold revert with no approval", () => {
      let _listing = listing.load(id);
      handlerevertWithNotApproved(newNotApprovedEvent);
      assert.fieldEquals(
        "user",
        buyer.toHexString(),
        "balance",
        biggerPrice.toString()
      );
      assert.entityCount("listing", 0);
      if (_listing) {
        checkAuctionRecord(
          newChangeEvent.transaction.hash.toHexString() +
            "-" +
            newChangeEvent.logIndex.toString(),
          _listing,
          "revertWithNotApproved",
          newChangeEvent.block.timestamp
        );
      } else {
        assert.stringEquals("listing", "not exists");
      }
    });
    test("sold revert with ownership transfer", () => {
      let _listing = listing.load(id);
      handlerevertWithOwnershipChange(newChangeEvent);
      assert.fieldEquals(
        "user",
        buyer.toHexString(),
        "balance",
        biggerPrice.toString()
      );
      assert.entityCount("listing", 0);
      if (_listing) {
        checkAuctionRecord(
          newChangeEvent.transaction.hash.toHexString() +
            "-" +
            newChangeEvent.logIndex.toString(),
          _listing,
          "revertWithOwnershipChange",
          newChangeEvent.block.timestamp
        );
      } else {
        assert.stringEquals("listing", "not exists");
      }
    });
  });
});
