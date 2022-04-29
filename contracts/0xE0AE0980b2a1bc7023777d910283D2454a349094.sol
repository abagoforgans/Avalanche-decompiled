contract main {




// =====================  Runtime code  =====================


address owner;
uint256 bonusBalance;
array of struct referrers;
mapping of uint256 sub_99f40e4b;
mapping of uint8 stor4;
mapping of address sponsors;
address stor6;
address stor7;

function sub_820da3d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function owner() payable {
    return owner
}

function sub_99f40e4b(?) payable {
    return sub_99f40e4b[address(msg.sender)]
}

function bonusBalance() payable {
    return bonusBalance
}

function referrers(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < referrers[arg1].field_0
    return referrers[arg1][arg2].field_0, referrers[arg1][arg2].field_256
}

function sponsors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sponsors[arg1]
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

function returnTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xbac3e1a8: arg2
}

function deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor4[address(msg.sender)]:
        stor4[address(msg.sender)] = 1
        referrers[address(arg3)].field_0++
        referrers[address(arg3)][referrers[address(arg3)].field_0].field_0 = msg.sender
        referrers[address(arg3)][referrers[address(arg3)].field_0].field_256 = block.timestamp
    require ext_code.size(stor6)
    call stor6.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd36403d4: msg.sender, address(arg3), arg2
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[196 len 96] = 1774185779, msg.sender, address(arg2), mem[196 len 28]
    mem[264] = 0
    delegate arg1.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    if not return_data.size:
        emit 0xf13666e2: 32, 68, 1774185779, msg.sender, arg2, 0 >> 288, 0
        return bool(delegate.return_code), 64, 68, arg2, Mask(224, 32, bool(delegate.return_code)) >> 32 >> 288, 0
    mem[ceil32(return_data.size) + 261 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
    if ceil32(return_data.size) <= return_data.size:
        emit 0xf13666e2: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        return bool(delegate.return_code), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(return_data.size) + return_data.size + 261] = 0
    emit 0xf13666e2: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(return_data.size) + 261] = return_data.size
    mem[ceil32(return_data.size) + 293 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, bool(delegate.return_code)) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
    if ceil32(return_data.size) > return_data.size:
        mem[ceil32(return_data.size) + return_data.size + 293] = 0
    return bool(delegate.return_code), 
           64,
           mem[ceil32(return_data.size) + 261 len return_data.size],
           0,
           mem[ceil32(return_data.size) + return_data.size + 293 len ceil32(return_data.size) - return_data.size]
}

function getCommission(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    s = 0
    while idx < referrers[address(msg.sender)].field_0:
        mem[32] = 2
        if idx >= referrers[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 2)
        mem[mem[64]] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = referrers[address(msg.sender)][idx].field_0
        require ext_code.size(stor6)
        staticcall stor6.pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1, referrers[address(msg.sender)][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _25 = mem[_24]
        require mem[_24] == mem[_24]
        require mem[_24 + 32] == mem[_24 + 44 len 20]
        _27 = mem[_24 + 64]
        require mem[_24 + 64] <= test266151307()
        require _24 + mem[_24 + 64] + 31 < _24 + return_data.size
        _28 = mem[_24 + mem[_24 + 64]]
        if mem[_24 + mem[_24 + 64]] > test266151307():
            revert with 'NH{q', 65
        if _24 + ceil32(return_data.size) + ceil32(ceil32(mem[_24 + mem[_24 + 64]])) + 1 > test266151307() or ceil32(ceil32(mem[_24 + mem[_24 + 64]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _24 + ceil32(return_data.size) + ceil32(ceil32(mem[_24 + mem[_24 + 64]])) + 1
        mem[_24 + ceil32(return_data.size)] = _28
        require _27 + _28 + 32 <= return_data.size
        t = 0
        while t < _28:
            mem[_24 + ceil32(return_data.size) + t + 32] = mem[_24 + _27 + t + 32]
            mem[0] = msg.sender
            mem[32] = 2
            t = t + 32
            continue 
        if ceil32(_28) > _28:
            mem[_24 + ceil32(return_data.size) + _28 + 32] = 0
        require mem[_24 + 96] == mem[_24 + 96]
        if s > -_25 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 2
        idx = idx + 1
        s = s + _25
        continue 
    return s
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor6)
    call stor6.0x441a3e70 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4[address(msg.sender)]:
        mem[0] = msg.sender
        mem[32] = 5
        mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = msg.sender
        require ext_code.size(stor6)
        staticcall stor6.pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _8 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 == mem[96 len 4], Mask(224, 32, arg1) >> 32
        require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
        _10 = uint32(msg.sender), mem[164 len 28]
        require uint32(msg.sender), mem[164 len 28] <= test266151307()
        require uint32(msg.sender), mem[164 len 28] + 127 < return_data.size + 96
        _11 = mem[uint32(msg.sender), mem[164 len 28] + 96]
        if mem[uint32(msg.sender), mem[164 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + ceil32(ceil32(mem[uint32(msg.sender), mem[164 len 28] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[uint32(msg.sender), mem[164 len 28] + 96])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(msg.sender), mem[164 len 28] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _11
        require _10 + _11 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_11)] = mem[_10 + 128 len ceil32(_11)]
        if ceil32(_11) <= _11:
            require mem[192] == mem[192]
            if _8 and 4 > -1 / _8:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 4 * _8 / 100
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 4 * _8 / 100
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_33] == bool(mem[_33])
        else:
            mem[ceil32(return_data.size) + _11 + 128] = 0
            require mem[192] == mem[192]
            if _8 and 4 > -1 / _8:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 4 * _8 / 100
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 4 * _8 / 100
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _34 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_34] == bool(mem[_34])
        if sub_99f40e4b[stor5[address(msg.sender)]] > -(4 * _8 / 100) - 1:
            revert with 'NH{q', 17
        sub_99f40e4b[stor5[address(msg.sender)]] += 4 * _8 / 100
}



}
