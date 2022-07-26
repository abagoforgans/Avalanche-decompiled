contract main {




// =====================  Runtime code  =====================


address owner;
uint256 bidIncrement;
uint256 startTime;
uint256 endTime;
address payTokenAddress;
address sub_8a8020b4Address;
uint16 stor6;
uint256 stor6; offset 16
uint256 collectionId;
uint16 collectionSize;
uint16 sub_5acfaff1; offset 16
uint16 sub_15b66b14; offset 32
uint256 minPrice;
uint256 sub_ce79a7c3;
mapping of struct highestBidder;

function sub_15b66b14(?) payable {
    return sub_15b66b14
}

function endTime() payable {
    return endTime
}

function collectionId() payable {
    return collectionId
}

function collectionSize() payable {
    return collectionSize
}

function sub_5acfaff1(?) payable {
    return sub_5acfaff1
}

function startTime() payable {
    return startTime
}

function sub_8a8020b4(?) payable {
    return sub_8a8020b4Address
}

function owner() payable {
    return owner
}

function payToken() payable {
    return payTokenAddress
}

function sub_9eb18e47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return highestBidder[arg1].field_0, 
           highestBidder[arg1].field_256,
           highestBidder[arg1].field_512,
           bool(highestBidder[arg1].field_672),
           highestBidder[arg1].field_768,
           highestBidder[arg1].field_1024
}

function bidIncrement() payable {
    return bidIncrement
}

function getHighestBidder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return highestBidder[arg1].field_0, 
           highestBidder[arg1].field_256,
           highestBidder[arg1].field_512,
           bool(highestBidder[arg1].field_672),
           highestBidder[arg1].field_768,
           highestBidder[arg1].field_1024
}

function sub_ce79a7c3(?) payable {
    return sub_ce79a7c3
}

function minPrice() payable {
    return minPrice
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c8f412ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce79a7c3 = arg1
}

function sub_066779bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8a8020b4Address = address(arg1)
}

function sub_584f6021(?) payable {
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if not sub_ce79a7c3:
        revert with 'NH{q', 18
    if block.timestamp - startTime / sub_ce79a7c3 < collectionSize:
        return (uint16(collectionSize + sub_15b66b14) - (block.timestamp - startTime / sub_ce79a7c3))
    else:
        return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function startAuction() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = block.timestamp
    if collectionSize and sub_ce79a7c3 > -1 / collectionSize:
        revert with 'NH{q', 17
    if block.timestamp > (-1 * collectionSize * sub_ce79a7c3) - 1:
        revert with 'NH{q', 17
    endTime = block.timestamp + (collectionSize * sub_ce79a7c3)
}

function sub_c07eb596(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endTime <= 0:
        revert with 0, 'EndTime not set'
    if block.timestamp <= endTime:
        revert with 0, 'Auction not over'
    if sub_15b66b14 > -collectionSize + 65535:
        revert with 'NH{q', 17
    sub_15b66b14 = uint16(sub_15b66b14 + collectionSize)
    bidIncrement = arg1
    minPrice = arg2
    uint16(stor6.field_0) = uint16(arg3)
    Mask(240, 0, stor6.field_16) = 0
    collectionSize = uint16(arg4)
    sub_5acfaff1 = uint16(arg5)
}

function withdrawTokens() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endTime <= 0:
        revert with 0, 'EndTime not set'
    if block.timestamp <= endTime:
        revert with 0, 'Auction not over'
    staticcall payTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call payTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claimNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 1:
        revert with 0, 'Invalid ID'
    if collectionSize > -sub_15b66b14 + 65535:
        revert with 'NH{q', 17
    if arg1 > uint16(collectionSize + sub_15b66b14):
        revert with 0, 'Invalid ID'
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if not sub_ce79a7c3:
        revert with 'NH{q', 18
    if block.timestamp - startTime / sub_ce79a7c3 < collectionSize:
        if arg1 <= uint16(collectionSize + sub_15b66b14) - (block.timestamp - startTime / sub_ce79a7c3):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Auction not ended for the given ID'
    else:
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Auction not ended for the given ID'
    if highestBidder[arg1].field_512 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Only winner or admin can claim'
    if highestBidder[arg1].field_672:
        revert with 0, 'Already withdrawn'
    if highestBidder[arg1].field_256 <= 0:
        revert with 0, 'None of the Bid has enough wallet balance'
    if not highestBidder[arg1].field_512:
        revert with 0, 'Unable to withdraw'
    if highestBidder[arg1].field_256 <= 0:
        revert with 0, 'Unable to withdraw'
    require ext_code.size(sub_8a8020b4Address)
    staticcall sub_8a8020b4Address.0x50dfe98a with:
            gas gas_remaining wei
           args highestBidder[arg1].field_768, highestBidder[arg1].field_1024, highestBidder[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    highestBidder[arg1].field_512 = highestBidder[arg1].field_512
    highestBidder[arg1].field_672 = 1
    emit 0xcbfc3a91: highestBidder[arg1].field_512, highestBidder[arg1].field_256, arg1, highestBidder[arg1].field_768, highestBidder[arg1].field_1024
    return 1
}

