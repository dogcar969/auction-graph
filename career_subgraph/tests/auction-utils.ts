import { newMockEvent } from "matchstick-as"
import { ethereum, Address, BigInt } from "@graphprotocol/graph-ts"
import {
  Bid,
  ItemCanceled,
  ItemListed,
  ItemPass,
  ItemSold,
  Prepaid,
  revertWithNotApproved,
  revertWithOwnershipChange
} from "../generated/Auction/Auction"

export function createBidEvent(
  nftAddress: Address,
  tokenId: BigInt,
  bider: Address,
  price: BigInt
): Bid {
  let bidEvent = changetype<Bid>(newMockEvent())

  bidEvent.parameters = new Array()

  bidEvent.parameters.push(
    new ethereum.EventParam(
      "nftAddress",
      ethereum.Value.fromAddress(nftAddress)
    )
  )
  bidEvent.parameters.push(
    new ethereum.EventParam(
      "tokenId",
      ethereum.Value.fromUnsignedBigInt(tokenId)
    )
  )
  bidEvent.parameters.push(
    new ethereum.EventParam("bider", ethereum.Value.fromAddress(bider))
  )
  bidEvent.parameters.push(
    new ethereum.EventParam("price", ethereum.Value.fromUnsignedBigInt(price))
  )

  return bidEvent
}

export function createItemCanceledEvent(
  nftAddress: Address,
  tokenId: BigInt
): ItemCanceled {
  let itemCanceledEvent = changetype<ItemCanceled>(newMockEvent())

  itemCanceledEvent.parameters = new Array()

  itemCanceledEvent.parameters.push(
    new ethereum.EventParam(
      "nftAddress",
      ethereum.Value.fromAddress(nftAddress)
    )
  )
  itemCanceledEvent.parameters.push(
    new ethereum.EventParam(
      "tokenId",
      ethereum.Value.fromUnsignedBigInt(tokenId)
    )
  )

  return itemCanceledEvent
}

export function createItemListedEvent(
  nftAddress: Address,
  tokenId: BigInt,
  seller: Address,
  price: BigInt
): ItemListed {
  let itemListedEvent = changetype<ItemListed>(newMockEvent())

  itemListedEvent.parameters = new Array()

  itemListedEvent.parameters.push(
    new ethereum.EventParam(
      "nftAddress",
      ethereum.Value.fromAddress(nftAddress)
    )
  )
  itemListedEvent.parameters.push(
    new ethereum.EventParam(
      "tokenId",
      ethereum.Value.fromUnsignedBigInt(tokenId)
    )
  )
  itemListedEvent.parameters.push(
    new ethereum.EventParam("seller", ethereum.Value.fromAddress(seller))
  )
  itemListedEvent.parameters.push(
    new ethereum.EventParam("price", ethereum.Value.fromUnsignedBigInt(price))
  )

  return itemListedEvent
}

export function createItemPassEvent(
  nftAddress: Address,
  tokenId: BigInt
): ItemPass {
  let itemPassEvent = changetype<ItemPass>(newMockEvent())

  itemPassEvent.parameters = new Array()

  itemPassEvent.parameters.push(
    new ethereum.EventParam(
      "nftAddress",
      ethereum.Value.fromAddress(nftAddress)
    )
  )
  itemPassEvent.parameters.push(
    new ethereum.EventParam(
      "tokenId",
      ethereum.Value.fromUnsignedBigInt(tokenId)
    )
  )

  return itemPassEvent
}

export function createItemSoldEvent(
  nftAddress: Address,
  tokenId: BigInt,
  buyer: Address,
  price: BigInt
): ItemSold {
  let itemSoldEvent = changetype<ItemSold>(newMockEvent())

  itemSoldEvent.parameters = new Array()

  itemSoldEvent.parameters.push(
    new ethereum.EventParam(
      "nftAddress",
      ethereum.Value.fromAddress(nftAddress)
    )
  )
  itemSoldEvent.parameters.push(
    new ethereum.EventParam(
      "tokenId",
      ethereum.Value.fromUnsignedBigInt(tokenId)
    )
  )
  itemSoldEvent.parameters.push(
    new ethereum.EventParam("buyer", ethereum.Value.fromAddress(buyer))
  )
  itemSoldEvent.parameters.push(
    new ethereum.EventParam("price", ethereum.Value.fromUnsignedBigInt(price))
  )

  return itemSoldEvent
}

export function createPrepaidEvent(payer: Address, value: BigInt): Prepaid {
  let prepaidEvent = changetype<Prepaid>(newMockEvent())

  prepaidEvent.parameters = new Array()

  prepaidEvent.parameters.push(
    new ethereum.EventParam("payer", ethereum.Value.fromAddress(payer))
  )
  prepaidEvent.parameters.push(
    new ethereum.EventParam("value", ethereum.Value.fromUnsignedBigInt(value))
  )

  return prepaidEvent
}

export function createrevertWithNotApprovedEvent(
  nftAddress: Address,
  tokenId: BigInt
): revertWithNotApproved {
  let revertWithNotApprovedEvent = changetype<revertWithNotApproved>(
    newMockEvent()
  )

  revertWithNotApprovedEvent.parameters = new Array()

  revertWithNotApprovedEvent.parameters.push(
    new ethereum.EventParam(
      "nftAddress",
      ethereum.Value.fromAddress(nftAddress)
    )
  )
  revertWithNotApprovedEvent.parameters.push(
    new ethereum.EventParam(
      "tokenId",
      ethereum.Value.fromUnsignedBigInt(tokenId)
    )
  )

  return revertWithNotApprovedEvent
}

export function createrevertWithOwnershipChangeEvent(
  nftAddress: Address,
  tokenId: BigInt
): revertWithOwnershipChange {
  let revertWithOwnershipChangeEvent = changetype<revertWithOwnershipChange>(
    newMockEvent()
  )

  revertWithOwnershipChangeEvent.parameters = new Array()

  revertWithOwnershipChangeEvent.parameters.push(
    new ethereum.EventParam(
      "nftAddress",
      ethereum.Value.fromAddress(nftAddress)
    )
  )
  revertWithOwnershipChangeEvent.parameters.push(
    new ethereum.EventParam(
      "tokenId",
      ethereum.Value.fromUnsignedBigInt(tokenId)
    )
  )

  return revertWithOwnershipChangeEvent
}
