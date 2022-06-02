contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of address sub_3d4b8eba;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 sub_b029d6e8;
uint256 sub_947646e0;
uint256 sub_c6357133;

function sub_031534fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[address(arg1)])
}

function sub_3d4b8eba(?) {
    return sub_3d4b8eba[address(msg.sender)]
}

function owner() {
    return owner
}

function sub_947646e0(?) {
    return sub_947646e0
}

function sub_b029d6e8(?) {
    return sub_b029d6e8
}

function sub_c6357133(?) {
    return sub_c6357133
}

function _fallback() payable {
    revert
}

function sub_99d1f337(?) {
    sub_3d4b8eba[address(msg.sender)] = 0
}

function sub_eb09d8ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_3d4b8eba[address(msg.sender)] = address(arg1)
}

function withdraw() payable {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_53c808ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_947646e0 = arg1
}

function sub_c014930f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_947646e0 = arg1
}

function setWithdrawer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function setSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b029d6e8 = arg1
}

function sub_ba8a60d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function removeFeeFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
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

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_99744d86(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function returnTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Unauthorised'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cb08056a(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 > test266151307() or floor32(('cd', 132).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    require cd[228] == uint8(cd[228])
    mem[0] = address(cd[4])
    mem[32] = 2
    if sub_3d4b8eba[address(cd[4])] != msg.sender:
        revert with 0, 'Unauthorised'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ('cd', 196).length + 99] = 4
    if stor4[call.data[cd[196] + 36 len ('cd', 196).length]]:
        revert with 0, 'Duplicate transaction'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _192 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_192))
    call address(_192).0x23b872dd with:
         gas gas_remaining wei
        args address(cd[4]), address(this.address), cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint8(cd[228]) == 1:
        if cd[100] and sub_b029d6e8 > -1 / cd[100]:
            revert with 'NH{q', 17
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = stor1
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 167] = cd[100] * sub_b029d6e8 / 10000
        require ext_code.size(address(_192))
        call address(_192).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor1, cd[100] * sub_b029d6e8 / 10000
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if cd[100] < cd[100] * sub_b029d6e8 / 10000:
            revert with 'NH{q', 17
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _216 = mem[160]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
        require ext_code.size(address(_216))
        staticcall address(_216).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while uint8(idx) < ('cd', 132).length:
            if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                revert with 'NH{q', 50
            _405 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _414 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
            if block.timestamp > -121:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _414
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 196
            while s < mem[96]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 120
            require ext_code.size(address(_405))
            call address(_405).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _414, 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _542 = mem[_538]
            require mem[_538] <= test266151307()
            require _538 + mem[_538] + 31 < _538 + return_data.size
            _546 = mem[_538 + mem[_538]]
            if mem[_538 + mem[_538]] > test266151307():
                revert with 'NH{q', 65
            if _538 + ceil32(return_data.size) + floor32(mem[_538 + mem[_538]]) + 1 > test266151307() or floor32(mem[_538 + mem[_538]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _538 + ceil32(return_data.size) + floor32(mem[_538 + mem[_538]]) + 1
            mem[_538 + ceil32(return_data.size)] = _546
            require _542 + (32 * _546) + 32 <= return_data.size
            s = 0
            t = _538 + _542 + 32
            u = _538 + ceil32(return_data.size) + 32
            while s < _546:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _404 = mem[160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_404))
        staticcall address(_404).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _426 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _430 = mem[_426]
        require mem[_426] == mem[_426]
        if mem[_426] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _446 = mem[160]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = _430 - ext_call.return_data[0]
        require ext_code.size(address(_446))
        call address(_446).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(cd[4]), _430 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _474 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_474] == bool(mem[_474])
        if _430 - ext_call.return_data[0] < cd[164]:
            revert with 0, 'Failed'
    else:
        if uint8(cd[228]) == 2:
            if cd[100] and sub_947646e0 > -1 / cd[100]:
                revert with 'NH{q', 17
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = stor1
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 167] = cd[100] * sub_947646e0 / 10000
            require ext_code.size(address(_192))
            call address(_192).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor1, cd[100] * sub_947646e0 / 10000
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if cd[100] < cd[100] * sub_947646e0 / 10000:
                revert with 'NH{q', 17
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _219 = mem[160]
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
            require ext_code.size(address(_219))
            staticcall address(_219).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            while uint8(idx) < ('cd', 132).length:
                if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _402 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                _412 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _412
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 120
                require ext_code.size(address(_402))
                call address(_402).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _412, 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _537 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _541 = mem[_537]
                require mem[_537] <= test266151307()
                require _537 + mem[_537] + 31 < _537 + return_data.size
                _545 = mem[_537 + mem[_537]]
                if mem[_537 + mem[_537]] > test266151307():
                    revert with 'NH{q', 65
                if _537 + ceil32(return_data.size) + floor32(mem[_537 + mem[_537]]) + 1 > test266151307() or floor32(mem[_537 + mem[_537]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _537 + ceil32(return_data.size) + floor32(mem[_537 + mem[_537]]) + 1
                mem[_537 + ceil32(return_data.size)] = _545
                require _541 + (32 * _545) + 32 <= return_data.size
                s = 0
                t = _537 + _541 + 32
                u = _537 + ceil32(return_data.size) + 32
                while s < _545:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if uint8(_545) == 255:
                    revert with 'NH{q', 17
                s = uint8(_545) + 1
                continue 
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _401 = mem[160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_401))
            staticcall address(_401).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _429 = mem[_425]
            require mem[_425] == mem[_425]
            if mem[_425] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _445 = mem[160]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[4])
            mem[mem[64] + 68] = _429 - ext_call.return_data[0]
            require ext_code.size(address(_445))
            call address(_445).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(cd[4]), _429 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _473 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_473] == bool(mem[_473])
            if _429 - ext_call.return_data[0] < cd[164]:
                revert with 0, 'Failed'
        else:
            if uint8(cd[228]) != 3:
                if cd[100] and sub_947646e0 > -1 / cd[100]:
                    revert with 'NH{q', 17
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = stor1
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 167] = cd[100] * sub_947646e0 / 10000
                require ext_code.size(address(_192))
                call address(_192).0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor1, cd[100] * sub_947646e0 / 10000
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[100] < cd[100] * sub_947646e0 / 10000:
                    revert with 'NH{q', 17
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _221 = mem[160]
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                require ext_code.size(address(_221))
                staticcall address(_221).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                while uint8(idx) < ('cd', 132).length:
                    if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                        revert with 'NH{q', 50
                    _396 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                    if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _408 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                    if block.timestamp > -121:
                        revert with 'NH{q', 17
                    _416 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _408
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _431 = mem[96]
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 196
                    while s < _431:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_416 + 100] = this.address
                    mem[_416 + 132] = block.timestamp + 120
                    require ext_code.size(address(_396))
                    call address(_396).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _416 + (32 * _431) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _535 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _539 = mem[_535]
                    require mem[_535] <= test266151307()
                    require _535 + mem[_535] + 31 < _535 + return_data.size
                    _543 = mem[_535 + mem[_535]]
                    if mem[_535 + mem[_535]] > test266151307():
                        revert with 'NH{q', 65
                    if _535 + ceil32(return_data.size) + floor32(mem[_535 + mem[_535]]) + 1 > test266151307() or floor32(mem[_535 + mem[_535]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _535 + ceil32(return_data.size) + floor32(mem[_535 + mem[_535]]) + 1
                    mem[_535 + ceil32(return_data.size)] = _543
                    require _539 + (32 * _543) + 32 <= return_data.size
                    s = 0
                    t = _535 + _539 + 32
                    u = _535 + ceil32(return_data.size) + 32
                    while s < _543:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if uint8(_543) == 255:
                        revert with 'NH{q', 17
                    s = uint8(_543) + 1
                    continue 
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _395 = mem[160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_395))
                staticcall address(_395).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _427 = mem[_423]
                require mem[_423] == mem[_423]
                if mem[_423] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _443 = mem[160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = _427 - ext_call.return_data[0]
                require ext_code.size(address(_443))
                call address(_443).0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(cd[4]), _427 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_471] == bool(mem[_471])
                if _427 - ext_call.return_data[0] < cd[164]:
                    revert with 0, 'Failed'
            else:
                if cd[100] and sub_c6357133 > -1 / cd[100]:
                    revert with 'NH{q', 17
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = stor1
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 167] = cd[100] * sub_c6357133 / 10000
                require ext_code.size(address(_192))
                call address(_192).0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor1, cd[100] * sub_c6357133 / 10000
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if cd[100] < cd[100] * sub_c6357133 / 10000:
                    revert with 'NH{q', 17
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _222 = mem[160]
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                require ext_code.size(address(_222))
                staticcall address(_222).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                while uint8(idx) < ('cd', 132).length:
                    if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                        revert with 'NH{q', 50
                    _399 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                    if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _410 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                    if block.timestamp > -121:
                        revert with 'NH{q', 17
                    _418 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _410
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _432 = mem[96]
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 196
                    while s < _432:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_418 + 100] = this.address
                    mem[_418 + 132] = block.timestamp + 120
                    require ext_code.size(address(_399))
                    call address(_399).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _418 + (32 * _432) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _536 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _540 = mem[_536]
                    require mem[_536] <= test266151307()
                    require _536 + mem[_536] + 31 < _536 + return_data.size
                    _544 = mem[_536 + mem[_536]]
                    if mem[_536 + mem[_536]] > test266151307():
                        revert with 'NH{q', 65
                    if _536 + ceil32(return_data.size) + floor32(mem[_536 + mem[_536]]) + 1 > test266151307() or floor32(mem[_536 + mem[_536]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _536 + ceil32(return_data.size) + floor32(mem[_536 + mem[_536]]) + 1
                    mem[_536 + ceil32(return_data.size)] = _544
                    require _540 + (32 * _544) + 32 <= return_data.size
                    s = 0
                    t = _536 + _540 + 32
                    u = _536 + ceil32(return_data.size) + 32
                    while s < _544:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if uint8(_544) == 255:
                        revert with 'NH{q', 17
                    s = uint8(_544) + 1
                    continue 
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _398 = mem[160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_398))
                staticcall address(_398).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _428 = mem[_424]
                require mem[_424] == mem[_424]
                if mem[_424] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _444 = mem[160]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = _428 - ext_call.return_data[0]
                require ext_code.size(address(_444))
                call address(_444).0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(cd[4]), _428 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_472] == bool(mem[_472])
                if _428 - ext_call.return_data[0] < cd[164]:
                    revert with 0, 'Failed'
    stor4[call.data[cd[196] + 36 len ('cd', 196).length]] = 1
}



}
