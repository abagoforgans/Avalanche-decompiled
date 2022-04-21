contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address sellerAddress;
address nFTAddress;
uint256 nFTId;
mapping of struct bidders;
array of struct biddersList;
address highestBidderAddress;
uint256 stor7;
uint256 highestBid;
uint256 endTime;
uint256 startBlock;
uint256 claimTime;
uint256 startingPrice;
uint256 minimumIncrement;
uint256 duration;
uint8 stor15;
uint8 stor15; offset 8

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
    return bool(uint8(stor15.field_8))
}

function started() {
    return bool(uint8(stor15.field_0))
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

function minimumIncrement() {
    return minimumIncrement
}

function biddersList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < biddersList.length
    return biddersList[arg1].field_0
}

function startBlock() {
    return startBlock
}

function highestBidder() {
    return address(highestBidderAddress)
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
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require address(highestBidderAddress) != msg.sender
    if bidders[msg.sender].field_256:
        bidders[msg.sender].field_256 = 0
        call msg.sender with:
           value bidders[msg.sender].field_256 wei
             gas gas_remaining wei
        if not ext_call.success:
            stor0 = 1
            return 0
        emit 0xe4b292cd: msg.sender
    stor0 = 1
    return 1
}

function getBiddersList() {
    mem[64] = (32 * biddersList.length) + 128
    mem[96] = biddersList.length
    if not biddersList.length:
        mem[(32 * biddersList.length) + 128] = 32
        mem[(32 * biddersList.length) + 160] = biddersList.length
        idx = 0
        s = (32 * biddersList.length) + 192
        t = 128
        while idx < biddersList.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * biddersList.length) + 128
           len (96 * biddersList.length) + 64
    mem[128] = address(biddersList.field_0)
    idx = 128
    s = 0
    while (32 * biddersList.length) + 96 > idx:
        mem[idx + 32] = biddersList[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * biddersList.length) + 128] = 32
    mem[(32 * biddersList.length) + 160] = biddersList.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < biddersList.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * biddersList.length) + -mem[64] + 192
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
    if nFTAddress != msg.sender:
        revert with 0, 'invalid nft address'
    if arg3 != nFTId:
        revert with 0, 'invalid nft id'
    require not uint8(stor15.field_0)
    startBlock = block.number
    if block.timestamp > !duration:
        revert with 0, 17
    endTime = block.timestamp + duration
    if 24 * 3600 > !(block.timestamp + duration):
        revert with 0, 17
    claimTime = block.timestamp + duration + (24 * 3600)
    uint8(stor15.field_0) = 1
    mem[ceil32(arg4.length) + 128] = endTime
    emit AuctionStarted(uint256 rg1):
                        Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                        mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function increaseBid() payable {
    if not uint8(stor15.field_0):
        revert with 0, 'Auction not active.'
    if uint8(stor15.field_8):
        revert with 0, 'Auction not active.'
    if block.timestamp > claimTime:
        revert with 0, 'Claim time has ended.'
    if msg.value < minimumIncrement:
        revert with 0, 'new bid too small.'
    if bidders[msg.sender].field_256 > !msg.value:
        revert with 0, 17
    if block.timestamp > endTime:
        if highestBid > 0x888888888888888888888888888888888888888888888888888888888888888:
            revert with 0, 17
        if highestBid > !(30 * highestBid / 100):
            revert with 0, 17
        if bidders[msg.sender].field_256 + msg.value <= highestBid + (30 * highestBid / 100):
            revert with 0, 'Bid too small to reopen auction'
    if bidders[msg.sender].field_256 + msg.value <= startingPrice:
        revert with 0, 'Starting price is higher.'
    if bidders[msg.sender].field_256 + msg.value <= highestBid:
        revert with 0, 'There is already a higher bid.'
    if msg.sender == sellerAddress:
        revert with 0, 'seller can't bid.'
    if not bidders[msg.sender].field_0:
        biddersList.length++
        biddersList[biddersList.length].field_0 = msg.sender or Mask(96, 160, biddersList[biddersList.length].field_0)
        bidders[msg.sender].field_0 = 1
    bidders[msg.sender].field_256 += msg.value
    uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
    highestBid = bidders[msg.sender].field_256 + msg.value
    if block.timestamp > endTime:
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        endTime = block.timestamp + (24 * 3600)
        if 12 * 3600 > !(block.timestamp + (24 * 3600)):
            revert with 0, 17
        claimTime = block.timestamp + (36 * 3600)
    else:
        if endTime < block.timestamp:
            revert with 0, 17
        if endTime - block.timestamp < 300:
            if endTime > -181:
                revert with 0, 17
            endTime += 180
            if claimTime > -181:
                revert with 0, 17
            claimTime += 180
    emit HighestBidIncreased(msg.sender, bidders[msg.sender].field_256 + msg.value, endTime);
}

function close() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.timestamp < claimTime:
        revert with 0, 'Auction not ended yet.'
    if not uint8(stor15.field_0):
        revert with 0, 'Auction not active.'
    if uint8(stor15.field_8):
        revert with 0, 'Auction not active.'
    uint8(stor15.field_8) = 1
    emit AuctionEnded(address(highestBidderAddress), highestBid);
    if highestBid:
        bidders[address(stor7)].field_256 = 0
        if highestBid > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        call stor1 with:
           value 5 * highestBid / 200 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
            require ext_code.size(nFTAddress)
            call nFTAddress.0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), address(highestBidderAddress), nFTId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if highestBid < 5 * highestBid / 200:
                revert with 0, 17
            call sellerAddress with:
               value highestBid - (5 * highestBid / 200) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Address: unable to send value, recipient may have reverted'
            else:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            require ext_code.size(nFTAddress)
            call nFTAddress.0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), address(highestBidderAddress), nFTId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if highestBid < 5 * highestBid / 200:
                revert with 0, 17
            call sellerAddress with:
               value highestBid - (5 * highestBid / 200) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
    stor0 = 1
}

function returnLosingBids(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor15.field_0):
        revert with 0, 'Auction not ended yet'
    if not uint8(stor15.field_8):
        revert with 0, 'Auction not ended yet'
    if arg1.length > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'List of Bidders exceeds limit of 50'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        if bidders[address(cd[((32 * idx) + arg1 + 36)])].field_256:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 5
            bidders[address(cd[((32 * idx) + arg1 + 36)])].field_256 = 0
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value bidders[address(cd[((32 * idx) + arg1 + 36)])].field_256 wei
                 gas gas_remaining wei
            if return_data.size:
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_38] = return_data.size
                mem[_38 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not ext_call.success:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 5
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
            emit 0xe4b292cd: address(cd[((32 * idx) + arg1 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor0 = 1
    _30 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _31:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _30 + (32 * _31) + -mem[64] + 64
}



}
