import {
  Approval as ApprovalEvent,
  ApprovalForAll as ApprovalForAllEvent,
  Transfer as TransferEvent,
  nftMinted as nftMintedEvent,
  nftRequested as nftRequestedEvent,
  AnimalNft,
} from "../generated/AnimalNft/AnimalNft";
import {
  animalNft,
  AnimalNftUser,
  Transfer,
  nftMinted,
  nftRequested,
} from "../generated/schema";
import { nftMetadata as nftMetadataTemplate } from "../generated/templates";

export function handleApproval(event: ApprovalEvent): void {
  let entity = animalNft.load(event.params.tokenId.toString());
  if (entity != null) {
    entity.approved = event.params.approved;
    entity.save();
  }
}

export function handleApprovalForAll(event: ApprovalForAllEvent): void {
  let entity = AnimalNftUser.load(event.params.owner);
  if (entity != null) {
    // 添加
    if (event.params.approved) {
      let operators = entity.operators;
      if (operators !== null && !operators.includes(event.params.operator)) {
        operators.push(event.params.operator);
        entity.operators = operators;
      } else if (operators === null) {
        entity.operators = [event.params.operator];
      }
    }
    // 删除
    else {
      let operators = entity.operators;
      if (operators !== null) {
        if (operators.includes(event.params.operator)) {
          if (operators.length === 1) {
            entity.operators = null;
          } else {
            operators = operators.splice(
              operators.indexOf(event.params.operator),
              1
            );
            entity.operators = operators;
          }
        }
      }
    }
  } else {
    entity = new AnimalNftUser(event.params.owner);
    if (event.params.approved) {
      entity.operators = [event.params.operator];
    }
  }
  entity.save();
}

export function handleTransfer(event: TransferEvent): void {
  let to = AnimalNftUser.load(event.params.to);
  if (to == null) {
    to = new AnimalNftUser(event.params.to);
    to.save();
  }
  let nft = animalNft.load(event.params.tokenId.toString());
  if (nft != null) {
    nft.owner = event.params.to;
    nft.approved = null;
    nft.save();
  } else {
    nft = new animalNft(event.params.tokenId.toString());
    nft.owner = event.params.to;
    nft.save();
  }
  // log generation
  let log = new Transfer(
    event.transaction.hash.concatI32(event.logIndex.toI32())
  );
  log.from = event.params.from;
  log.to = event.params.to;
  log.tokenId = event.params.tokenId;

  log.blockNumber = event.block.number;
  log.blockTimestamp = event.block.timestamp;
  log.transactionHash = event.transaction.hash;

  log.save();
}

export function handlenftMinted(event: nftMintedEvent): void {
  let entity = animalNft.load(event.params.tokenId.toString());
  if (entity != null) {
    let contract = AnimalNft.bind(event.address);
    let tokenUri = contract.tokenURI(event.params.tokenId).slice(7);
    entity.metaData = tokenUri;
    nftMetadataTemplate.create(tokenUri);

    entity.save();
  }
  //log generation
  let log = new nftMinted(
    event.transaction.hash.concatI32(event.logIndex.toI32())
  );
  log.tokenId = event.params.tokenId;
  log.minter = event.params.minter;
  log.species = event.params.species;
  log.requestId = event.params.requestId;

  log.blockNumber = event.block.number;
  log.blockTimestamp = event.block.timestamp;
  log.transactionHash = event.transaction.hash;

  log.save();
}

export function handlenftRequested(event: nftRequestedEvent): void {
  let requester = AnimalNftUser.load(event.params.requester);
  if (requester == null) {
    requester = new AnimalNftUser(event.params.requester);
    requester.save();
  }
  // log generation
  let log = new nftRequested(
    event.transaction.hash.concatI32(event.logIndex.toI32())
  );
  log.requestId = event.params.requestId;
  log.requester = event.params.requester;

  log.blockNumber = event.block.number;
  log.blockTimestamp = event.block.timestamp;
  log.transactionHash = event.transaction.hash;

  log.save();
}
