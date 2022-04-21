contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address sub_c02b9e5eAddress;
uint256 totalVolume;
uint256 totalSales;
uint256 timeBuffer;
uint8 minBidIncrementPercentage;
mapping of struct auctions;
array of struct sub_c0eb714a;
array of struct sub_13f4fd04;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
address stor13;

function sub_13f4fd04(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_13f4fd04[arg1].field_0
    return address(sub_13f4fd04[arg1][arg2].field_0), sub_13f4fd04[arg1][arg2].field_256, sub_13f4fd04[arg1][arg2].field_512
}

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(auctions[arg1].field_256) >= 2:
        revert with 0, 33
    return auctions[arg1].field_0, 
           uint8(auctions[arg1].field_256),
           auctions[arg1].field_512,
           auctions[arg1].field_768,
           auctions[arg1].field_1024,
           auctions[arg1].field_1280,
           address(auctions[arg1].field_1536),
           address(auctions[arg1].field_1792),
           auctions[arg1].field_2048,
           bool(uint8(auctions[arg1].field_2304)),
           auctions[arg1].field_2560
}

function totalVolume() {
    return totalVolume
}

function totalSales() {
    return totalSales
}

function owner() {
    return owner
}

function minBidIncrementPercentage() {
    return minBidIncrementPercentage
}

function sub_c02b9e5e(?) {
    return sub_c02b9e5eAddress
}

function sub_c0eb714a(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_c0eb714a[arg1].field_0
    if uint8(sub_c0eb714a[arg1][arg2].field_0) >= 4:
        revert with 0, 33
    return uint8(sub_c0eb714a[arg1][arg2].field_0), 
           sub_c0eb714a[arg1][arg2].field_256,
           address(sub_c0eb714a[arg1][arg2].field_512),
           address(sub_c0eb714a[arg1][arg2].field_768),
           sub_c0eb714a[arg1][arg2].field_1024
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function timeBuffer() {
    return timeBuffer
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    return (totalDividend - lastDividendAt[arg1])
}

function setMinBidIncrementPercentage(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minBidIncrementPercentage = arg1
}

function setTimeBuffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invalid time buffer'
    timeBuffer = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setAuctionReservePrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(auctions[arg1].field_2304):
        revert with 0, 'The token auction isn't listed'
    if address(auctions[arg1].field_1536) != msg.sender:
        revert with 0, 'Must be token owner'
    if auctions[arg1].field_1024:
        revert with 0, 'Auction has already started'
    auctions[arg1].field_1280 = arg2
    emit 0xfd61af49: block.timestamp, arg2, arg1
}

function cancelAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(auctions[arg1].field_2304):
        revert with 0, 'The token auction isn't listed'
    if address(auctions[arg1].field_1536) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by auction creator'
    if auctions[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't cancel an auction once it's begun'
    sub_c0eb714a[arg1].field_0++
    uint8(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_0) = 3
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_256 = auctions[arg1].field_1280
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_512) = this.address
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_768) = address(auctions[arg1].field_1536)
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_1024 = block.timestamp
    require ext_code.size(sub_c02b9e5eAddress)
    call sub_c02b9e5eAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(auctions[arg1].field_1536), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8dec9857: block.timestamp, address(auctions[arg1].field_1536), arg1
    uint8(auctions[arg1].field_2304) = 0
    stor0 = 1
}

function sub_4aa45e30(?) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Invalid token id'
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Invalid token id'
    mem[0] = arg1
    mem[32] = 9
    mem[64] = ceil32(return_data.size) + (32 * sub_13f4fd04[arg1].field_0) + 128
    mem[ceil32(return_data.size) + 96] = sub_13f4fd04[arg1].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < sub_13f4fd04[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _21 = mem[64]
        mem[64] = mem[64] + 96
        mem[_21] = address(sub_13f4fd04[arg1][idx].field_0)
        mem[_21 + 32] = sub_13f4fd04[arg1][idx].field_256
        mem[_21 + 64] = sub_13f4fd04[arg1][idx].field_512
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    _23 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _23:
        _29 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_29 + 32]
        mem[t + 64] = mem[_29 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _22 + (96 * _23) + -mem[64] + 64
}