function placeBid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if startTime <= 0:
        revert with 0, 'Auction hasnt started'
    if block.timestamp <= startTime:
        revert with 0, 'Auction not started yet!'
    if endTime <= 0:
        revert with 0, 'Endtime not set'
    if block.timestamp >= endTime:
        revert with 0, 'Auction ended!'
    if arg1 < 1:
        revert with 0, 'Invalid ID'
    if collectionSize > -sub_15b66b14 + 65535:
        revert with 'NH{q', 17
    if arg1 > uint16(collectionSize + sub_15b66b14):
        revert with 0, 'Invalid ID'
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if not sub_ce79a7c3:
        revert with 'NH{q', 18
    if block.timestamp - startTime / sub_ce79a7c3 < collectionSize:
        if arg1 != uint16(collectionSize + sub_15b66b14) - (block.timestamp - startTime / sub_ce79a7c3):
            revert with 0, 'Not an active ID'
    else:
        if arg1:
            revert with 0, 'Not an active ID'
    staticcall payTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Insufficient balance to place bid'
    if arg2 < minPrice:
        revert with 0, 'Amount is lower than base price'
    if not bidIncrement:
        revert with 'NH{q', 18
    if arg2 - minPrice % bidIncrement:
        revert with 0, 'Increment should be a multiple of bidIncrement'
    if highestBidder[arg1].field_256 > 0:
        if highestBidder[arg1].field_256 > -bidIncrement - 1:
            revert with 'NH{q', 17
        if arg2 < highestBidder[arg1].field_256 + bidIncrement:
            revert with 0, 'New Bid must be increased by the bid increment'
    call payTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if highestBidder[arg1].field_256 > 0:
        call payTokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args highestBidder[arg1].field_512, highestBidder[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 < sub_15b66b14:
        revert with 'NH{q', 17
    if arg1 - sub_15b66b14 > -sub_5acfaff1 - 1:
        revert with 'NH{q', 17
    highestBidder[arg1].field_0 = arg1
    highestBidder[arg1].field_256 = arg2
    highestBidder[arg1].field_512 = msg.sender
    highestBidder[arg1].field_672 = Mask(96, 0, bool(highestBidder[arg1].field_672))
    highestBidder[arg1].field_768 = collectionId
    highestBidder[arg1].field_1024 = arg1 - sub_15b66b14 + sub_5acfaff1
    emit 0x2ee277b5: msg.sender << 192, arg2, arg1, collectionId, arg1 - sub_15b66b14 + sub_5acfaff1
    return 1
}

