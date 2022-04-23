contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 sub_57143a84;
uint256 sub_da3f5a18;
uint256 sub_59c403b4;
array of uint256 sub_4358d239;

function sub_4358d239(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_4358d239.length
    return sub_4358d239[arg1]
}

function sub_57143a84(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_57143a84.length
    return sub_57143a84[arg1]
}

function sub_59c403b4(?) {
    return sub_59c403b4
}

function owner() {
    return owner
}

function sub_da3f5a18(?) {
    return sub_da3f5a18
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3861dda9(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_4b32129b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    call address(arg1) with:
         gas gas_remaining wei
        args arg2[all]
    if not ext_call.success:
        revert with 0, 'fail'
    return bool(ext_call.success)
}

function sub_ea92578a(?) {
    require calldata.size - 4 >= 224
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == cd[164]
    require cd[196] == cd[196]
    mem[floor32(('cd', 132).length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 132).length) + 101] = cd[36]
    mem[floor32(('cd', 132).length) + 133] = 128
    mem[floor32(('cd', 132).length) + 229] = ('cd', 132).length
    idx = 0
    s = 128
    t = floor32(('cd', 132).length) + 261
    while idx < ('cd', 132).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 132).length) + 165] = this.address
    mem[floor32(('cd', 132).length) + 197] = cd[196]
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[4] wei
         gas gas_remaining wei
        args cd[36], Array(len=('cd', 132).length, data=mem[floor32(('cd', 132).length) + 261 len 32 * ('cd', 132).length]), address(this.address), cd[196]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 132).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 132).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _207 = mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require floor32(('cd', 132).length) + mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 132).length) + return_data.size + 97
    _208 = mem[floor32(('cd', 132).length) + mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[floor32(('cd', 132).length) + mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 132).length) + mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 132).length) + mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 132).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 132).length) + mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 132).length) + mem[floor32(('cd', 132).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    require _207 + (32 * _208) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 132).length) + _207 + 129
    t = floor32(('cd', 132).length) + ceil32(return_data.size) + 129
    while idx < _208:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _208:
        revert with 'NH{q', 50
    if mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 161] <= 0:
        revert with 0, 'buy failed'
    sub_57143a84.length = _208
    mem[0] = 2
    if not _208:
        idx = 0
        while sub_57143a84.length > idx:
            sub_57143a84[idx] = 0
            idx = idx + 1
            continue 
        if 1 >= ('cd', 132).length:
            revert with 'NH{q', 50
        _452 = mem[160]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[100])
        require ext_code.size(address(_452))
        staticcall address(_452).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[100])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _458 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_458] == mem[_458]
        sub_da3f5a18 = mem[_458]
        if mem[_458] >= cd[36]:
            _464 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_464 + 32 len 64] = call.data[calldata.size len 64]
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 0 >= mem[_464]:
                revert with 'NH{q', 50
            mem[_464 + 32] = mem[172 len 20]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 1 >= mem[_464]:
                revert with 'NH{q', 50
            mem[_464 + 64] = mem[140 len 20]
            if 1 >= _208:
                revert with 'NH{q', 50
            _479 = mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 161]
            mem[_464 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[_464 + 100] = _479
            mem[_464 + 132] = cd[164]
            mem[_464 + 164] = 160
            mem[_464 + 260] = mem[_464]
            idx = 0
            s = _464 + 32
            t = _464 + 292
            while idx < mem[_464]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_464 + 196] = this.address
            mem[_464 + 228] = cd[196]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _464 + (32 * mem[_464]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _570 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _572 = mem[_570]
            require mem[_570] <= test266151307()
            require _570 + mem[_570] + 31 < _570 + return_data.size
            _575 = mem[_570 + mem[_570]]
            if mem[_570 + mem[_570]] > test266151307():
                revert with 'NH{q', 65
            if _570 + ceil32(return_data.size) + floor32(mem[_570 + mem[_570]]) + 1 > test266151307() or floor32(mem[_570 + mem[_570]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _570 + ceil32(return_data.size) + floor32(mem[_570 + mem[_570]]) + 1
            mem[_570 + ceil32(return_data.size)] = _575
            require _572 + (32 * _575) + 32 <= return_data.size
            idx = 0
            s = _570 + _572 + 32
            t = _570 + ceil32(return_data.size) + 32
            while idx < _575:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _465 = mem[160]
            mem[mem[64] + 4] = address(cd[100])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_465))
            call address(_465).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[100]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_490] == bool(mem[_490])
            _498 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_498 + 32 len 64] = call.data[calldata.size len 64]
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 0 >= mem[_498]:
                revert with 'NH{q', 50
            mem[_498 + 32] = mem[172 len 20]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 1 >= mem[_498]:
                revert with 'NH{q', 50
            mem[_498 + 64] = mem[140 len 20]
            if 1 >= _208:
                revert with 'NH{q', 50
            _509 = mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 161]
            mem[_498 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[_498 + 100] = _509
            mem[_498 + 132] = cd[164]
            mem[_498 + 164] = 160
            mem[_498 + 260] = mem[_498]
            idx = 0
            s = _498 + 32
            t = _498 + 292
            while idx < mem[_498]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_498 + 196] = this.address
            mem[_498 + 228] = cd[196]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _498 + (32 * mem[_498]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _571 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _573 = mem[_571]
            require mem[_571] <= test266151307()
            require _571 + mem[_571] + 31 < _571 + return_data.size
            _576 = mem[_571 + mem[_571]]
            if mem[_571 + mem[_571]] > test266151307():
                revert with 'NH{q', 65
            if _571 + ceil32(return_data.size) + floor32(mem[_571 + mem[_571]]) + 1 > test266151307() or floor32(mem[_571 + mem[_571]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _571 + ceil32(return_data.size) + floor32(mem[_571 + mem[_571]]) + 1
            mem[_571 + ceil32(return_data.size)] = _576
            require _573 + (32 * _576) + 32 <= return_data.size
            idx = 0
            s = _571 + _573 + 32
            t = _571 + ceil32(return_data.size) + 32
            while idx < _576:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        s = 0
        idx = floor32(('cd', 132).length) + ceil32(return_data.size) + 129
        while floor32(('cd', 132).length) + ceil32(return_data.size) + (32 * _208) + 129 > idx:
            sub_57143a84[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * _208) + 31) >> 5
        while sub_57143a84.length > idx:
            sub_57143a84[idx] = 0
            idx = idx + 1
            continue 
        if 1 >= ('cd', 132).length:
            revert with 'NH{q', 50
        _566 = mem[160]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[100])
        require ext_code.size(address(_566))
        staticcall address(_566).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[100])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _577 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_577] == mem[_577]
        sub_da3f5a18 = mem[_577]
        if mem[_577] >= cd[36]:
            _582 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_582 + 32 len 64] = call.data[calldata.size len 64]
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 0 >= mem[_582]:
                revert with 'NH{q', 50
            mem[_582 + 32] = mem[172 len 20]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 1 >= mem[_582]:
                revert with 'NH{q', 50
            mem[_582 + 64] = mem[140 len 20]
            if 1 >= _208:
                revert with 'NH{q', 50
            _594 = mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 161]
            mem[_582 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[_582 + 100] = _594
            mem[_582 + 132] = cd[164]
            mem[_582 + 164] = 160
            mem[_582 + 260] = mem[_582]
            idx = 0
            s = _582 + 32
            t = _582 + 292
            while idx < mem[_582]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_582 + 196] = this.address
            mem[_582 + 228] = cd[196]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _582 + (32 * mem[_582]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _653 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _657 = mem[_653]
            require mem[_653] <= test266151307()
            require _653 + mem[_653] + 31 < _653 + return_data.size
            _659 = mem[_653 + mem[_653]]
            if mem[_653 + mem[_653]] > test266151307():
                revert with 'NH{q', 65
            if _653 + ceil32(return_data.size) + floor32(mem[_653 + mem[_653]]) + 1 > test266151307() or floor32(mem[_653 + mem[_653]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _653 + ceil32(return_data.size) + floor32(mem[_653 + mem[_653]]) + 1
            mem[_653 + ceil32(return_data.size)] = _659
            require _657 + (32 * _659) + 32 <= return_data.size
            idx = 0
            s = _653 + _657 + 32
            t = _653 + ceil32(return_data.size) + 32
            while idx < _659:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            _583 = mem[160]
            mem[mem[64] + 4] = address(cd[100])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_583))
            call address(_583).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[100]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _601 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_601] == bool(mem[_601])
            _609 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_609 + 32 len 64] = call.data[calldata.size len 64]
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 0 >= mem[_609]:
                revert with 'NH{q', 50
            mem[_609 + 32] = mem[172 len 20]
            if 0 >= ('cd', 132).length:
                revert with 'NH{q', 50
            if 1 >= mem[_609]:
                revert with 'NH{q', 50
            mem[_609 + 64] = mem[140 len 20]
            if 1 >= _208:
                revert with 'NH{q', 50
            _617 = mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 161]
            mem[_609 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[_609 + 100] = _617
            mem[_609 + 132] = cd[164]
            mem[_609 + 164] = 160
            mem[_609 + 260] = mem[_609]
            idx = 0
            s = _609 + 32
            t = _609 + 292
            while idx < mem[_609]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_609 + 196] = this.address
            mem[_609 + 228] = cd[196]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _609 + (32 * mem[_609]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _654 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _658 = mem[_654]
            require mem[_654] <= test266151307()
            require _654 + mem[_654] + 31 < _654 + return_data.size
            _660 = mem[_654 + mem[_654]]
            if mem[_654 + mem[_654]] > test266151307():
                revert with 'NH{q', 65
            if _654 + ceil32(return_data.size) + floor32(mem[_654 + mem[_654]]) + 1 > test266151307() or floor32(mem[_654 + mem[_654]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _654 + ceil32(return_data.size) + floor32(mem[_654 + mem[_654]]) + 1
            mem[_654 + ceil32(return_data.size)] = _660
            require _658 + (32 * _660) + 32 <= return_data.size
            idx = 0
            s = _654 + _658 + 32
            t = _654 + ceil32(return_data.size) + 32
            while idx < _660:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