function sub_44ee4c56(?) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.mem[var18003 len 4] with:
            gas gas_remaining wei
           args mem[var18003 + 4 len var18004 - 4]
    mem[var18005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var22002 - var22001 >= 32
    if var26002 > var26001:
        return var26003
    mem[0] = var28001
    mem[32] = 7
    if var28002 >= auctions[var28001].field_2048:
        if var28001 == -1:
            revert with 0, 17
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if var28001 + 1 > ext_call.return_data[0]:
            return var28002
        var28001 = var28001 + 1
        var28002 = var28002
        continue 
    mem[0] = var28001
    mem[32] = 7
    if var28001 == -1:
        revert with 0, 17
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if var28001 + 1 > ext_call.return_data[0]:
        return auctions[var28001].field_2048
    var28001 = var28001 + 1
    var28002 = auctions[var28001].field_2048
    continue 
}

function sub_30e32439(?) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Invalid token id'
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Invalid token id'
    mem[0] = arg1
    mem[32] = 8
    mem[64] = ceil32(return_data.size) + (32 * sub_c0eb714a[arg1].field_0) + 128
    mem[ceil32(return_data.size) + 96] = sub_c0eb714a[arg1].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < sub_c0eb714a[arg1].field_0:
        mem[0] = sha3(arg1, 8)
        _23 = mem[64]
        mem[64] = mem[64] + 160
        if uint8(sub_c0eb714a[arg1][idx].field_0) > 3:
            revert with 0, 33
        mem[_23] = uint8(sub_c0eb714a[arg1][idx].field_0)
        mem[_23 + 32] = sub_c0eb714a[arg1][idx].field_256
        mem[_23 + 64] = address(sub_c0eb714a[arg1][idx].field_512)
        mem[_23 + 96] = address(sub_c0eb714a[arg1][idx].field_768)
        mem[_23 + 128] = sub_c0eb714a[arg1][idx].field_1024
        mem[s] = _23
        s = s + 32
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    _25 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _25:
        _33 = mem[s]
        if mem[mem[s]] >= 4:
            revert with 0, 33
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_33 + 32]
        mem[t + 64] = mem[_33 + 76 len 20]
        mem[t + 96] = mem[_33 + 108 len 20]
        mem[t + 128] = mem[_33 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _24 + (160 * _25) + -mem[64] + 64
}

function sub_e706dcf0(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(auctions[arg1].field_2304):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The token auction was already listed'
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'Caller must be approved or owner for token id'
    sub_c0eb714a[arg1].field_0++
    uint8(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_0) = 1
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_256 = arg2
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_512) = msg.sender
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_768) = this.address
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_1024 = block.timestamp
    auctions[arg1].field_0 = arg1
    uint8(auctions[arg1].field_256) = 1
    auctions[arg1].field_512 = 0
    auctions[arg1].field_768 = 0
    auctions[arg1].field_1024 = 0
    auctions[arg1].field_1280 = arg2
    address(auctions[arg1].field_1536) = address(ext_call.return_data[0])
    address(auctions[arg1].field_1792) = 0
    auctions[arg1].field_2048 % 1 = 0
    uint8(auctions[arg1].field_2304) = 1
    auctions[arg1].field_2560 = block.timestamp
    require ext_code.size(sub_c02b9e5eAddress)
    call sub_c02b9e5eAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCreated(block.timestamp, 0, arg2, address(ext_call.return_data[0]), arg1);
    stor0 = 1
    return arg1
}

function getFloorPrice() payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.mem[var19003 len 4] with:
            gas gas_remaining wei
           args mem[var19003 + 4 len var19004 - 4]
    mem[var19005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var23002 - var23001 >= 32
    if var27002 > var27001:
        return var27003
    mem[0] = var29001
    mem[32] = 7
    if not auctions[var29001].field_1280:
        if var29001 == -1:
            revert with 0, 17
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if var29001 + 1 > ext_call.return_data[0]:
            return var29002
        var29001 = var29001 + 1
        var29002 = var29002
        continue 
    mem[0] = var29001
    mem[32] = 7
    if var29002:
        if var29002 <= auctions[var29001].field_1280:
            if var29001 == -1:
                revert with 0, 17
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if var29001 + 1 > ext_call.return_data[0]:
                return var29002
            var29001 = var29001 + 1
            var29002 = var29002
            continue 
    if var29001 == -1:
        revert with 0, 17
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if var29001 + 1 > ext_call.return_data[0]:
        return auctions[var29001].field_1280
    var29001 = var29001 + 1
    var29002 = auctions[var29001].field_1280
    continue 
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(auctions[arg1].field_2304):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The token auction was already listed'
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'Caller must be approved or owner for token id'
    if arg2 < 3600:
        revert with 0, 'Invalid auction duration'
    if arg2 > 720 * 24 * 3600:
        revert with 0, 'Invalid auction duration'
    sub_c0eb714a[arg1].field_0++
    uint8(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_0) = 0
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_256 % 1 = 0
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_256 = arg3
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_512) = msg.sender
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_768) = this.address
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_1024 = block.timestamp
    auctions[arg1].field_0 = arg1
    uint8(auctions[arg1].field_256) = 0
    auctions[arg1].field_512 % 1 = 0
    auctions[arg1].field_512 = 0
    auctions[arg1].field_768 = arg2
    auctions[arg1].field_1024 = 0
    auctions[arg1].field_1280 = arg3
    address(auctions[arg1].field_1536) = address(ext_call.return_data[0])
    address(auctions[arg1].field_1792) = 0
    auctions[arg1].field_2048 % 1 = 0
    uint8(auctions[arg1].field_2304) = 1
    auctions[arg1].field_2560 = block.timestamp
    require ext_code.size(sub_c02b9e5eAddress)
    call sub_c02b9e5eAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCreated(block.timestamp, arg2, arg3, address(ext_call.return_data[0]), arg1);
    stor0 = 1
    return arg1
}

