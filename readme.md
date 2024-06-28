<center><h1>Auction Graph Part</h1></center>

## What does this project do?

&nbsp;&nbsp;Analyse on-chain data through events and function calls.

---

**For Auction:**

1. Create listing entity accroding to itemListed event.
2. Update listing entity accroding to Bid event.
3. Delete listing entity and leave a record according to ItemPass,revertWithNotApproved,revertWithOwnershipChange,ItemSold,ItemCanceled.
4. Keep in track with user balance though Prepaid event and withdraw function call.

**For AnimalNft:**

1. Record request and mint event.
2. Fetch nft information through file data source.
3. Keep in track with user approvals and nft approvals.

## What's the features of this project?

1. [fully covered unit test](https://github.com/dogcar969/auction-graph/tree/master/tests).
2. [file data source](https://thegraph.com/docs/en/developing/creating-a-subgraph/#file-data-sources)
   - [handler](https://github.com/dogcar969/auction-graph/blob/master/src/metadata.ts)
