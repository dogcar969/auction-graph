import {
  BigInt,
  Bytes,
  dataSource,
  store,
  json,
  Address,
  ethereum,
} from "@graphprotocol/graph-ts";
import {
  Auction,
  Bid,
  ItemCanceled,
  ItemListed,
  ItemPass,
  ItemSold,
  Prepaid,
  revertWithNotApproved,
  revertWithOwnershipChange,
} from "../generated/Auction/Auction";
import { auctionRecord, listing, user } from "../generated/schema";
import { WithdrawCall } from "../generated/Auction/Auction";

function createAuctionRecord(
  entity: listing,
  hash: Bytes,
  logIndex: BigInt,
  settleTime: BigInt,
  status: string
): void {
  let record = new auctionRecord(hash.toHex() + "-" + logIndex.toString());
  record.nftAddress = entity.nftAddress;
  record.tokenId = entity.tokenId;
  record.price = entity.price;
  record.seller = entity.seller;
  record.buyer = entity.buyer;
  record.settleTime = settleTime;
  record.status = status;
  record.save();
}

export function handleBid(event: Bid): void {
  const id =
    event.params.nftAddress.toHexString() + event.params.tokenId.toString();
  let entity = listing.load(id);

  if (entity !== null) {
    entity.buyer = event.params.bider;
    entity.price = event.params.price;
    entity.expiredTime = event.block.timestamp.plus(
      dataSource.context().getBigInt("period")
    );
    entity.save();
    let bider = user.load(entity.buyer);
    if (bider != null) {
      bider.balance = bider.balance.minus(event.params.price);
      bider.save();
    }
  }
}

export function handleItemCanceled(event: ItemCanceled): void {
  const id =
    event.params.nftAddress.toHexString() + event.params.tokenId.toString();
  let entity = listing.load(id);

  if (entity !== null) {
    // refund
    if (entity.buyer != Address.zero()) {
      let buyer = user.load(entity.buyer);
      if (buyer !== null) {
        buyer.balance = buyer.balance.plus(entity.price);
        buyer.save();
      }
    }
    createAuctionRecord(
      entity,
      event.transaction.hash,
      event.logIndex,
      event.block.timestamp,
      "canceled"
    );
    store.remove("listing", id);
  }
}

export function handleItemListed(event: ItemListed): void {
  const id =
    event.params.nftAddress.toHexString() + event.params.tokenId.toString();
  let entity = listing.load(id);
  if (entity == null) {
    entity = new listing(id);
    entity.nftAddress = event.params.nftAddress;
    entity.tokenId = event.params.tokenId;
    entity.buyer = Address.zero();
    entity.seller = event.params.seller;
    entity.price = event.params.price;
    entity.expiredTime = event.block.timestamp.plus(
      dataSource.context().getBigInt("period")
    );
    // nftInfo
    entity.save();
  }
}

export function handleItemPass(event: ItemPass): void {
  const id =
    event.params.nftAddress.toHexString() + event.params.tokenId.toString();
  let entity = listing.load(id);
  if (entity !== null) {
    createAuctionRecord(
      entity,
      event.transaction.hash,
      event.logIndex,
      event.block.timestamp,
      "pass"
    );
    store.remove("listing", id);
  }
}

export function handleItemSold(event: ItemSold): void {
  const id =
    event.params.nftAddress.toHexString() + event.params.tokenId.toString();
  let entity = listing.load(id);
  if (entity != null) {
    let seller = user.load(entity.seller);
    if (seller != null) {
      seller.balance = seller.balance.plus(event.params.price);
      seller.save();
    } else {
      seller = new user(entity.seller);
      seller.balance = event.params.price;
      seller.save();
    }
    createAuctionRecord(
      entity,
      event.transaction.hash,
      event.logIndex,
      event.block.timestamp,
      "sold"
    );
    store.remove("listing", id);
  }
}

export function handlePrepaid(event: Prepaid): void {
  let entity = user.load(event.params.payer);
  if (entity == null) {
    entity = new user(event.params.payer);
    entity.balance = event.params.value;
  } else {
    entity.balance = entity.balance.plus(event.params.value);
  }
  entity.save();
}

export function handlerevertWithNotApproved(
  event: revertWithNotApproved
): void {
  const id =
    event.params.nftAddress.toHexString() + event.params.tokenId.toString();
  let entity = listing.load(id);

  if (entity !== null) {
    // refund
    let buyer = user.load(entity.buyer);
    if (buyer !== null) {
      buyer.balance = buyer.balance.plus(entity.price);
      buyer.save();
    }
    createAuctionRecord(
      entity,
      event.transaction.hash,
      event.logIndex,
      event.block.timestamp,
      "revertWithNotApproved"
    );
    store.remove("listing", id);
  }
}

export function handlerevertWithOwnershipChange(
  event: revertWithOwnershipChange
): void {
  const id =
    event.params.nftAddress.toHexString() + event.params.tokenId.toString();
  let entity = listing.load(id);

  if (entity !== null) {
    // refund
    let buyer = user.load(entity.buyer);
    if (buyer !== null) {
      buyer.balance = buyer.balance.plus(entity.price);
      buyer.save();
    }
    createAuctionRecord(
      entity,
      event.transaction.hash,
      event.logIndex,
      event.block.timestamp,
      "revertWithOwnershipChange"
    );
    store.remove("listing", id);
  }
}

export function handleWithdraw(call: WithdrawCall): void {
  let _user = user.load(call.from);
  if (_user != null) {
    _user.balance = BigInt.fromI32(0);
    _user.save();
  }
}