function getReflectionBalances() {
    mem[100] = msg.sender
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[0] = mem[_16]
        mem[32] = 12
        if totalDividend < lastDividendAt[mem[0]]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[mem[0]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[mem[0]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function createBid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(auctions[arg1].field_2304):
        revert with 0, 'The token auction isn't listed'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(auctions[arg1].field_256) > 1:
        revert with 0, 33
    if uint8(auctions[arg1].field_256):
        revert with 0, 'Can't bid to auction list'
    if auctions[arg1].field_1024:
        if auctions[arg1].field_1024 > !auctions[arg1].field_768:
            revert with 0, 17
        if block.timestamp >= auctions[arg1].field_1024 + auctions[arg1].field_768:
            revert with 0, 'Auction expired'
    if msg.value < auctions[arg1].field_1280:
        revert with 0, 'Must send at least reservePrice'
    if auctions[arg1].field_512 and minBidIncrementPercentage > -1 / auctions[arg1].field_512:
        revert with 0, 17
    if auctions[arg1].field_512 > !(auctions[arg1].field_512 * minBidIncrementPercentage / 100):
        revert with 0, 17
    if msg.value < auctions[arg1].field_512 + (auctions[arg1].field_512 * minBidIncrementPercentage / 100):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must send more than last bid by minBidIncrementPercentage amount'
    if not auctions[arg1].field_1024:
        auctions[arg1].field_1024 = block.timestamp
    else:
        if address(auctions[arg1].field_1792):
            call address(auctions[arg1].field_1792) with:
               value auctions[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    auctions[arg1].field_512 = msg.value
    auctions[arg1].field_1792 = msg.sender or Mask(96, 160, auctions[arg1].field_1792)
    if auctions[arg1].field_1024 > !auctions[arg1].field_768:
        revert with 0, 17
    if auctions[arg1].field_1024 + auctions[arg1].field_768 < block.timestamp:
        revert with 0, 17
    if auctions[arg1].field_1024 + auctions[arg1].field_768 - block.timestamp >= timeBuffer:
        emit 0x8ce50868: block.timestamp, msg.sender, msg.value, not address(auctions[arg1].field_1792), 0, arg1
        sub_13f4fd04[arg1].field_0++
        address(sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_0) = msg.sender
        sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_256 = msg.value
        sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_512 = block.timestamp
    else:
        if auctions[arg1].field_1024 > !auctions[arg1].field_768:
            revert with 0, 17
        if auctions[arg1].field_1024 + auctions[arg1].field_768 < block.timestamp:
            revert with 0, 17
        if timeBuffer < auctions[arg1].field_1024 + auctions[arg1].field_768 - block.timestamp:
            revert with 0, 17
        if auctions[arg1].field_768 > !(timeBuffer - auctions[arg1].field_1024 - auctions[arg1].field_768 + block.timestamp):
            revert with 0, 17
        auctions[arg1].field_768 = timeBuffer - auctions[arg1].field_1024 + block.timestamp
        emit 0x8ce50868: block.timestamp, msg.sender, msg.value, not address(auctions[arg1].field_1792), 1, arg1
        sub_13f4fd04[arg1].field_0++
        address(sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_0) = msg.sender
        sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_256 = msg.value
        sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_512 = block.timestamp
        emit 0xe7fbdf61: block.timestamp, auctions[arg1].field_768, arg1
    stor0 = 1
}

function claimRewards() {
    mem[100] = msg.sender
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        mem[0] = mem[_15]
        _17 = sha3(mem[0], 12)
        if totalDividend < lastDividendAt[mem[0]]:
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[mem[0]]):
            revert with 0, 17
        mem[0] = _16
        mem[32] = 12
        lastDividendAt[_16] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - stor[_17]
        continue 
    call msg.sender with:
       value s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d3cc4802(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(auctions[arg1].field_2304):
        revert with 0, 'The token auction isn't listed'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(auctions[arg1].field_256) > 1:
        revert with 0, 33
    if uint8(auctions[arg1].field_256) != 1:
        revert with 0, 'Can't bid to fixed list'
    if auctions[arg1].field_1280 != msg.value:
        revert with 0, 'Must send as reservePrice'
    sub_13f4fd04[arg1].field_0++
    address(sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_0) = msg.sender
    sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_256 = msg.value
    sub_13f4fd04[arg1][sub_13f4fd04[arg1].field_0].field_512 = block.timestamp
    auctions[arg1].field_1792 = msg.sender or Mask(96, 160, auctions[arg1].field_1792)
    auctions[arg1].field_512 = msg.value
    require ext_code.size(sub_c02b9e5eAddress)
    call sub_c02b9e5eAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, auctions[arg1].field_0
    if not ext_call.success:
        call address(auctions[arg1].field_1792) with:
           value auctions[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if msg.value > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if msg.value > -1:
        revert with 0, 17
    if msg.value < 5 * msg.value / 100:
        revert with 0, 17
    if msg.value - (5 * msg.value / 100) < 2 * msg.value / 100:
        revert with 0, 17
    if msg.value - (5 * msg.value / 100) - (2 * msg.value / 100) < msg.value / 100:
        revert with 0, 17
    if reflectionBalance > !(5 * msg.value / 100):
        revert with 0, 17
    reflectionBalance += 5 * msg.value / 100
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    if totalDividend > !(5 * msg.value / 100 / ext_call.return_data[0]):
        revert with 0, 17
    totalDividend += 5 * msg.value / 100 / ext_call.return_data[0]
    call address(auctions[arg1].field_1536) with:
       value msg.value - (5 * msg.value / 100) - (2 * msg.value / 100) - (msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value 2 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor13 with:
       value msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if totalVolume > !msg.value:
        revert with 0, 17
    totalVolume += msg.value
    if totalSales > -2:
        revert with 0, 17
    totalSales++
    sub_c0eb714a[arg1].field_0++
    uint8(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_0) = 2
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_256 = msg.value
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_512) = this.address
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_768) = address(auctions[arg1].field_1792)
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_1024 = block.timestamp
    auctions[arg1].field_2048 = auctions[arg1].field_512
    auctions[arg1].field_512 = 0
    uint8(auctions[arg1].field_2304) = 0
    emit 0x38db19f0: block.timestamp, address(auctions[arg1].field_1536), address(auctions[arg1].field_1792), msg.value, arg1
    stor0 = 1
}

function endAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(auctions[arg1].field_2304):
        revert with 0, 'The token auction isn't listed'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(auctions[arg1].field_256) > 1:
        revert with 0, 33
    if uint8(auctions[arg1].field_256):
        revert with 0, 'Can't bid to auction list'
    if not auctions[arg1].field_1024:
        revert with 0, 'Auction hasn't begun'
    if auctions[arg1].field_1024 > !auctions[arg1].field_768:
        revert with 0, 17
    if block.timestamp < auctions[arg1].field_1024 + auctions[arg1].field_768:
        revert with 0, 'Auction hasn't completed'
    require ext_code.size(sub_c02b9e5eAddress)
    call sub_c02b9e5eAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(auctions[arg1].field_1792), auctions[arg1].field_0
    if not ext_call.success:
        call address(auctions[arg1].field_1792) with:
           value auctions[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        revert with ext_call.return_data[0 len return_data.size]
    if auctions[arg1].field_512 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if auctions[arg1].field_512 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if auctions[arg1].field_512 > -1:
        revert with 0, 17
    if auctions[arg1].field_512 < 5 * auctions[arg1].field_512 / 100:
        revert with 0, 17
    if auctions[arg1].field_512 - (5 * auctions[arg1].field_512 / 100) < 2 * auctions[arg1].field_512 / 100:
        revert with 0, 17
    if auctions[arg1].field_512 - (5 * auctions[arg1].field_512 / 100) - (2 * auctions[arg1].field_512 / 100) < auctions[arg1].field_512 / 100:
        revert with 0, 17
    if reflectionBalance > !(5 * auctions[arg1].field_512 / 100):
        revert with 0, 17
    reflectionBalance += 5 * auctions[arg1].field_512 / 100
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    if totalDividend > !(5 * auctions[arg1].field_512 / 100 / ext_call.return_data[0]):
        revert with 0, 17
    totalDividend += 5 * auctions[arg1].field_512 / 100 / ext_call.return_data[0]
    call address(auctions[arg1].field_1536) with:
       value auctions[arg1].field_512 - (5 * auctions[arg1].field_512 / 100) - (2 * auctions[arg1].field_512 / 100) - (auctions[arg1].field_512 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value 2 * auctions[arg1].field_512 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor13 with:
       value auctions[arg1].field_512 / 100 wei
         gas 2300 * is_zero(value) wei
    if totalVolume > !auctions[arg1].field_512:
        revert with 0, 17
    totalVolume += auctions[arg1].field_512
    if totalSales > -2:
        revert with 0, 17
    totalSales++
    sub_c0eb714a[arg1].field_0++
    uint8(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_0) = 2
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_256 = auctions[arg1].field_512
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_512) = this.address
    address(sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_768) = address(auctions[arg1].field_1792)
    sub_c0eb714a[arg1][sub_c0eb714a[arg1].field_0].field_1024 = block.timestamp
    auctions[arg1].field_2048 = auctions[arg1].field_512
    auctions[arg1].field_512 = 0
    uint8(auctions[arg1].field_2304) = 0
    emit 0x38db19f0: block.timestamp, address(auctions[arg1].field_1536), address(auctions[arg1].field_1792), auctions[arg1].field_512, arg1
    stor0 = 1
}

function getListedTokens() payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.mem[var24003 len 4] with:
            gas gas_remaining wei
           args mem[var24003 + 4 len var24004 - 4]
    mem[var24005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var28002 - var28001 >= 32
    if var32002 <= var32001:
        mem[0] = var34001
        mem[32] = 7
        if not uint8(auctions[var34001].field_2304):
            if var40001 == -1:
                revert with 0, 17
            if var32001:
                if var48001 == -1:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.mem[var56003 len 4] with:
                        gas gas_remaining wei
                       args mem[var56003 + 4 len var56004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
            else:
                mem[ceil32(return_data.size) + 96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.mem[var48003 len 4] with:
                        gas gas_remaining wei
                       args mem[var48003 + 4 len var48004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var52002 - var52001 >= 32
                if var56002 <= var56001:
                    # nil
                else:
                    if var56003 > test266151307():
                        revert with 0, 65
                    require ext_code.size(sub_c02b9e5eAddress)
                    # nil
        else:
            mem[0] = var36002
            mem[32] = 7
            if not var37001:
                if var37001 == -1:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.mem[var45003 len 4] with:
                        gas gas_remaining wei
                       args mem[var45003 + 4 len var45004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var49002 - var49001 >= 32
                if var53002 <= var53001:
                    # nil
                else:
                    if var37003 > test266151307():
                        revert with 0, 65
                    # nil
            else:
                if var37003 == -1:
                    revert with 0, 17
                if var41001 == -1:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.mem[var49003 len 4] with:
                        gas gas_remaining wei
                       args mem[var49003 + 4 len var49004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var53002 - var53001 >= 32
                if var57002 <= var57001:
                    # nil
                else:
                    if var37003 + 1 > test266151307():
                        revert with 0, 65
                    # nil
    else:
        if var32003 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = var32003
        mem[64] = ceil32(return_data.size) + (32 * var32003) + 128
        if not var32003:
            mem[ceil32(return_data.size) + (32 * var32003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.mem[var41003 len 4] with:
                    gas gas_remaining wei
                   args mem[var41003 + 4 len var41004 - 4]
            mem[var41005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var45002 - var45001 >= 32
            if var49002 > var49001:
                mem[(2 * ceil32(return_data.size)) + (32 * var32003) + 128] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * var32003) + 160] = var32003
                mem[(2 * ceil32(return_data.size)) + (32 * var32003) + 192 len 32 * var32003] = mem[ceil32(return_data.size) + 128 len 32 * var32003]
                return memory
                  from (2 * ceil32(return_data.size)) + (32 * var32003) + 128
                   len (96 * var32003) + 64
            if not uint8(auctions[var51001].field_2304):
                if not var48001:
                    if var57001 == -1:
                        revert with 0, 17
                    require ext_code.size(sub_c02b9e5eAddress)
                    # nil
                else:
                    if var55002 >= var32003:
                        revert with 0, 50
                    if var57005 == -1:
                        revert with 0, 17
                    if var59001 == -1:
                        revert with 0, 17
                    # nil
            else:
                if not var54001:
                    if var53001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var54003 >= var32003:
                        revert with 0, 50
                    if var54003 == -1:
                        revert with 0, 17
                    if var58001 == -1:
                        revert with 0, 17
                    # nil
        else:
            mem[ceil32(return_data.size) + 128 len 32 * var32003] = call.data[calldata.size len 32 * var32003]
            mem[ceil32(return_data.size) + (32 * var32003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.mem[var42003 len 4] with:
                    gas gas_remaining wei
                   args mem[var42003 + 4 len var42004 - 4]
            mem[var42005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var46002 - var46001 >= 32
            if var50002 > var50001:
                mem[(2 * ceil32(return_data.size)) + (32 * var32003) + 128] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * var32003) + 160] = var32003
                mem[(2 * ceil32(return_data.size)) + (32 * var32003) + 192 len 32 * var32003] = call.data[calldata.size len 32 * var32003]
                return memory
                  from (2 * ceil32(return_data.size)) + (32 * var32003) + 128
                   len (96 * var32003) + 64
            if not uint8(auctions[var52001].field_2304):
                if not var49001:
                    if var58001 == -1:
                        revert with 0, 17
                    require ext_code.size(sub_c02b9e5eAddress)
                    # nil
                else:
                    if var56002 >= var32003:
                        revert with 0, 50
                    if var58005 == -1:
                        revert with 0, 17
                    if var60001 == -1:
                        revert with 0, 17
                    # nil
            else:
                if not var55001:
                    if var54001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var55003 >= var32003:
                        revert with 0, 50
                    if var55003 == -1:
                        revert with 0, 17
                    if var59001 == -1:
                        revert with 0, 17
                    # nil
}

function sub_a50d9983(?) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.mem[var22003 len 4] with:
            gas gas_remaining wei
           args mem[var22003 + 4 len var22004 - 4]
    mem[var22005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var26002 - var26001 >= 32
    if var30002 > var30001:
        if var30003 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = var30003
        mem[64] = ceil32(return_data.size) + (32 * var30003) + 128
        if not var30003:
            mem[ceil32(return_data.size) + (32 * var30003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.mem[var39003 len 4] with:
                    gas gas_remaining wei
                   args mem[var39003 + 4 len var39004 - 4]
            mem[var39005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var43002 - var43001 >= 32
            if var47002 > var47001:
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 160] = var30003
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 192 len 32 * var30003] = mem[ceil32(return_data.size) + 128 len 32 * var30003]
                return memory
                  from (2 * ceil32(return_data.size)) + (32 * var30003) + 128
                   len (96 * var30003) + 64
            mem[0] = var49001
            mem[32] = 7
            if not uint8(auctions[var49001].field_2304):
                if var49001 == -1:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 132 len ceil32(return_data.size)]
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * var30003) + 128
                require return_data.size >= 32
                if var49001 + 1 <= ext_call.return_data[0]:
                    var49001 = var49001 + 1
                    var49002 = var49002
                    continue 
            else:
                if var49002 >= var30003:
                    revert with 0, 50
                mem[(32 * var49002) + ceil32(return_data.size) + 128] = var49001
                if var49002 == -1:
                    revert with 0, 17
                if var49001 == -1:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 132 len ceil32(return_data.size)]
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * var30003) + 128
                require return_data.size >= 32
                if var49001 + 1 <= ext_call.return_data[0]:
                    var49001 = var49001 + 1
                    var49002 = var49002 + 1
                    continue 
            ('gt', ('add', 1, ('var', 49001)), ('ext_call.return_data', 0, 32))
            mem[(4 * ceil32(return_data.size)) + (32 * var30003) + 128] = 32
            mem[(4 * ceil32(return_data.size)) + (32 * var30003) + 160] = var30003
            mem[(4 * ceil32(return_data.size)) + (32 * var30003) + 192 len 32 * var30003] = mem[ceil32(return_data.size) + 128 len 32 * var30003]
        else:
            mem[ceil32(return_data.size) + 128 len 32 * var30003] = call.data[calldata.size len 32 * var30003]
            mem[ceil32(return_data.size) + (32 * var30003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.mem[var40003 len 4] with:
                    gas gas_remaining wei
                   args mem[var40003 + 4 len var40004 - 4]
            mem[var40005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var44002 - var44001 >= 32
            if var48002 > var48001:
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 160] = var30003
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 192 len 32 * var30003] = call.data[calldata.size len 32 * var30003]
                return memory
                  from (2 * ceil32(return_data.size)) + (32 * var30003) + 128
                   len (96 * var30003) + 64
            mem[0] = var50001
            mem[32] = 7
            if not uint8(auctions[var50001].field_2304):
                if var50001 == -1:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 132 len ceil32(return_data.size)]
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * var30003) + 128
                require return_data.size >= 32
                if var50001 + 1 <= ext_call.return_data[0]:
                    var50001 = var50001 + 1
                    var50002 = var50002
                    continue 
            else:
                if var50002 >= var30003:
                    revert with 0, 50
                mem[(32 * var50002) + ceil32(return_data.size) + 128] = var50001
                if var50002 == -1:
                    revert with 0, 17
                if var50001 == -1:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c02b9e5eAddress)
                staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 132 len ceil32(return_data.size)]
                mem[(2 * ceil32(return_data.size)) + (32 * var30003) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * var30003) + 128
                require return_data.size >= 32
                if var50001 + 1 <= ext_call.return_data[0]:
                    var50001 = var50001 + 1
                    var50002 = var50002 + 1
                    continue 
            ('gt', ('add', 1, ('var', 50001)), ('ext_call.return_data', 0, 32))
            mem[(4 * ceil32(return_data.size)) + (32 * var30003) + 128] = 32
            mem[(4 * ceil32(return_data.size)) + (32 * var30003) + 160] = var30003
            mem[(4 * ceil32(return_data.size)) + (32 * var30003) + 192 len 32 * var30003] = call.data[calldata.size len 32 * var30003]
        return memory
          from (4 * ceil32(return_data.size)) + (32 * var30003) + 128
           len (96 * var30003) + 64
    mem[0] = var32001
    mem[32] = 7
    if not uint8(auctions[var32001].field_2304):
        if var32001 == -1:
            revert with 0, 17
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if var32001 + 1 <= ext_call.return_data[0]:
            var32001 = var32001 + 1
            var32002 = var32002
            continue 
        if var32002 > test266151307():
            revert with 0, 65
        mem[(2 * ceil32(return_data.size)) + 96] = var32002
        mem[64] = (2 * ceil32(return_data.size)) + (32 * var32002) + 128
        if not var32002:
            mem[(2 * ceil32(return_data.size)) + (32 * var32002) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.mem[var51003 len 4] with:
                    gas gas_remaining wei
                   args mem[var51003 + 4 len var51004 - 4]
            mem[var51005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var55002 - var55001 >= 32
            if var59002 <= var59001:
                mem[0] = var61001
                mem[32] = 7
                if not uint8(auctions[var61001].field_2304):
                    if var61001 == -1:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_c02b9e5eAddress)
                    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 132 len 5 * ceil32(return_data.size)]
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002) + 128
                    require return_data.size >= 32
                    if var61001 + 1 <= ext_call.return_data[0]:
                        var61001 = var61001 + 1
                        var61002 = var61002
                        continue 
                else:
                    if var61002 >= var32002:
                        revert with 0, 50
                    mem[(32 * var61002) + (2 * ceil32(return_data.size)) + 128] = var61001
                    if var61002 == -1:
                        revert with 0, 17
                    if var61001 == -1:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_c02b9e5eAddress)
                    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 132 len 5 * ceil32(return_data.size)]
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002) + 128
                    require return_data.size >= 32
                    if var61001 + 1 <= ext_call.return_data[0]:
                        var61001 = var61001 + 1
                        var61002 = var61002 + 1
                        continue 
                ('gt', ('add', 1, ('var', 61001)), ('ext_call.return_data', 0, 32))
            mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = 32
            mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 160] = var32002
            mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 192 len 32 * var32002] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * var32002]
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * var32002] = call.data[calldata.size len 32 * var32002]
            mem[(2 * ceil32(return_data.size)) + (32 * var32002) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.mem[var52003 len 4] with:
                    gas gas_remaining wei
                   args mem[var52003 + 4 len var52004 - 4]
            mem[var52005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var56002 - var56001 >= 32
            if var60002 <= var60001:
                mem[0] = var62001
                mem[32] = 7
                if not uint8(auctions[var62001].field_2304):
                    if var62001 == -1:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_c02b9e5eAddress)
                    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 132 len 5 * ceil32(return_data.size)]
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002) + 128
                    require return_data.size >= 32
                    if var62001 + 1 <= ext_call.return_data[0]:
                        var62001 = var62001 + 1
                        var62002 = var62002
                        continue 
                else:
                    if var62002 >= var32002:
                        revert with 0, 50
                    mem[(32 * var62002) + (2 * ceil32(return_data.size)) + 128] = var62001
                    if var62002 == -1:
                        revert with 0, 17
                    if var62001 == -1:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_c02b9e5eAddress)
                    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 132 len 5 * ceil32(return_data.size)]
                    mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002) + 128
                    require return_data.size >= 32
                    if var62001 + 1 <= ext_call.return_data[0]:
                        var62001 = var62001 + 1
                        var62002 = var62002 + 1
                        continue 
                ('gt', ('add', 1, ('var', 62001)), ('ext_call.return_data', 0, 32))
            mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 128] = 32
            mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 160] = var32002
            mem[(4 * ceil32(return_data.size)) + (32 * var32002) + 192 len 32 * var32002] = call.data[calldata.size len 32 * var32002]
        return memory
          from (4 * ceil32(return_data.size)) + (32 * var32002) + 128
           len (96 * var32002) + 64
    if var32002 == -1:
        revert with 0, 17
    if var32001 == -1:
        revert with 0, 17
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if var32001 + 1 <= ext_call.return_data[0]:
        var32001 = var32001 + 1
        var32002 = var32002 + 1
        continue 
    if var32002 + 1 > test266151307():
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 96] = var32002 + 1
    mem[64] = (2 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128
    if var32002 + 1:
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * var32002 + 1] = call.data[calldata.size len 32 * var32002 + 1]
        mem[(2 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.mem[var56003 len 4] with:
                gas gas_remaining wei
               args mem[var56003 + 4 len var56004 - 4]
        mem[var56005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var60002 - var60001 >= 32
        if var64002 > var64001:
            return Array(len=var32002 + 1, data=call.data[calldata.size len 32 * var32002 + 1], mem[(4 * ceil32(return_data.size)) + (64 * var32002 + 1) + 192 len (96 * var32002) + -(32 * var32002 + 1) + 96]), 
        mem[0] = var66001
        mem[32] = 7
        if not uint8(auctions[var66001].field_2304):
            if var66001 == -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 132 len 5 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128
            require return_data.size >= 32
            if var66001 + 1 > ext_call.return_data[0]:
                return Array(len=var32002 + 1, data=call.data[calldata.size len 32 * var32002 + 1], mem[(4 * ceil32(return_data.size)) + (64 * var32002 + 1) + 192 len (96 * var32002) + -(32 * var32002 + 1) + 96]), 
            var66001 = var66001 + 1
            var66002 = var66002
            continue 
        if var66002 >= var32002 + 1:
            revert with 0, 50
        mem[(32 * var66002) + (2 * ceil32(return_data.size)) + 128] = var66001
        if var66002 == -1:
            revert with 0, 17
        if var66001 == -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 132 len 5 * ceil32(return_data.size)]
        mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128
        require return_data.size >= 32
        if var66001 + 1 > ext_call.return_data[0]:
            return Array(len=var32002 + 1, data=call.data[calldata.size len 32 * var32002 + 1], mem[(4 * ceil32(return_data.size)) + (64 * var32002 + 1) + 192 len (96 * var32002) + -(32 * var32002 + 1) + 96]), 
        var66001 = var66001 + 1
        var66002 = var66002 + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_c02b9e5eAddress)
    staticcall sub_c02b9e5eAddress.mem[var55003 len 4] with:
            gas gas_remaining wei
           args mem[var55003 + 4 len var55004 - 4]
    mem[var55005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var59002 - var59001 >= 32
    if var63002 <= var63001:
        mem[0] = var65001
        mem[32] = 7
        if not uint8(auctions[var65001].field_2304):
            if var65001 == -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 132 len 5 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128
            require return_data.size >= 32
            if var65001 + 1 <= ext_call.return_data[0]:
                var65001 = var65001 + 1
                var65002 = var65002
                continue 
        else:
            if var65002 >= var32002 + 1:
                revert with 0, 50
            mem[(32 * var65002) + (2 * ceil32(return_data.size)) + 128] = var65001
            if var65002 == -1:
                revert with 0, 17
            if var65001 == -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = 0xb5077f4400000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.MAX_NFT_SUPPLY() with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 132 len 5 * ceil32(return_data.size)]
            mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128
            require return_data.size >= 32
            if var65001 + 1 <= ext_call.return_data[0]:
                var65001 = var65001 + 1
                var65002 = var65002 + 1
                continue 
        ('gt', ('add', 1, ('var', 65001)), ('ext_call.return_data', 0, 32))
    mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 128] = 32
    mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 160] = var32002 + 1
    mem[(4 * ceil32(return_data.size)) + (32 * var32002 + 1) + 192 len 32 * var32002 + 1] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * var32002 + 1]
    return Array(len=var32002 + 1, data=mem[(2 * ceil32(return_data.size)) + 128 len 32 * var32002 + 1], mem[(4 * ceil32(return_data.size)) + (64 * var32002 + 1) + 192 len (96 * var32002) + -(32 * var32002 + 1) + 96]), 
}



}
