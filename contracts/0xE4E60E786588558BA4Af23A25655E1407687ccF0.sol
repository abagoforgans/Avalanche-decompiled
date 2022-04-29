contract main {




// =====================  Runtime code  =====================


address owner;
uint256 bonusBalance;
array of struct referrers;
mapping of uint256 stor3;
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

function sub_a5d4ed82(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
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

function sub_90c5ce37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor4[address(msg.sender)]:
        stor4[address(msg.sender)] = 1
        referrers[address(arg1)].field_0++
        referrers[address(arg1)][referrers[address(arg1)].field_0].field_0 = msg.sender
        referrers[address(arg1)][referrers[address(arg1)].field_0].field_256 = block.timestamp
    emit 0xc846062a: msg.sender, address(arg1)
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

function sub_35d64a7c(?) payable {
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
        if stor3[stor5[address(msg.sender)]] > -(4 * _8 / 100) - 1:
            revert with 'NH{q', 17
        stor3[stor5[address(msg.sender)]] += 4 * _8 / 100
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[132] = arg1
    mem[164] = msg.sender
    mem[96] = 68
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = pendingTokens(uint256 arg1, address arg2)
    mem[196 len 96] = pendingTokens(uint256 arg1, address arg2), arg1, msg.sender, mem[196 len 28]
    mem[264] = 0
    delegate stor6.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    if not return_data.size:
        if not delegate.return_code:
            revert with 0, 'failed deposit'
        if stor4[address(msg.sender)]:
            mem[0] = msg.sender
            mem[32] = 5
            mem[196] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[200] = arg1
            mem[232] = msg.sender
            require ext_code.size(stor6)
            staticcall stor6.pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 196
            require return_data.size >= 128
            _146 = mem[196 len 4], Mask(224, 32, arg1) >> 32
            require mem[196 len 4], Mask(224, 32, arg1) >> 32 == mem[196 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
            require uint32(msg.sender), 0 <= test266151307()
            require uint32(msg.sender), 0 + 227 < return_data.size + 196
            _158 = mem[uint32(msg.sender), 0 + 196]
            if mem[uint32(msg.sender), 0 + 196] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + ceil32(ceil32(mem[uint32(msg.sender), 0 + 196])) + 197 > test266151307() or ceil32(ceil32(mem[uint32(msg.sender), 0 + 196])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(msg.sender), 0 + 196])) + 197
            mem[ceil32(return_data.size) + 196] = mem[uint32(msg.sender), 0 + 196]
            require uint32(msg.sender), 0 + _158 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 228 len ceil32(_158)] = mem[uint32(msg.sender), 0 + 228 len ceil32(_158)]
            if ceil32(_158) <= _158:
                require 0, mem[296 len 28] == 0, mem[296 len 28]
                if _146 and 4 > -1 / _146:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 4 * _146 / 100
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 4 * _146 / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_246] == bool(mem[_246])
            else:
                mem[ceil32(return_data.size) + _158 + 228] = 0
                require 0, mem[296 len 28] == 0, mem[296 len 28]
                if _146 and 4 > -1 / _146:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 4 * _146 / 100
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 4 * _146 / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_250] == bool(mem[_250])
            if stor3[stor5[address(msg.sender)]] > -(4 * _146 / 100) - 1:
                revert with 'NH{q', 17
            stor3[stor5[address(msg.sender)]] += 4 * _146 / 100
    else:
        mem[196] = return_data.size
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            revert with 0, 'failed deposit'
        if stor4[address(msg.sender)]:
            mem[0] = msg.sender
            mem[32] = 5
            mem[ceil32(return_data.size) + 197] = 0xffcd426300000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 201] = arg1
            mem[ceil32(return_data.size) + 233] = msg.sender
            require ext_code.size(stor6)
            staticcall stor6.pendingTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 197
            require return_data.size >= 128
            _147 = mem[ceil32(return_data.size) + 197 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 197 len 4], Mask(224, 32, arg1) >> 32 == mem[ceil32(return_data.size) + 197 len 4], Mask(224, 32, arg1) >> 32
            require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == Mask(160, 32, msg.sender) >> 32
            _155 = uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28]
            require uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] <= test266151307()
            require ceil32(return_data.size) + uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] + 228 < ceil32(return_data.size) + return_data.size + 197
            _159 = mem[ceil32(return_data.size) + uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] + 197]
            if mem[ceil32(return_data.size) + uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] + 197] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] + 197])) + 198 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] + 197])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] + 197])) + 198
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[ceil32(return_data.size) + uint32(msg.sender), mem[ceil32(return_data.size) + 265 len 28] + 197]
            require _155 + _159 + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 229 len ceil32(_159)] = mem[ceil32(return_data.size) + _155 + 229 len ceil32(_159)]
            if ceil32(_159) <= _159:
                require mem[ceil32(return_data.size) + 293] == mem[ceil32(return_data.size) + 293]
                if _147 and 4 > -1 / _147:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 4 * _147 / 100
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 4 * _147 / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_247] == bool(mem[_247])
            else:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + _159 + 229] = 0
                require mem[ceil32(return_data.size) + 293] == mem[ceil32(return_data.size) + 293]
                if _147 and 4 > -1 / _147:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 4 * _147 / 100
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 4 * _147 / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _251 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_251] == bool(mem[_251])
            if stor3[stor5[address(msg.sender)]] > -(4 * _147 / 100) - 1:
                revert with 'NH{q', 17
            stor3[stor5[address(msg.sender)]] += 4 * _147 / 100
}



}
