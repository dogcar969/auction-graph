import {
  assert,
  describe,
  test,
  clearStore,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach,
  mockIpfsFile,
  mockFunction,
  createMockedFunction,
  dataSourceMock,
  logDataSources,
  readFile,
} from "matchstick-as/assembly/index";
import {
  Address,
  BigInt,
  dataSource,
  ethereum,
  log,
} from "@graphprotocol/graph-ts";
import {
  nftRequested as nftRequestedEvent,
  nftMinted as nftMintedEvent,
  Approval as ApprovalEvent,
  ApprovalForAll as ApprovalForAllEvent,
  Transfer as TransferEvent,
} from "../generated/AnimalNft/AnimalNft";
import {
  animalNft,
  nftRequested,
  nftMinted,
  Transfer,
  nftMetadata,
  AnimalNftUser,
} from "../generated/schema";
import {
  handleApproval,
  handleApprovalForAll,
  handleTransfer,
  handlenftMinted,
  handlenftRequested,
} from "../src/animal-nft";
import { handlenftMetadata } from "../src/metadata";
import {
  createApprovalEvent,
  createApprovalForAllEvent,
  createTransferEvent,
  createnftMintedEvent,
  createnftRequestedEvent,
} from "./animal-nft-utils";

import { nftMetadata as nftMetadataTemplate } from "../generated/templates";

export { handlenftMetadata, handlenftMinted };
// 0xa16081f360e3847006db660bae1c6d1b2e17ec2a is the default address used in newMockEvent() function
let tokenId = BigInt.fromI32(1);
let owner = Address.fromString("0x0000000000000000000000000000000000000001");
let operator1 = Address.fromString(
  "0x0000000000000000000000000000000000000002"
);
let operator2 = Address.fromString(
  "0x0000000000000000000000000000000000000003"
);
let requestId = BigInt.fromI32(100);
let from = Address.zero();
let to = Address.fromString("0x0000000000000000000000000000000000000004");
let newApprovalEvent = createApprovalEvent(owner, operator1, tokenId);
let newTrueApprovalForAllEvent1 = createApprovalForAllEvent(
  owner,
  operator1,
  true
);
let newTrueApprovalForAllEvent2 = createApprovalForAllEvent(
  owner,
  operator2,
  true
);
let newFalseApprovalForAllEvent = createApprovalForAllEvent(
  owner,
  operator1,
  false
);
let newNftRequestedEvent = createnftRequestedEvent(requestId, owner);
let newNftMintedEvent = createnftMintedEvent(tokenId, owner, 0, requestId);
let newTransferEvent = createTransferEvent(from, owner, tokenId);
let newTransferEvent2 = createTransferEvent(owner, to, tokenId);
let cid = "QmTHTcEsuiRzpxinE4fkmxcpCRN3uHrHGPV5Njk1wQh1EM";

describe("test metadata handler", () => {
  afterEach(() => {
    clearStore();
  });
  test("template creation and data saving", () => {
    nftMetadataTemplate.create(cid);
    assert.dataSourceCount("nftMetadata", 1);
    assert.dataSourceExists("nftMetadata", cid);
    logDataSources("nftMetadata");

    dataSourceMock.resetValues();
    dataSourceMock.setAddress(cid);
    const content = readFile("tests/ipfs/fish.json");
    handlenftMetadata(content);
    const metadata = nftMetadata.load(cid);
    assert.assertNotNull(metadata);
    if (metadata !== null) {
      log.info(typeof metadata.json, []);
    }
  });
});

