contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
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

function paused() {
    return bool(stor0)
}

function sub_5f009ce4(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor4[arg1[all]])
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_3d4b8eba[address(cd[4])] != msg.sender:
        revert with 0, 'Unauthorised'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ('cd', 196).length + 99] = 4
    if stor4[call.data[cd[196] + 36 len ('cd', 196).length]]:
        revert with 0, 'Duplicate transaction'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _582 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_582))
    call address(_582).0x23b872dd with:
         gas gas_remaining wei
        args address(cd[4]), address(this.address), cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    mem[0] = mem[140 len 20]
    mem[32] = 3
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if bool(stor3[mem[140 len 20]]) == 1:
        _595 = mem[160]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
        require ext_code.size(address(_595))
        staticcall address(_595).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while uint8(idx) < ('cd', 132).length:
            if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                revert with 'NH{q', 50
            _970 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
            _971 = mem[floor32(('cd', 36).length) + 97]
            if not mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 18
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _990 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 17
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _1075 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _990 - (0 / _971)
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1091 = mem[96]
            mem[mem[64] + 164] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 196
            while s < _1091:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1075 + 100] = this.address
            mem[_1075 + 132] = block.timestamp + 120
            require ext_code.size(address(_970))
            call address(_970).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1075 + (32 * _1091) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1213 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1223 = mem[_1213]
            require mem[_1213] <= test266151307()
            require _1213 + mem[_1213] + 31 < _1213 + return_data.size
            _1224 = mem[_1213 + mem[_1213]]
            if mem[_1213 + mem[_1213]] > test266151307():
                revert with 'NH{q', 65
            if _1213 + ceil32(return_data.size) + floor32(mem[_1213 + mem[_1213]]) + 1 > test266151307() or floor32(mem[_1213 + mem[_1213]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1213 + ceil32(return_data.size) + floor32(mem[_1213 + mem[_1213]]) + 1
            mem[_1213 + ceil32(return_data.size)] = _1224
            require _1223 + (32 * _1224) + 32 <= return_data.size
            s = 0
            t = _1213 + _1223 + 32
            u = _1213 + ceil32(return_data.size) + 32
            while s < _1224:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if uint8(_1224) == 255:
                revert with 'NH{q', 17
            s = uint8(_1224) + 1
            continue 
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _969 = mem[160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_969))
        staticcall address(_969).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _991 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1003 = mem[_991]
        require mem[_991] == mem[_991]
        if mem[_991] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _1080 = mem[160]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _1003 - ext_call.return_data[0]
        require ext_code.size(address(_1080))
        call address(_1080).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[4]), _1003 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1093 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1093] == bool(mem[_1093])
        if _1003 - ext_call.return_data[0] < cd[164]:
            revert with 0, 'Failed'
        _1100 = mem[64]
        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[mem[64] + ('cd', 196).length] = 4
        stor[sha3(mem[mem[64] len _1100 + ('cd', 196).length + -mem[64] + 32])] = 1
    else:
        mem[0] = mem[172 len 20]
        mem[32] = 3
        if bool(stor3[mem[172 len 20]]) == 1:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _598 = mem[160]
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
            require ext_code.size(address(_598))
            staticcall address(_598).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            while uint8(idx) < ('cd', 132).length:
                if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _1165 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                _1166 = mem[floor32(('cd', 36).length) + 97]
                if not mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 18
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                _1202 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 17
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                _1234 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1202 - (0 / _1166)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1271 = mem[96]
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < _1271:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1234 + 100] = this.address
                mem[_1234 + 132] = block.timestamp + 120
                require ext_code.size(address(_1165))
                call address(_1165).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1234 + (32 * _1271) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1479 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1488 = mem[_1479]
                require mem[_1479] <= test266151307()
                require _1479 + mem[_1479] + 31 < _1479 + return_data.size
                _1497 = mem[_1479 + mem[_1479]]
                if mem[_1479 + mem[_1479]] > test266151307():
                    revert with 'NH{q', 65
                if _1479 + ceil32(return_data.size) + floor32(mem[_1479 + mem[_1479]]) + 1 > test266151307() or floor32(mem[_1479 + mem[_1479]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1479 + ceil32(return_data.size) + floor32(mem[_1479 + mem[_1479]]) + 1
                mem[_1479 + ceil32(return_data.size)] = _1497
                require _1488 + (32 * _1497) + 32 <= return_data.size
                s = 0
                t = _1479 + _1488 + 32
                u = _1479 + ceil32(return_data.size) + 32
                while s < _1497:
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
            _1164 = mem[160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1164))
            staticcall address(_1164).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1222 = mem[_1212]
            require mem[_1212] == mem[_1212]
            if mem[_1212] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _1252 = mem[160]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _1222 - ext_call.return_data[0]
            require ext_code.size(address(_1252))
            call address(_1252).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _1222 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1297 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1297] == bool(mem[_1297])
            if _1222 - ext_call.return_data[0] < cd[164]:
                revert with 0, 'Failed'
            _1360 = mem[64]
            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
            mem[mem[64] + ('cd', 196).length] = 4
            stor[sha3(mem[mem[64] len _1360 + ('cd', 196).length + -mem[64] + 32])] = 1
        else:
            if uint8(cd[228]) == 1:
                if cd[100] and sub_b029d6e8 > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not cd[100] * sub_b029d6e8 / 10000:
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _618 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                    require ext_code.size(address(_618))
                    staticcall address(_618).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _1159 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _1160 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1200 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_b029d6e8 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1232 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1200 - (cd[100] * sub_b029d6e8 / 10000 / _1160)
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1269 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1269:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1232 + 100] = this.address
                        mem[_1232 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1159))
                        call address(_1159).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1232 + (32 * _1269) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1477 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1486 = mem[_1477]
                        require mem[_1477] <= test266151307()
                        require _1477 + mem[_1477] + 31 < _1477 + return_data.size
                        _1495 = mem[_1477 + mem[_1477]]
                        if mem[_1477 + mem[_1477]] > test266151307():
                            revert with 'NH{q', 65
                        if _1477 + ceil32(return_data.size) + floor32(mem[_1477 + mem[_1477]]) + 1 > test266151307() or floor32(mem[_1477 + mem[_1477]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1477 + ceil32(return_data.size) + floor32(mem[_1477 + mem[_1477]]) + 1
                        mem[_1477 + ceil32(return_data.size)] = _1495
                        require _1486 + (32 * _1495) + 32 <= return_data.size
                        s = 0
                        t = _1477 + _1486 + 32
                        u = _1477 + ceil32(return_data.size) + 32
                        while s < _1495:
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
                    _1158 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1158))
                    staticcall address(_1158).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1210 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1220 = mem[_1210]
                    require mem[_1210] == mem[_1210]
                    if mem[_1210] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1250 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1220 - ext_call.return_data[0]
                    require ext_code.size(address(_1250))
                    call address(_1250).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1220 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1293] == bool(mem[_1293])
                    if _1220 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1352 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 4
                    stor[sha3(mem[mem[64] len _1352 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _608 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_b029d6e8 / 10000
                    require ext_code.size(address(_608))
                    call address(_608).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, cd[100] * sub_b029d6e8 / 10000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _708 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                    require ext_code.size(address(_708))
                    staticcall address(_708).0x70a08231 with:
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
                        _1162 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _1163 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1201 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_b029d6e8 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1233 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1201 - (cd[100] * sub_b029d6e8 / 10000 / _1163)
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1270 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1270:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1233 + 100] = this.address
                        mem[_1233 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1162))
                        call address(_1162).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1233 + (32 * _1270) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1478 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1487 = mem[_1478]
                        require mem[_1478] <= test266151307()
                        require _1478 + mem[_1478] + 31 < _1478 + return_data.size
                        _1496 = mem[_1478 + mem[_1478]]
                        if mem[_1478 + mem[_1478]] > test266151307():
                            revert with 'NH{q', 65
                        if _1478 + ceil32(return_data.size) + floor32(mem[_1478 + mem[_1478]]) + 1 > test266151307() or floor32(mem[_1478 + mem[_1478]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1478 + ceil32(return_data.size) + floor32(mem[_1478 + mem[_1478]]) + 1
                        mem[_1478 + ceil32(return_data.size)] = _1496
                        require _1487 + (32 * _1496) + 32 <= return_data.size
                        s = 0
                        t = _1478 + _1487 + 32
                        u = _1478 + ceil32(return_data.size) + 32
                        while s < _1496:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if uint8(_1496) == 255:
                            revert with 'NH{q', 17
                        s = uint8(_1496) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1161 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1161))
                    staticcall address(_1161).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1211 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1221 = mem[_1211]
                    require mem[_1211] == mem[_1211]
                    if mem[_1211] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1251 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1221 - ext_call.return_data[0]
                    require ext_code.size(address(_1251))
                    call address(_1251).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1221 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1295] == bool(mem[_1295])
                    if _1221 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1356 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 4
                    stor[sha3(mem[mem[64] len _1356 + ('cd', 196).length + -mem[64] + 32])] = 1
            else:
                if uint8(cd[228]) == 2:
                    if cd[100] and sub_947646e0 > -1 / cd[100]:
                        revert with 'NH{q', 17
                    if not cd[100] * sub_947646e0 / 10000:
                        if 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _623 = mem[160]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                        require ext_code.size(address(_623))
                        staticcall address(_623).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        idx = 0
                        while uint8(idx) < ('cd', 132).length:
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                                revert with 'NH{q', 50
                            _1153 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            _1154 = mem[floor32(('cd', 36).length) + 97]
                            if not mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 18
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1198 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 17
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1198 - (cd[100] * sub_947646e0 / 10000 / _1154)
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
                            require ext_code.size(address(_1153))
                            call address(_1153).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1198 - (cd[100] * sub_947646e0 / 10000 / _1154), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1475 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1484 = mem[_1475]
                            require mem[_1475] <= test266151307()
                            require _1475 + mem[_1475] + 31 < _1475 + return_data.size
                            _1493 = mem[_1475 + mem[_1475]]
                            if mem[_1475 + mem[_1475]] > test266151307():
                                revert with 'NH{q', 65
                            if _1475 + ceil32(return_data.size) + floor32(mem[_1475 + mem[_1475]]) + 1 > test266151307() or floor32(mem[_1475 + mem[_1475]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1475 + ceil32(return_data.size) + floor32(mem[_1475 + mem[_1475]]) + 1
                            mem[_1475 + ceil32(return_data.size)] = _1493
                            require _1484 + (32 * _1493) + 32 <= return_data.size
                            s = 0
                            t = _1475 + _1484 + 32
                            u = _1475 + ceil32(return_data.size) + 32
                            while s < _1493:
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
                        _1152 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1152))
                        staticcall address(_1152).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1208 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1218 = mem[_1208]
                        require mem[_1208] == mem[_1208]
                        if mem[_1208] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1248 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1218 - ext_call.return_data[0]
                        require ext_code.size(address(_1248))
                        call address(_1248).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1218 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1289 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1289] == bool(mem[_1289])
                        if _1218 - ext_call.return_data[0] < cd[164]:
                            revert with 0, 'Failed'
                        _1344 = mem[64]
                        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                        mem[mem[64] + ('cd', 196).length] = 4
                        stor[sha3(mem[mem[64] len _1344 + ('cd', 196).length + -mem[64] + 32])] = 1
                    else:
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _611 = mem[128]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                        require ext_code.size(address(_611))
                        call address(_611).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, cd[100] * sub_947646e0 / 10000
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _711 = mem[160]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                        require ext_code.size(address(_711))
                        staticcall address(_711).0x70a08231 with:
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
                            _1156 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            _1157 = mem[floor32(('cd', 36).length) + 97]
                            if not mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 18
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1199 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 17
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1199 - (cd[100] * sub_947646e0 / 10000 / _1157)
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
                            require ext_code.size(address(_1156))
                            call address(_1156).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1199 - (cd[100] * sub_947646e0 / 10000 / _1157), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1476 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1485 = mem[_1476]
                            require mem[_1476] <= test266151307()
                            require _1476 + mem[_1476] + 31 < _1476 + return_data.size
                            _1494 = mem[_1476 + mem[_1476]]
                            if mem[_1476 + mem[_1476]] > test266151307():
                                revert with 'NH{q', 65
                            if _1476 + ceil32(return_data.size) + floor32(mem[_1476 + mem[_1476]]) + 1 > test266151307() or floor32(mem[_1476 + mem[_1476]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1476 + ceil32(return_data.size) + floor32(mem[_1476 + mem[_1476]]) + 1
                            mem[_1476 + ceil32(return_data.size)] = _1494
                            require _1485 + (32 * _1494) + 32 <= return_data.size
                            s = 0
                            t = _1476 + _1485 + 32
                            u = _1476 + ceil32(return_data.size) + 32
                            while s < _1494:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if uint8(_1494) == 255:
                                revert with 'NH{q', 17
                            s = uint8(_1494) + 1
                            continue 
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1155 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1155))
                        staticcall address(_1155).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1209 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1219 = mem[_1209]
                        require mem[_1209] == mem[_1209]
                        if mem[_1209] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1249 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1219 - ext_call.return_data[0]
                        require ext_code.size(address(_1249))
                        call address(_1249).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1219 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1291] == bool(mem[_1291])
                        if _1219 - ext_call.return_data[0] < cd[164]:
                            revert with 0, 'Failed'
                        _1348 = mem[64]
                        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                        mem[mem[64] + ('cd', 196).length] = 4
                        stor[sha3(mem[mem[64] len _1348 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if uint8(cd[228]) != 3:
                        if cd[100] and sub_947646e0 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if not cd[100] * sub_947646e0 / 10000:
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _626 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_626))
                            staticcall address(_626).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            idx = 0
                            while uint8(idx) < ('cd', 132).length:
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                                    revert with 'NH{q', 50
                                _1141 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1142 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1194 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1226 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1194 - (cd[100] * sub_947646e0 / 10000 / _1142)
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1263 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1263:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1226 + 100] = this.address
                                mem[_1226 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1141))
                                call address(_1141).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1226 + (32 * _1263) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1471 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1480 = mem[_1471]
                                require mem[_1471] <= test266151307()
                                require _1471 + mem[_1471] + 31 < _1471 + return_data.size
                                _1489 = mem[_1471 + mem[_1471]]
                                if mem[_1471 + mem[_1471]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1471 + ceil32(return_data.size) + floor32(mem[_1471 + mem[_1471]]) + 1 > test266151307() or floor32(mem[_1471 + mem[_1471]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1471 + ceil32(return_data.size) + floor32(mem[_1471 + mem[_1471]]) + 1
                                mem[_1471 + ceil32(return_data.size)] = _1489
                                require _1480 + (32 * _1489) + 32 <= return_data.size
                                s = 0
                                t = _1471 + _1480 + 32
                                u = _1471 + ceil32(return_data.size) + 32
                                while s < _1489:
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
                            _1140 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1140))
                            staticcall address(_1140).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1204 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1214 = mem[_1204]
                            require mem[_1204] == mem[_1204]
                            if mem[_1204] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1244 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1214 - ext_call.return_data[0]
                            require ext_code.size(address(_1244))
                            call address(_1244).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1214 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1281] == bool(mem[_1281])
                            if _1214 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1328 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1328 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _614 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                            require ext_code.size(address(_614))
                            call address(_614).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_947646e0 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _713 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_713))
                            staticcall address(_713).0x70a08231 with:
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
                                _1144 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1145 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1195 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1195 - (cd[100] * sub_947646e0 / 10000 / _1145)
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
                                require ext_code.size(address(_1144))
                                call address(_1144).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _1195 - (cd[100] * sub_947646e0 / 10000 / _1145), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1472 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1481 = mem[_1472]
                                require mem[_1472] <= test266151307()
                                require _1472 + mem[_1472] + 31 < _1472 + return_data.size
                                _1490 = mem[_1472 + mem[_1472]]
                                if mem[_1472 + mem[_1472]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1472 + ceil32(return_data.size) + floor32(mem[_1472 + mem[_1472]]) + 1 > test266151307() or floor32(mem[_1472 + mem[_1472]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1472 + ceil32(return_data.size) + floor32(mem[_1472 + mem[_1472]]) + 1
                                mem[_1472 + ceil32(return_data.size)] = _1490
                                require _1481 + (32 * _1490) + 32 <= return_data.size
                                s = 0
                                t = _1472 + _1481 + 32
                                u = _1472 + ceil32(return_data.size) + 32
                                while s < _1490:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if uint8(_1490) == 255:
                                    revert with 'NH{q', 17
                                s = uint8(_1490) + 1
                                continue 
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1143 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1143))
                            staticcall address(_1143).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1205 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1215 = mem[_1205]
                            require mem[_1205] == mem[_1205]
                            if mem[_1205] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1245 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1215 - ext_call.return_data[0]
                            require ext_code.size(address(_1245))
                            call address(_1245).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1215 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1283] == bool(mem[_1283])
                            if _1215 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1332 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1332 + ('cd', 196).length + -mem[64] + 32])] = 1
                    else:
                        if cd[100] and sub_c6357133 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if not cd[100] * sub_c6357133 / 10000:
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _627 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_627))
                            staticcall address(_627).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            idx = 0
                            while uint8(idx) < ('cd', 132).length:
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                                    revert with 'NH{q', 50
                                _1147 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1148 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1196 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_c6357133 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1196 - (cd[100] * sub_c6357133 / 10000 / _1148)
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
                                require ext_code.size(address(_1147))
                                call address(_1147).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _1196 - (cd[100] * sub_c6357133 / 10000 / _1148), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1473 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1482 = mem[_1473]
                                require mem[_1473] <= test266151307()
                                require _1473 + mem[_1473] + 31 < _1473 + return_data.size
                                _1491 = mem[_1473 + mem[_1473]]
                                if mem[_1473 + mem[_1473]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1473 + ceil32(return_data.size) + floor32(mem[_1473 + mem[_1473]]) + 1 > test266151307() or floor32(mem[_1473 + mem[_1473]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1473 + ceil32(return_data.size) + floor32(mem[_1473 + mem[_1473]]) + 1
                                mem[_1473 + ceil32(return_data.size)] = _1491
                                require _1482 + (32 * _1491) + 32 <= return_data.size
                                s = 0
                                t = _1473 + _1482 + 32
                                u = _1473 + ceil32(return_data.size) + 32
                                while s < _1491:
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
                            _1146 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1146))
                            staticcall address(_1146).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1206 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1216 = mem[_1206]
                            require mem[_1206] == mem[_1206]
                            if mem[_1206] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1246 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1216 - ext_call.return_data[0]
                            require ext_code.size(address(_1246))
                            call address(_1246).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1216 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1285 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1285] == bool(mem[_1285])
                            if _1216 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1336 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1336 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _615 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_c6357133 / 10000
                            require ext_code.size(address(_615))
                            call address(_615).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_c6357133 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _714 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_714))
                            staticcall address(_714).0x70a08231 with:
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
                                _1150 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1151 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1197 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_c6357133 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1229 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1197 - (cd[100] * sub_c6357133 / 10000 / _1151)
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1266 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1266:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1229 + 100] = this.address
                                mem[_1229 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1150))
                                call address(_1150).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1229 + (32 * _1266) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1474 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1483 = mem[_1474]
                                require mem[_1474] <= test266151307()
                                require _1474 + mem[_1474] + 31 < _1474 + return_data.size
                                _1492 = mem[_1474 + mem[_1474]]
                                if mem[_1474 + mem[_1474]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1474 + ceil32(return_data.size) + floor32(mem[_1474 + mem[_1474]]) + 1 > test266151307() or floor32(mem[_1474 + mem[_1474]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1474 + ceil32(return_data.size) + floor32(mem[_1474 + mem[_1474]]) + 1
                                mem[_1474 + ceil32(return_data.size)] = _1492
                                require _1483 + (32 * _1492) + 32 <= return_data.size
                                s = 0
                                t = _1474 + _1483 + 32
                                u = _1474 + ceil32(return_data.size) + 32
                                while s < _1492:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if uint8(_1492) == 255:
                                    revert with 'NH{q', 17
                                s = uint8(_1492) + 1
                                continue 
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1149 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1149))
                            staticcall address(_1149).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1207 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1217 = mem[_1207]
                            require mem[_1207] == mem[_1207]
                            if mem[_1207] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1247 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1217 - ext_call.return_data[0]
                            require ext_code.size(address(_1247))
                            call address(_1247).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1217 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1287 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1287] == bool(mem[_1287])
                            if _1217 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1340 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1340 + ('cd', 196).length + -mem[64] + 32])] = 1
}



}
