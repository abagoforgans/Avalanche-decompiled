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

function sub_2e9f9187(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return ('cd', 4).length
}

function sub_d6bc8480(?) {
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
    if sub_3d4b8eba[address(cd[4])] != msg.sender:
        revert with 0, 'Unauthorised'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ('cd', 196).length + 99] = 4
    if stor4[call.data[cd[196] + 36 len ('cd', 196).length]]:
        revert with 0, 'Duplicate transaction'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _147 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_147))
    call address(_147).0x23b872dd with:
         gas gas_remaining wei
        args address(cd[4]), address(this.address), cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if bool(stor3[mem[140 len 20]]) != 1:
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if bool(stor3[mem[172 len 20]]) != 1:
            if uint8(cd[228]) == 1:
                if cd[100] and sub_b029d6e8 > -1 / cd[100]:
                    revert with 'NH{q', 17
                if cd[100] * sub_b029d6e8 / 10000:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, cd[100] * sub_b029d6e8 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if uint8(cd[228]) == 2:
                    if cd[100] and sub_947646e0 > -1 / cd[100]:
                        revert with 'NH{q', 17
                    if cd[100] * sub_947646e0 / 10000:
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require ext_code.size(mem[140 len 20])
                        call mem[140 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, cd[100] * sub_947646e0 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint8(cd[228]) != 3:
                        if cd[100] and sub_947646e0 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if cd[100] * sub_947646e0 / 10000:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require ext_code.size(mem[140 len 20])
                            call mem[140 len 20].0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_947646e0 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if cd[100] and sub_c6357133 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if cd[100] * sub_c6357133 / 10000:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require ext_code.size(mem[140 len 20])
                            call mem[140 len 20].0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_c6357133 / 10000
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
    if sub_3d4b8eba[address(cd[4])] != msg.sender:
        revert with 0, 'Unauthorised'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ('cd', 196).length + 99] = 4
    if stor4[call.data[cd[196] + 36 len ('cd', 196).length]]:
        revert with 0, 'Duplicate transaction'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _585 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_585))
    call address(_585).0x23b872dd with:
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
            _986 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
            _987 = mem[floor32(('cd', 36).length) + 97]
            if not mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 18
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _1005 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 17
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _1091 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1005 - (0 / _987)
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1107 = mem[96]
            mem[mem[64] + 164] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 196
            while s < _1107:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1091 + 100] = this.address
            mem[_1091 + 132] = block.timestamp + 120
            require ext_code.size(address(_986))
            call address(_986).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1091 + (32 * _1107) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1241 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1251 = mem[_1241]
            require mem[_1241] <= test266151307()
            require _1241 + mem[_1241] + 31 < _1241 + return_data.size
            _1253 = mem[_1241 + mem[_1241]]
            if mem[_1241 + mem[_1241]] > test266151307():
                revert with 'NH{q', 65
            if _1241 + ceil32(return_data.size) + floor32(mem[_1241 + mem[_1241]]) + 1 > test266151307() or floor32(mem[_1241 + mem[_1241]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1241 + ceil32(return_data.size) + floor32(mem[_1241 + mem[_1241]]) + 1
            mem[_1241 + ceil32(return_data.size)] = _1253
            require _1251 + (32 * _1253) + 32 <= return_data.size
            s = 0
            t = _1241 + _1251 + 32
            u = _1241 + ceil32(return_data.size) + 32
            while s < _1253:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if uint8(_1253) == 255:
                revert with 'NH{q', 17
            s = uint8(_1253) + 1
            continue 
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _985 = mem[160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_985))
        staticcall address(_985).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1008 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1027 = mem[_1008]
        require mem[_1008] == mem[_1008]
        if mem[_1008] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _1095 = mem[160]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _1027 - ext_call.return_data[0]
        require ext_code.size(address(_1095))
        call address(_1095).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[4]), _1027 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1111] == bool(mem[_1111])
        if _1027 - ext_call.return_data[0] < cd[164]:
            revert with 0, 'Failed'
        _1123 = mem[64]
        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[mem[64] + ('cd', 196).length] = 4
        stor[sha3(mem[mem[64] len _1123 + ('cd', 196).length + -mem[64] + 32])] = 1
    else:
        mem[0] = mem[172 len 20]
        mem[32] = 3
        if bool(stor3[mem[172 len 20]]) == 1:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _601 = mem[160]
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
            require ext_code.size(address(_601))
            staticcall address(_601).0x70a08231 with:
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
                _993 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                _994 = mem[floor32(('cd', 36).length) + 97]
                if not mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 18
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                _1007 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 17
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                _1092 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1007 - (0 / _994)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1108 = mem[96]
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < _1108:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1092 + 100] = this.address
                mem[_1092 + 132] = block.timestamp + 120
                require ext_code.size(address(_993))
                call address(_993).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1092 + (32 * _1108) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1242 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1252 = mem[_1242]
                require mem[_1242] <= test266151307()
                require _1242 + mem[_1242] + 31 < _1242 + return_data.size
                _1254 = mem[_1242 + mem[_1242]]
                if mem[_1242 + mem[_1242]] > test266151307():
                    revert with 'NH{q', 65
                if _1242 + ceil32(return_data.size) + floor32(mem[_1242 + mem[_1242]]) + 1 > test266151307() or floor32(mem[_1242 + mem[_1242]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1242 + ceil32(return_data.size) + floor32(mem[_1242 + mem[_1242]]) + 1
                mem[_1242 + ceil32(return_data.size)] = _1254
                require _1252 + (32 * _1254) + 32 <= return_data.size
                s = 0
                t = _1242 + _1252 + 32
                u = _1242 + ceil32(return_data.size) + 32
                while s < _1254:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if uint8(_1254) == 255:
                    revert with 'NH{q', 17
                s = uint8(_1254) + 1
                continue 
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _992 = mem[160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_992))
            staticcall address(_992).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1014 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1035 = mem[_1014]
            require mem[_1014] == mem[_1014]
            if mem[_1014] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _1096 = mem[160]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _1035 - ext_call.return_data[0]
            require ext_code.size(address(_1096))
            call address(_1096).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _1035 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1113] == bool(mem[_1113])
            if _1035 - ext_call.return_data[0] < cd[164]:
                revert with 0, 'Failed'
            _1127 = mem[64]
            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
            mem[mem[64] + ('cd', 196).length] = 4
            stor[sha3(mem[mem[64] len _1127 + ('cd', 196).length + -mem[64] + 32])] = 1
        else:
            if uint8(cd[228]) == 1:
                if cd[100] and sub_b029d6e8 > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not cd[100] * sub_b029d6e8 / 10000:
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _621 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                    require ext_code.size(address(_621))
                    staticcall address(_621).0x70a08231 with:
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
                        _1194 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _1195 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1229 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_b029d6e8 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1263 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1229 - (cd[100] * sub_b029d6e8 / 10000 / _1195)
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1297 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1297:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1263 + 100] = this.address
                        mem[_1263 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1194))
                        call address(_1194).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1263 + (32 * _1297) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1483 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1491 = mem[_1483]
                        require mem[_1483] <= test266151307()
                        require _1483 + mem[_1483] + 31 < _1483 + return_data.size
                        _1499 = mem[_1483 + mem[_1483]]
                        if mem[_1483 + mem[_1483]] > test266151307():
                            revert with 'NH{q', 65
                        if _1483 + ceil32(return_data.size) + floor32(mem[_1483 + mem[_1483]]) + 1 > test266151307() or floor32(mem[_1483 + mem[_1483]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1483 + ceil32(return_data.size) + floor32(mem[_1483 + mem[_1483]]) + 1
                        mem[_1483 + ceil32(return_data.size)] = _1499
                        require _1491 + (32 * _1499) + 32 <= return_data.size
                        s = 0
                        t = _1483 + _1491 + 32
                        u = _1483 + ceil32(return_data.size) + 32
                        while s < _1499:
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
                    _1193 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1193))
                    staticcall address(_1193).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1238 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1249 = mem[_1238]
                    require mem[_1238] == mem[_1238]
                    if mem[_1238] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1279 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1249 - ext_call.return_data[0]
                    require ext_code.size(address(_1279))
                    call address(_1279).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1249 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1319] == bool(mem[_1319])
                    if _1249 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1373 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 4
                    stor[sha3(mem[mem[64] len _1373 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _611 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_b029d6e8 / 10000
                    require ext_code.size(address(_611))
                    call address(_611).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, cd[100] * sub_b029d6e8 / 10000
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
                        _1197 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _1198 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1230 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_b029d6e8 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1264 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1230 - (cd[100] * sub_b029d6e8 / 10000 / _1198)
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1298 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1298:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1264 + 100] = this.address
                        mem[_1264 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1197))
                        call address(_1197).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1264 + (32 * _1298) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1484 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1492 = mem[_1484]
                        require mem[_1484] <= test266151307()
                        require _1484 + mem[_1484] + 31 < _1484 + return_data.size
                        _1500 = mem[_1484 + mem[_1484]]
                        if mem[_1484 + mem[_1484]] > test266151307():
                            revert with 'NH{q', 65
                        if _1484 + ceil32(return_data.size) + floor32(mem[_1484 + mem[_1484]]) + 1 > test266151307() or floor32(mem[_1484 + mem[_1484]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1484 + ceil32(return_data.size) + floor32(mem[_1484 + mem[_1484]]) + 1
                        mem[_1484 + ceil32(return_data.size)] = _1500
                        require _1492 + (32 * _1500) + 32 <= return_data.size
                        s = 0
                        t = _1484 + _1492 + 32
                        u = _1484 + ceil32(return_data.size) + 32
                        while s < _1500:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if uint8(_1500) == 255:
                            revert with 'NH{q', 17
                        s = uint8(_1500) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1196 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1196))
                    staticcall address(_1196).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1239 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1250 = mem[_1239]
                    require mem[_1239] == mem[_1239]
                    if mem[_1239] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1280 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1250 - ext_call.return_data[0]
                    require ext_code.size(address(_1280))
                    call address(_1280).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1250 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1321] == bool(mem[_1321])
                    if _1250 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1377 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 4
                    stor[sha3(mem[mem[64] len _1377 + ('cd', 196).length + -mem[64] + 32])] = 1
            else:
                if uint8(cd[228]) == 2:
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
                            _1188 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            _1189 = mem[floor32(('cd', 36).length) + 97]
                            if not mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 18
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1227 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 17
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _1261 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1227 - (cd[100] * sub_947646e0 / 10000 / _1189)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1295 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < _1295:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1261 + 100] = this.address
                            mem[_1261 + 132] = block.timestamp + 120
                            require ext_code.size(address(_1188))
                            call address(_1188).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1261 + (32 * _1295) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1481 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1489 = mem[_1481]
                            require mem[_1481] <= test266151307()
                            require _1481 + mem[_1481] + 31 < _1481 + return_data.size
                            _1497 = mem[_1481 + mem[_1481]]
                            if mem[_1481 + mem[_1481]] > test266151307():
                                revert with 'NH{q', 65
                            if _1481 + ceil32(return_data.size) + floor32(mem[_1481 + mem[_1481]]) + 1 > test266151307() or floor32(mem[_1481 + mem[_1481]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1481 + ceil32(return_data.size) + floor32(mem[_1481 + mem[_1481]]) + 1
                            mem[_1481 + ceil32(return_data.size)] = _1497
                            require _1489 + (32 * _1497) + 32 <= return_data.size
                            s = 0
                            t = _1481 + _1489 + 32
                            u = _1481 + ceil32(return_data.size) + 32
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
                        _1187 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1187))
                        staticcall address(_1187).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1247 = mem[_1236]
                        require mem[_1236] == mem[_1236]
                        if mem[_1236] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1277 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1247 - ext_call.return_data[0]
                        require ext_code.size(address(_1277))
                        call address(_1277).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1247 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1315] == bool(mem[_1315])
                        if _1247 - ext_call.return_data[0] < cd[164]:
                            revert with 0, 'Failed'
                        _1365 = mem[64]
                        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                        mem[mem[64] + ('cd', 196).length] = 4
                        stor[sha3(mem[mem[64] len _1365 + ('cd', 196).length + -mem[64] + 32])] = 1
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
                            _1191 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            _1192 = mem[floor32(('cd', 36).length) + 97]
                            if not mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 18
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1228 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 17
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _1262 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1228 - (cd[100] * sub_947646e0 / 10000 / _1192)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1296 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < _1296:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1262 + 100] = this.address
                            mem[_1262 + 132] = block.timestamp + 120
                            require ext_code.size(address(_1191))
                            call address(_1191).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1262 + (32 * _1296) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1482 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1490 = mem[_1482]
                            require mem[_1482] <= test266151307()
                            require _1482 + mem[_1482] + 31 < _1482 + return_data.size
                            _1498 = mem[_1482 + mem[_1482]]
                            if mem[_1482 + mem[_1482]] > test266151307():
                                revert with 'NH{q', 65
                            if _1482 + ceil32(return_data.size) + floor32(mem[_1482 + mem[_1482]]) + 1 > test266151307() or floor32(mem[_1482 + mem[_1482]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1482 + ceil32(return_data.size) + floor32(mem[_1482 + mem[_1482]]) + 1
                            mem[_1482 + ceil32(return_data.size)] = _1498
                            require _1490 + (32 * _1498) + 32 <= return_data.size
                            s = 0
                            t = _1482 + _1490 + 32
                            u = _1482 + ceil32(return_data.size) + 32
                            while s < _1498:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if uint8(_1498) == 255:
                                revert with 'NH{q', 17
                            s = uint8(_1498) + 1
                            continue 
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1190 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1190))
                        staticcall address(_1190).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1248 = mem[_1237]
                        require mem[_1237] == mem[_1237]
                        if mem[_1237] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1278 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1248 - ext_call.return_data[0]
                        require ext_code.size(address(_1278))
                        call address(_1278).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1248 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1317] == bool(mem[_1317])
                        if _1248 - ext_call.return_data[0] < cd[164]:
                            revert with 0, 'Failed'
                        _1369 = mem[64]
                        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                        mem[mem[64] + ('cd', 196).length] = 4
                        stor[sha3(mem[mem[64] len _1369 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if uint8(cd[228]) != 3:
                        if cd[100] and sub_947646e0 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if not cd[100] * sub_947646e0 / 10000:
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _629 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_629))
                            staticcall address(_629).0x70a08231 with:
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
                                _1176 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1177 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1223 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1257 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1223 - (cd[100] * sub_947646e0 / 10000 / _1177)
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1291 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1291:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1257 + 100] = this.address
                                mem[_1257 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1176))
                                call address(_1176).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1257 + (32 * _1291) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1477 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1485 = mem[_1477]
                                require mem[_1477] <= test266151307()
                                require _1477 + mem[_1477] + 31 < _1477 + return_data.size
                                _1493 = mem[_1477 + mem[_1477]]
                                if mem[_1477 + mem[_1477]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1477 + ceil32(return_data.size) + floor32(mem[_1477 + mem[_1477]]) + 1 > test266151307() or floor32(mem[_1477 + mem[_1477]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1477 + ceil32(return_data.size) + floor32(mem[_1477 + mem[_1477]]) + 1
                                mem[_1477 + ceil32(return_data.size)] = _1493
                                require _1485 + (32 * _1493) + 32 <= return_data.size
                                s = 0
                                t = _1477 + _1485 + 32
                                u = _1477 + ceil32(return_data.size) + 32
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
                            _1175 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1175))
                            staticcall address(_1175).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1232 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1243 = mem[_1232]
                            require mem[_1232] == mem[_1232]
                            if mem[_1232] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1273 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1243 - ext_call.return_data[0]
                            require ext_code.size(address(_1273))
                            call address(_1273).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1243 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1307] == bool(mem[_1307])
                            if _1243 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1349 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1349 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _617 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                            require ext_code.size(address(_617))
                            call address(_617).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_947646e0 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _716 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_716))
                            staticcall address(_716).0x70a08231 with:
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
                                _1179 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1180 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1224 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1258 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1224 - (cd[100] * sub_947646e0 / 10000 / _1180)
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1292 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1292:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1258 + 100] = this.address
                                mem[_1258 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1179))
                                call address(_1179).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1258 + (32 * _1292) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1478 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1486 = mem[_1478]
                                require mem[_1478] <= test266151307()
                                require _1478 + mem[_1478] + 31 < _1478 + return_data.size
                                _1494 = mem[_1478 + mem[_1478]]
                                if mem[_1478 + mem[_1478]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1478 + ceil32(return_data.size) + floor32(mem[_1478 + mem[_1478]]) + 1 > test266151307() or floor32(mem[_1478 + mem[_1478]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1478 + ceil32(return_data.size) + floor32(mem[_1478 + mem[_1478]]) + 1
                                mem[_1478 + ceil32(return_data.size)] = _1494
                                require _1486 + (32 * _1494) + 32 <= return_data.size
                                s = 0
                                t = _1478 + _1486 + 32
                                u = _1478 + ceil32(return_data.size) + 32
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
                            _1178 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1178))
                            staticcall address(_1178).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1233 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1244 = mem[_1233]
                            require mem[_1233] == mem[_1233]
                            if mem[_1233] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1274 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1244 - ext_call.return_data[0]
                            require ext_code.size(address(_1274))
                            call address(_1274).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1244 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1309] == bool(mem[_1309])
                            if _1244 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1353 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1353 + ('cd', 196).length + -mem[64] + 32])] = 1
                    else:
                        if cd[100] and sub_c6357133 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if not cd[100] * sub_c6357133 / 10000:
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _630 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_630))
                            staticcall address(_630).0x70a08231 with:
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
                                _1182 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1183 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1225 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_c6357133 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1259 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1225 - (cd[100] * sub_c6357133 / 10000 / _1183)
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1293 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1293:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1259 + 100] = this.address
                                mem[_1259 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1182))
                                call address(_1182).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1259 + (32 * _1293) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1479 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1487 = mem[_1479]
                                require mem[_1479] <= test266151307()
                                require _1479 + mem[_1479] + 31 < _1479 + return_data.size
                                _1495 = mem[_1479 + mem[_1479]]
                                if mem[_1479 + mem[_1479]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1479 + ceil32(return_data.size) + floor32(mem[_1479 + mem[_1479]]) + 1 > test266151307() or floor32(mem[_1479 + mem[_1479]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1479 + ceil32(return_data.size) + floor32(mem[_1479 + mem[_1479]]) + 1
                                mem[_1479 + ceil32(return_data.size)] = _1495
                                require _1487 + (32 * _1495) + 32 <= return_data.size
                                s = 0
                                t = _1479 + _1487 + 32
                                u = _1479 + ceil32(return_data.size) + 32
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
                            _1181 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1181))
                            staticcall address(_1181).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1234 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1245 = mem[_1234]
                            require mem[_1234] == mem[_1234]
                            if mem[_1234] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1275 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1245 - ext_call.return_data[0]
                            require ext_code.size(address(_1275))
                            call address(_1275).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1245 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1311] == bool(mem[_1311])
                            if _1245 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1357 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1357 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _618 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_c6357133 / 10000
                            require ext_code.size(address(_618))
                            call address(_618).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_c6357133 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _717 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_717))
                            staticcall address(_717).0x70a08231 with:
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
                                _1185 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                _1186 = mem[floor32(('cd', 36).length) + 97]
                                if not mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 18
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1226 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_c6357133 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1260 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1226 - (cd[100] * sub_c6357133 / 10000 / _1186)
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1294 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1294:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1260 + 100] = this.address
                                mem[_1260 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1185))
                                call address(_1185).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1260 + (32 * _1294) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1480 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1488 = mem[_1480]
                                require mem[_1480] <= test266151307()
                                require _1480 + mem[_1480] + 31 < _1480 + return_data.size
                                _1496 = mem[_1480 + mem[_1480]]
                                if mem[_1480 + mem[_1480]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1480 + ceil32(return_data.size) + floor32(mem[_1480 + mem[_1480]]) + 1 > test266151307() or floor32(mem[_1480 + mem[_1480]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1480 + ceil32(return_data.size) + floor32(mem[_1480 + mem[_1480]]) + 1
                                mem[_1480 + ceil32(return_data.size)] = _1496
                                require _1488 + (32 * _1496) + 32 <= return_data.size
                                s = 0
                                t = _1480 + _1488 + 32
                                u = _1480 + ceil32(return_data.size) + 32
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
                            _1184 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1184))
                            staticcall address(_1184).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1235 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1246 = mem[_1235]
                            require mem[_1235] == mem[_1235]
                            if mem[_1235] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1276 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1246 - ext_call.return_data[0]
                            require ext_code.size(address(_1276))
                            call address(_1276).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1246 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1313] == bool(mem[_1313])
                            if _1246 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1361 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1361 + ('cd', 196).length + -mem[64] + 32])] = 1
}



}