function sub_f97e3fd1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if endTime <= 0:
        revert with 0, 'EndTime not set'
    if block.timestamp <= endTime:
        revert with 0, 'Auction not over'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > collectionSize:
        revert with 0, 'Offset must be greater than 0'
    if arg2 < 1:
        revert with 0, 'Offset must be greater than 0'
    if arg2 >= collectionSize:
        revert with 0, 'Offset must be greater than 0'
    idx = arg2
    while idx <= arg1:
        mem[0] = idx
        mem[32] = 10
        _147 = mem[64]
        mem[64] = mem[64] + 192
        mem[_147] = highestBidder[idx].field_0
        mem[_147 + 32] = highestBidder[idx].field_256
        mem[_147 + 64] = highestBidder[idx].field_512
        mem[_147 + 96] = bool(highestBidder[idx].field_672)
        mem[_147 + 128] = highestBidder[idx].field_768
        mem[_147 + 160] = highestBidder[idx].field_1024
        if not highestBidder[idx].field_672:
            if idx > -sub_15b66b14 - 1:
                revert with 'NH{q', 17
            if idx + sub_15b66b14 < 1:
                revert with 0, 'Invalid ID'
            if collectionSize > -sub_15b66b14 + 65535:
                revert with 'NH{q', 17
            if idx + sub_15b66b14 > uint16(collectionSize + sub_15b66b14):
                revert with 0, 'Invalid ID'
            if block.timestamp < startTime:
                revert with 'NH{q', 17
            if not sub_ce79a7c3:
                revert with 'NH{q', 18
            if block.timestamp - startTime / sub_ce79a7c3 < collectionSize:
                if idx + sub_15b66b14 <= uint16(collectionSize + sub_15b66b14) - (block.timestamp - startTime / sub_ce79a7c3):
                    revert with 0, 'Auction not ended for the given ID'
                if msg.sender == highestBidder[idx + stor7].field_512:
                    if highestBidder[idx + stor7].field_672:
                        revert with 0, 'Already withdrawn'
                    mem[0] = idx + sub_15b66b14
                    mem[32] = 10
                    _160 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_160] = highestBidder[idx + stor7].field_0
                    mem[_160 + 32] = highestBidder[idx + stor7].field_256
                    mem[_160 + 64] = highestBidder[idx + stor7].field_512
                    mem[_160 + 128] = highestBidder[idx + stor7].field_768
                    mem[_160 + 160] = highestBidder[idx + stor7].field_1024
                    if highestBidder[idx + stor7].field_256 <= 0:
                        revert with 0, 'None of the Bid has enough wallet balance'
                    mem[_160 + 96] = 1
                else:
                    if owner != msg.sender:
                        revert with 0, 'Only winner or admin can claim'
                    if highestBidder[idx + stor7].field_672:
                        revert with 0, 'Already withdrawn'
                    mem[0] = idx + sub_15b66b14
                    mem[32] = 10
                    _190 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_190] = highestBidder[idx + stor7].field_0
                    mem[_190 + 32] = highestBidder[idx + stor7].field_256
                    mem[_190 + 64] = highestBidder[idx + stor7].field_512
                    mem[_190 + 128] = highestBidder[idx + stor7].field_768
                    mem[_190 + 160] = highestBidder[idx + stor7].field_1024
                    if highestBidder[idx + stor7].field_256 <= 0:
                        revert with 0, 'None of the Bid has enough wallet balance'
                    mem[_190 + 96] = 1
            else:
                if idx + sub_15b66b14 <= 0:
                    revert with 0, 'Auction not ended for the given ID'
                if msg.sender == highestBidder[idx + stor7].field_512:
                    if highestBidder[idx + stor7].field_672:
                        revert with 0, 'Already withdrawn'
                    mem[0] = idx + sub_15b66b14
                    mem[32] = 10
                    _164 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_164] = highestBidder[idx + stor7].field_0
                    mem[_164 + 32] = highestBidder[idx + stor7].field_256
                    mem[_164 + 64] = highestBidder[idx + stor7].field_512
                    mem[_164 + 128] = highestBidder[idx + stor7].field_768
                    mem[_164 + 160] = highestBidder[idx + stor7].field_1024
                    if highestBidder[idx + stor7].field_256 <= 0:
                        revert with 0, 'None of the Bid has enough wallet balance'
                    mem[_164 + 96] = 1
                else:
                    if owner != msg.sender:
                        revert with 0, 'Only winner or admin can claim'
                    if highestBidder[idx + stor7].field_672:
                        revert with 0, 'Already withdrawn'
                    mem[0] = idx + sub_15b66b14
                    mem[32] = 10
                    _194 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_194] = highestBidder[idx + stor7].field_0
                    mem[_194 + 32] = highestBidder[idx + stor7].field_256
                    mem[_194 + 64] = highestBidder[idx + stor7].field_512
                    mem[_194 + 128] = highestBidder[idx + stor7].field_768
                    mem[_194 + 160] = highestBidder[idx + stor7].field_1024
                    if highestBidder[idx + stor7].field_256 <= 0:
                        revert with 0, 'None of the Bid has enough wallet balance'
                    mem[_194 + 96] = 1
            if not highestBidder[idx + stor7].field_512:
                revert with 0, 'Unable to withdraw'
            if highestBidder[idx + stor7].field_256 <= 0:
                revert with 0, 'Unable to withdraw'
            mem[mem[64] + 36] = highestBidder[idx + stor7].field_1024
            mem[mem[64] + 68] = highestBidder[idx + stor7].field_512
            require ext_code.size(sub_8a8020b4Address)
            staticcall sub_8a8020b4Address.0x50dfe98a with:
                    gas gas_remaining wei
                   args highestBidder[idx + stor7].field_768, highestBidder[idx + stor7].field_1024, highestBidder[idx + stor7].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = idx + sub_15b66b14
            mem[32] = 10
            highestBidder[idx + stor7].field_512 = highestBidder[idx + stor7].field_512
            highestBidder[idx + stor7].field_672 = 1
            mem[mem[64]] = highestBidder[idx + stor7].field_512
            mem[mem[64] + 32] = highestBidder[idx + stor7].field_256
            emit 0xcbfc3a91: highestBidder[idx + stor7].field_512, highestBidder[idx + stor7].field_256, idx + sub_15b66b14, highestBidder[idx + stor7].field_768, highestBidder[idx + stor7].field_1024
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
