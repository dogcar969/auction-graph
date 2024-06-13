import { Bytes, dataSource } from "@graphprotocol/graph-ts";
import { nftMetadata } from "../generated/schema";

export function handlenftMetadata(content: Bytes): void {
  let entity = nftMetadata.load(dataSource.stringParam());
  if (entity != null) {
    return;
  }
  entity = new nftMetadata(dataSource.stringParam());
  entity.json = content.toString();
  entity.save();
}