describe("tests below don't need anything done", () => {
  afterEach(() => {
    clearStore();
  });
  test("nftRequest", () => {
    handlenftRequested(newNftRequestedEvent);
    let requester = AnimalNftUser.load(newNftRequestedEvent.params.requester);
    assert.assertNotNull(requester);
    // Log part is generated. Unit test is not needed.
  });
  test("approvalForAll add with no account", () => {
    handleApprovalForAll(newTrueApprovalForAllEvent1);
    assert.fieldEquals(
      "AnimalNftUser",
      owner.toHexString(),
      "operators",
      `[${operator1.toHexString()}]`
    );
  });
  test("approvalForAll add with account without operators", () => {
    let user = new AnimalNftUser(owner);
    user.save();
    handleApprovalForAll(newTrueApprovalForAllEvent1);
    assert.fieldEquals(
      "AnimalNftUser",
      owner.toHexString(),
      "operators",
      `[${operator1.toHexString()}]`
    );
  });
  test("approvalForAll add with account with operators", () => {
    let user = new AnimalNftUser(owner);
    user.save();
    handleApprovalForAll(newTrueApprovalForAllEvent1);
    handleApprovalForAll(newTrueApprovalForAllEvent2);
    assert.fieldEquals(
      "AnimalNftUser",
      owner.toHexString(),
      "operators",
      `[${operator1.toHexString()}, ${operator2.toHexString()}]`
    );
  });
  test("approvalForAll add repeatedly", () => {
    let user = new AnimalNftUser(owner);
    user.save();
    handleApprovalForAll(newTrueApprovalForAllEvent1);
    handleApprovalForAll(newTrueApprovalForAllEvent1);
    assert.fieldEquals(
      "AnimalNftUser",
      owner.toHexString(),
      "operators",
      `[${operator1.toHexString()}]`
    );
  });
  test("approvalForAll cancel with no account", () => {
    handleApprovalForAll(newFalseApprovalForAllEvent);
    let user = AnimalNftUser.load(newFalseApprovalForAllEvent.params.owner);
    assert.assertNotNull(user);
    if (user !== null) {
      assert.assertNull(user.operators);
    }
  });
  test("approvalForAll cancel with account having only one operator", () => {
    handleApprovalForAll(newTrueApprovalForAllEvent1);
    handleApprovalForAll(newFalseApprovalForAllEvent);
    let user = AnimalNftUser.load(newFalseApprovalForAllEvent.params.owner);
    assert.assertNotNull(user);
    if (user !== null) {
      assert.assertNull(user.operators);
    }
  });
  test("approvalForAll cancel with account with operators", () => {
    handleApprovalForAll(newTrueApprovalForAllEvent1);
    handleApprovalForAll(newTrueApprovalForAllEvent2);
    handleApprovalForAll(newFalseApprovalForAllEvent);
    assert.fieldEquals(
      "AnimalNftUser",
      owner.toHexString(),
      "operators",
      `[${operator1.toHexString()}]`
    );
  });
  test("nftTransfer with new nft", () => {
    handleTransfer(newTransferEvent);
    assert.fieldEquals(
      "animalNft",
      tokenId.toString(),
      "owner",
      owner.toHexString()
    );
    // log part don't need unit test
  });
});
describe("tests below need a nft", () => {
  beforeEach(() => {
    handleTransfer(newTransferEvent);
  });
  afterEach(() => {
    clearStore();
  });
  test("nftMinted", () => {
    dataSourceMock.setAddress(cid);
    const content = readFile("tests/ipfs/fish.json");
    handlenftMetadata(content);
    createMockedFunction(
      newTransferEvent.address,
      "tokenURI",
      "tokenURI(uint256):(string)"
    )
      .withArgs([ethereum.Value.fromUnsignedBigInt(tokenId)])
      .returns([
        ethereum.Value.fromString(
          "ipfs://QmTHTcEsuiRzpxinE4fkmxcpCRN3uHrHGPV5Njk1wQh1EM"
        ),
      ]);
    handlenftMinted(newNftMintedEvent);

    let data = nftMetadata.load(cid);
    assert.entityCount("nftMetadata", 1);
    assert.assertNotNull(data);
    assert.fieldEquals(
      "nftMetadata",
      cid,
      "json",
      `{
  "name": "fish",
  "description": "such a fish",
  "image": "ipfs://QmXuaNee7MPYWtGibWHnesEN5CPdJw2tuXxwjCT7uNiUMr",
  "attributes": [
    {
      "trait_type": "Color",
      "value": "red"
    }
  ]
}
`
    );

    let nft = animalNft.load(newNftMintedEvent.params.tokenId.toString());
    if (nft != null) {
      assert.assertNotNull(nft.metaData);
    }
    // log part don't need unit test
  });
  test("nftApproval", () => {
    handleApproval(newApprovalEvent);
    assert.fieldEquals(
      "animalNft",
      newApprovalEvent.params.tokenId.toString(),
      "approved",
      newApprovalEvent.params.approved.toHexString()
    );
  });
  test("nftTransfer with minted nft", () => {
    handleTransfer(newTransferEvent2);
    assert.fieldEquals(
      "animalNft",
      newTransferEvent2.params.tokenId.toString(),
      "owner",
      newTransferEvent2.params.to.toHexString()
    );
  });
  test("nftTransfer should clean approval", () => {
    handleApproval(newApprovalEvent);
    handleTransfer(newTransferEvent2);
    assert.fieldEquals(
      "animalNft",
      newTransferEvent2.params.tokenId.toString(),
      "owner",
      newTransferEvent2.params.to.toHexString()
    );
    assert.fieldEquals(
      "animalNft",
      newTransferEvent2.params.tokenId.toString(),
      "approved",
      "null"
    );
  });
});
