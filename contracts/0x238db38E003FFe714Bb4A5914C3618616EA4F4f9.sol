contract main {




// =====================  Runtime code  =====================


address stor0;
address sellerAddress;
address nFTAddress;
uint256 nFTId;
mapping of struct bidders;
array of address biddersList;
address highestBidderAddress;
uint256 highestBid;
uint256 endTime;
uint256 startBlock;
uint256 claimTime;
uint256 startingPrice;
uint256 duration;
uint8 started;
uint8 ended; offset 8
uint256 stor13; offset 8

function seller() {
    return sellerAddress
}

function duration() {
    return duration
}

function NFTId() {
    return nFTId
}

function ended() {
    return bool(ended)
}

function started() {
    return bool(started)
}

function claimTime() {
    return claimTime
}

function NFTAddress() {
    return nFTAddress
}

function endTime() {
    return endTime
}

function biddersList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < biddersList.length
    return biddersList[arg1]
}

function startBlock() {
    return startBlock
}

function highestBidder() {
    return highestBidderAddress
}

function highestBid() {
    return highestBid
}

function startingPrice() {
    return startingPrice
}

function bidders(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(bidders[arg1].field_0), bidders[arg1].field_256
}

function _fallback() payable {
    revert
}

function withdraw() {
    require highestBidderAddress != msg.sender
    if bidders[address(msg.sender)].field_256 > 0:
        bidders[address(msg.sender)].field_256 = 0
        call msg.sender with:
           value bidders[address(msg.sender)].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return 0
        emit 0xe4b292cd: msg.sender
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if nFTAddress != msg.sender:
        revert with 0, 'invalid nft address'
    if arg3 != nFTId:
        revert with 0, 'invalid nft id'
    startBlock = block.number
    if block.timestamp > -duration - 1:
        revert with 'NH{q', 17
    endTime = block.timestamp + duration
    if endTime > -601:
        revert with 'NH{q', 17
    claimTime = endTime + 600
    started = 1
    emit AuctionStarted(endTime);
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function close() {
    if block.timestamp < claimTime:
        revert with 0, 'Auction not ended yet.'
    if not started:
        revert with 0, 'Auction not active.'
    if ended:
        revert with 0, 'Auction not active.'
    stor13 = 1
    emit AuctionEnded(highestBidderAddress, highestBid);
    if highestBid > 0:
        bidders[stor6].field_256 = 0
        if highestBid / 200 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 'NH{q', 17
        call stor0 with:
           value 5 * highestBid / 200 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(nFTAddress)
        call nFTAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), highestBidderAddress, nFTId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if highestBid < 5 * highestBid / 200:
            revert with 'NH{q', 17
        call sellerAddress with:
           value highestBid - (5 * highestBid / 200) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function returnLosingBids() {
    if not started:
        revert with 0, 'Auction not ended yet'
    if not ended:
        revert with 0, 'Auction not ended yet'
    idx = 0
    while idx < biddersList.length:
        mem[0] = biddersList[idx]
        mem[32] = 4
        if bidders[stor5[idx]].field_256 > 0:
            if idx >= biddersList.length:
                revert with 'NH{q', 50
            mem[32] = 4
            bidders[stor5[idx]].field_256 = 0
            call biddersList[idx] with:
               value bidders[stor5[idx]].field_256 wei
                 gas 2300 * is_zero(value) wei
            if idx >= biddersList.length:
                revert with 'NH{q', 50
            if not ext_call.success:
                mem[32] = 4
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = biddersList[idx]
            mem[0] = 5
            mem[96] = biddersList[idx]
            emit 0xe4b292cd: biddersList[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[128] = 32
    idx = 0
    s = 128
    t = 160
    while idx < 32:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, 32, mem[160 len 1024]
}

function bid() payable {
    if not started:
        revert with 0, 'Auction not active.'
    if ended:
        revert with 0, 'Auction not active.'
    if block.timestamp > claimTime:
        revert with 0, 'Claim time has ended.'
    if msg.value <= 10^15:
        revert with 0, 'new bid too small.'
    if bidders[address(msg.sender)].field_256 > -msg.value - 1:
        revert with 'NH{q', 17
    if block.timestamp > endTime:
        if highestBid and 10 > -1 / highestBid:
            revert with 'NH{q', 17
        if highestBid > -(10 * highestBid / 100) - 1:
            revert with 'NH{q', 17
        if bidders[address(msg.sender)].field_256 + msg.value < highestBid + (10 * highestBid / 100):
            revert with 0, 'Bid too small to reopen auction'
    if bidders[address(msg.sender)].field_256 + msg.value <= startingPrice:
        revert with 0, 'Starting price is higher.'
    if bidders[address(msg.sender)].field_256 + msg.value <= highestBid:
        revert with 0, 'There is already a higher bid.'
    if msg.sender == sellerAddress:
        revert with 0, 'seller can't bid.'
    if not bidders[address(msg.sender)].field_0:
        biddersList.length++
        biddersList[biddersList.length] = msg.sender
        bidders[address(msg.sender)].field_0 = 1
    bidders[address(msg.sender)].field_256 += msg.value
    highestBidderAddress = msg.sender
    highestBid = bidders[address(msg.sender)].field_256 + msg.value
    if block.timestamp > endTime:
        if endTime > -601:
            revert with 'NH{q', 17
        endTime += 600
        claimTime = endTime + 600
    else:
        if endTime < block.timestamp:
            revert with 'NH{q', 17
        if endTime - block.timestamp < 300:
            if endTime > -181:
                revert with 'NH{q', 17
            endTime += 180
            if claimTime > -181:
                revert with 'NH{q', 17
            claimTime += 180
    emit HighestBidIncreased(msg.sender, bidders[address(msg.sender)].field_256 + msg.value, endTime);
}



}
