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
    _567 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_567))
    call address(_567).0x23b872dd with:
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
        _580 = mem[160]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
        require ext_code.size(address(_580))
        staticcall address(_580).0x70a08231 with:
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
            _958 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and 0 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                revert with 'NH{q', 17
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _1061 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1077 = mem[96]
            mem[mem[64] + 164] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 196
            while s < _1077:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1061 + 100] = this.address
            mem[_1061 + 132] = block.timestamp + 120
            require ext_code.size(address(_958))
            call address(_958).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1061 + (32 * _1077) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1203 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1213 = mem[_1203]
            require mem[_1203] <= test266151307()
            require _1203 + mem[_1203] + 31 < _1203 + return_data.size
            _1215 = mem[_1203 + mem[_1203]]
            if mem[_1203 + mem[_1203]] > test266151307():
                revert with 'NH{q', 65
            if _1203 + ceil32(return_data.size) + floor32(mem[_1203 + mem[_1203]]) + 1 > test266151307() or floor32(mem[_1203 + mem[_1203]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1203 + ceil32(return_data.size) + floor32(mem[_1203 + mem[_1203]]) + 1
            mem[_1203 + ceil32(return_data.size)] = _1215
            require _1213 + (32 * _1215) + 32 <= return_data.size
            s = 0
            t = _1203 + _1213 + 32
            u = _1203 + ceil32(return_data.size) + 32
            while s < _1215:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if uint8(_1215) == 255:
                revert with 'NH{q', 17
            s = uint8(_1215) + 1
            continue 
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _957 = mem[160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_957))
        staticcall address(_957).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _978 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _997 = mem[_978]
        require mem[_978] == mem[_978]
        if mem[_978] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _1065 = mem[160]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _997 - ext_call.return_data[0]
        require ext_code.size(address(_1065))
        call address(_1065).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[4]), _997 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1081 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1081] == bool(mem[_1081])
        if _997 - ext_call.return_data[0] < cd[164]:
            revert with 0, 'Failed'
        _1093 = mem[64]
        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[mem[64] + ('cd', 196).length] = 4
        stor[sha3(mem[mem[64] len _1093 + ('cd', 196).length + -mem[64] + 32])] = 1
    else:
        mem[0] = mem[172 len 20]
        mem[32] = 3
        if bool(stor3[mem[172 len 20]]) == 1:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _583 = mem[160]
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
            require ext_code.size(address(_583))
            staticcall address(_583).0x70a08231 with:
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
                _965 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and 0 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                    revert with 'NH{q', 17
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                _1062 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1078 = mem[96]
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < _1078:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1062 + 100] = this.address
                mem[_1062 + 132] = block.timestamp + 120
                require ext_code.size(address(_965))
                call address(_965).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1062 + (32 * _1078) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1204 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1214 = mem[_1204]
                require mem[_1204] <= test266151307()
                require _1204 + mem[_1204] + 31 < _1204 + return_data.size
                _1216 = mem[_1204 + mem[_1204]]
                if mem[_1204 + mem[_1204]] > test266151307():
                    revert with 'NH{q', 65
                if _1204 + ceil32(return_data.size) + floor32(mem[_1204 + mem[_1204]]) + 1 > test266151307() or floor32(mem[_1204 + mem[_1204]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1204 + ceil32(return_data.size) + floor32(mem[_1204 + mem[_1204]]) + 1
                mem[_1204 + ceil32(return_data.size)] = _1216
                require _1214 + (32 * _1216) + 32 <= return_data.size
                s = 0
                t = _1204 + _1214 + 32
                u = _1204 + ceil32(return_data.size) + 32
                while s < _1216:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if uint8(_1216) == 255:
                    revert with 'NH{q', 17
                s = uint8(_1216) + 1
                continue 
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _964 = mem[160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_964))
            staticcall address(_964).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1005 = mem[_984]
            require mem[_984] == mem[_984]
            if mem[_984] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _1066 = mem[160]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _1005 - ext_call.return_data[0]
            require ext_code.size(address(_1066))
            call address(_1066).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _1005 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1083 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1083] == bool(mem[_1083])
            if _1005 - ext_call.return_data[0] < cd[164]:
                revert with 0, 'Failed'
            _1097 = mem[64]
            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
            mem[mem[64] + ('cd', 196).length] = 4
            stor[sha3(mem[mem[64] len _1097 + ('cd', 196).length + -mem[64] + 32])] = 1
        else:
            if uint8(cd[228]) == 1:
                if cd[100] and sub_b029d6e8 > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not cd[100] * sub_b029d6e8 / 10000:
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _603 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                    require ext_code.size(address(_603))
                    staticcall address(_603).0x70a08231 with:
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
                        _1164 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1182 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_b029d6e8 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                            revert with 'NH{q', 17
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1225 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1182 * cd[100] * sub_b029d6e8 / 10000 / 10000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1259 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1259:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1225 + 100] = this.address
                        mem[_1225 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1164))
                        call address(_1164).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1225 + (32 * _1259) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1445 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1453 = mem[_1445]
                        require mem[_1445] <= test266151307()
                        require _1445 + mem[_1445] + 31 < _1445 + return_data.size
                        _1461 = mem[_1445 + mem[_1445]]
                        if mem[_1445 + mem[_1445]] > test266151307():
                            revert with 'NH{q', 65
                        if _1445 + ceil32(return_data.size) + floor32(mem[_1445 + mem[_1445]]) + 1 > test266151307() or floor32(mem[_1445 + mem[_1445]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1445 + ceil32(return_data.size) + floor32(mem[_1445 + mem[_1445]]) + 1
                        mem[_1445 + ceil32(return_data.size)] = _1461
                        require _1453 + (32 * _1461) + 32 <= return_data.size
                        s = 0
                        t = _1445 + _1453 + 32
                        u = _1445 + ceil32(return_data.size) + 32
                        while s < _1461:
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
                    _1163 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1163))
                    staticcall address(_1163).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1211 = mem[_1200]
                    require mem[_1200] == mem[_1200]
                    if mem[_1200] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1241 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1211 - ext_call.return_data[0]
                    require ext_code.size(address(_1241))
                    call address(_1241).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1211 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1281] == bool(mem[_1281])
                    if _1211 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1335 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 4
                    stor[sha3(mem[mem[64] len _1335 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _593 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_b029d6e8 / 10000
                    require ext_code.size(address(_593))
                    call address(_593).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, cd[100] * sub_b029d6e8 / 10000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _695 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                    require ext_code.size(address(_695))
                    staticcall address(_695).0x70a08231 with:
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
                        _1167 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1184 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_b029d6e8 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                            revert with 'NH{q', 17
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1226 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1184 * cd[100] * sub_b029d6e8 / 10000 / 10000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1260 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1260:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1226 + 100] = this.address
                        mem[_1226 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1167))
                        call address(_1167).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1226 + (32 * _1260) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1446 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1454 = mem[_1446]
                        require mem[_1446] <= test266151307()
                        require _1446 + mem[_1446] + 31 < _1446 + return_data.size
                        _1462 = mem[_1446 + mem[_1446]]
                        if mem[_1446 + mem[_1446]] > test266151307():
                            revert with 'NH{q', 65
                        if _1446 + ceil32(return_data.size) + floor32(mem[_1446 + mem[_1446]]) + 1 > test266151307() or floor32(mem[_1446 + mem[_1446]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1446 + ceil32(return_data.size) + floor32(mem[_1446 + mem[_1446]]) + 1
                        mem[_1446 + ceil32(return_data.size)] = _1462
                        require _1454 + (32 * _1462) + 32 <= return_data.size
                        s = 0
                        t = _1446 + _1454 + 32
                        u = _1446 + ceil32(return_data.size) + 32
                        while s < _1462:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if uint8(_1462) == 255:
                            revert with 'NH{q', 17
                        s = uint8(_1462) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1166 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1166))
                    staticcall address(_1166).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1212 = mem[_1201]
                    require mem[_1201] == mem[_1201]
                    if mem[_1201] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1242 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1212 - ext_call.return_data[0]
                    require ext_code.size(address(_1242))
                    call address(_1242).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1212 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1283] == bool(mem[_1283])
                    if _1212 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1339 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 4
                    stor[sha3(mem[mem[64] len _1339 + ('cd', 196).length + -mem[64] + 32])] = 1
            else:
                if uint8(cd[228]) == 2:
                    if cd[100] and sub_947646e0 > -1 / cd[100]:
                        revert with 'NH{q', 17
                    if not cd[100] * sub_947646e0 / 10000:
                        if 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _608 = mem[160]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                        require ext_code.size(address(_608))
                        staticcall address(_608).0x70a08231 with:
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
                            _1158 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1178 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_947646e0 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                                revert with 'NH{q', 17
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _1223 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1178 * cd[100] * sub_947646e0 / 10000 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1257 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < _1257:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1223 + 100] = this.address
                            mem[_1223 + 132] = block.timestamp + 120
                            require ext_code.size(address(_1158))
                            call address(_1158).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1223 + (32 * _1257) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1443 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1451 = mem[_1443]
                            require mem[_1443] <= test266151307()
                            require _1443 + mem[_1443] + 31 < _1443 + return_data.size
                            _1459 = mem[_1443 + mem[_1443]]
                            if mem[_1443 + mem[_1443]] > test266151307():
                                revert with 'NH{q', 65
                            if _1443 + ceil32(return_data.size) + floor32(mem[_1443 + mem[_1443]]) + 1 > test266151307() or floor32(mem[_1443 + mem[_1443]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1443 + ceil32(return_data.size) + floor32(mem[_1443 + mem[_1443]]) + 1
                            mem[_1443 + ceil32(return_data.size)] = _1459
                            require _1451 + (32 * _1459) + 32 <= return_data.size
                            s = 0
                            t = _1443 + _1451 + 32
                            u = _1443 + ceil32(return_data.size) + 32
                            while s < _1459:
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
                        _1157 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1157))
                        staticcall address(_1157).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1209 = mem[_1198]
                        require mem[_1198] == mem[_1198]
                        if mem[_1198] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1239 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1209 - ext_call.return_data[0]
                        require ext_code.size(address(_1239))
                        call address(_1239).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1209 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1277 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1277] == bool(mem[_1277])
                        if _1209 - ext_call.return_data[0] < cd[164]:
                            revert with 0, 'Failed'
                        _1327 = mem[64]
                        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                        mem[mem[64] + ('cd', 196).length] = 4
                        stor[sha3(mem[mem[64] len _1327 + ('cd', 196).length + -mem[64] + 32])] = 1
                    else:
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _596 = mem[128]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                        require ext_code.size(address(_596))
                        call address(_596).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, cd[100] * sub_947646e0 / 10000
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _698 = mem[160]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                        require ext_code.size(address(_698))
                        staticcall address(_698).0x70a08231 with:
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
                            _1161 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1180 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_947646e0 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                                revert with 'NH{q', 17
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _1224 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1180 * cd[100] * sub_947646e0 / 10000 / 10000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1258 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < _1258:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1224 + 100] = this.address
                            mem[_1224 + 132] = block.timestamp + 120
                            require ext_code.size(address(_1161))
                            call address(_1161).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1224 + (32 * _1258) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1444 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1452 = mem[_1444]
                            require mem[_1444] <= test266151307()
                            require _1444 + mem[_1444] + 31 < _1444 + return_data.size
                            _1460 = mem[_1444 + mem[_1444]]
                            if mem[_1444 + mem[_1444]] > test266151307():
                                revert with 'NH{q', 65
                            if _1444 + ceil32(return_data.size) + floor32(mem[_1444 + mem[_1444]]) + 1 > test266151307() or floor32(mem[_1444 + mem[_1444]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1444 + ceil32(return_data.size) + floor32(mem[_1444 + mem[_1444]]) + 1
                            mem[_1444 + ceil32(return_data.size)] = _1460
                            require _1452 + (32 * _1460) + 32 <= return_data.size
                            s = 0
                            t = _1444 + _1452 + 32
                            u = _1444 + ceil32(return_data.size) + 32
                            while s < _1460:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if uint8(_1460) == 255:
                                revert with 'NH{q', 17
                            s = uint8(_1460) + 1
                            continue 
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1160 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1160))
                        staticcall address(_1160).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1210 = mem[_1199]
                        require mem[_1199] == mem[_1199]
                        if mem[_1199] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1240 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1210 - ext_call.return_data[0]
                        require ext_code.size(address(_1240))
                        call address(_1240).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1210 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1279 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1279] == bool(mem[_1279])
                        if _1210 - ext_call.return_data[0] < cd[164]:
                            revert with 0, 'Failed'
                        _1331 = mem[64]
                        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                        mem[mem[64] + ('cd', 196).length] = 4
                        stor[sha3(mem[mem[64] len _1331 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if uint8(cd[228]) != 3:
                        if cd[100] and sub_947646e0 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if not cd[100] * sub_947646e0 / 10000:
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _611 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_611))
                            staticcall address(_611).0x70a08231 with:
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
                                _1146 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1170 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_947646e0 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1219 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1170 * cd[100] * sub_947646e0 / 10000 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1253 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1253:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1219 + 100] = this.address
                                mem[_1219 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1146))
                                call address(_1146).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1219 + (32 * _1253) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1439 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1447 = mem[_1439]
                                require mem[_1439] <= test266151307()
                                require _1439 + mem[_1439] + 31 < _1439 + return_data.size
                                _1455 = mem[_1439 + mem[_1439]]
                                if mem[_1439 + mem[_1439]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1439 + ceil32(return_data.size) + floor32(mem[_1439 + mem[_1439]]) + 1 > test266151307() or floor32(mem[_1439 + mem[_1439]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1439 + ceil32(return_data.size) + floor32(mem[_1439 + mem[_1439]]) + 1
                                mem[_1439 + ceil32(return_data.size)] = _1455
                                require _1447 + (32 * _1455) + 32 <= return_data.size
                                s = 0
                                t = _1439 + _1447 + 32
                                u = _1439 + ceil32(return_data.size) + 32
                                while s < _1455:
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
                            _1145 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1145))
                            staticcall address(_1145).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1205 = mem[_1194]
                            require mem[_1194] == mem[_1194]
                            if mem[_1194] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1235 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1205 - ext_call.return_data[0]
                            require ext_code.size(address(_1235))
                            call address(_1235).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1205 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1269] == bool(mem[_1269])
                            if _1205 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1311 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1311 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _599 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                            require ext_code.size(address(_599))
                            call address(_599).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_947646e0 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _700 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_700))
                            staticcall address(_700).0x70a08231 with:
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
                                _1149 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1172 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_947646e0 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1220 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1172 * cd[100] * sub_947646e0 / 10000 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1254 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1254:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1220 + 100] = this.address
                                mem[_1220 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1149))
                                call address(_1149).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1220 + (32 * _1254) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1440 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1448 = mem[_1440]
                                require mem[_1440] <= test266151307()
                                require _1440 + mem[_1440] + 31 < _1440 + return_data.size
                                _1456 = mem[_1440 + mem[_1440]]
                                if mem[_1440 + mem[_1440]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1440 + ceil32(return_data.size) + floor32(mem[_1440 + mem[_1440]]) + 1 > test266151307() or floor32(mem[_1440 + mem[_1440]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1440 + ceil32(return_data.size) + floor32(mem[_1440 + mem[_1440]]) + 1
                                mem[_1440 + ceil32(return_data.size)] = _1456
                                require _1448 + (32 * _1456) + 32 <= return_data.size
                                s = 0
                                t = _1440 + _1448 + 32
                                u = _1440 + ceil32(return_data.size) + 32
                                while s < _1456:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if uint8(_1456) == 255:
                                    revert with 'NH{q', 17
                                s = uint8(_1456) + 1
                                continue 
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1148 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1148))
                            staticcall address(_1148).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1206 = mem[_1195]
                            require mem[_1195] == mem[_1195]
                            if mem[_1195] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1236 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1206 - ext_call.return_data[0]
                            require ext_code.size(address(_1236))
                            call address(_1236).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1206 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1271 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1271] == bool(mem[_1271])
                            if _1206 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1315 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1315 + ('cd', 196).length + -mem[64] + 32])] = 1
                    else:
                        if cd[100] and sub_c6357133 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if not cd[100] * sub_c6357133 / 10000:
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _612 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_612))
                            staticcall address(_612).0x70a08231 with:
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
                                _1152 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1174 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_c6357133 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1221 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1174 * cd[100] * sub_c6357133 / 10000 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1255 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1255:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1221 + 100] = this.address
                                mem[_1221 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1152))
                                call address(_1152).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1221 + (32 * _1255) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1441 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1449 = mem[_1441]
                                require mem[_1441] <= test266151307()
                                require _1441 + mem[_1441] + 31 < _1441 + return_data.size
                                _1457 = mem[_1441 + mem[_1441]]
                                if mem[_1441 + mem[_1441]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1441 + ceil32(return_data.size) + floor32(mem[_1441 + mem[_1441]]) + 1 > test266151307() or floor32(mem[_1441 + mem[_1441]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1441 + ceil32(return_data.size) + floor32(mem[_1441 + mem[_1441]]) + 1
                                mem[_1441 + ceil32(return_data.size)] = _1457
                                require _1449 + (32 * _1457) + 32 <= return_data.size
                                s = 0
                                t = _1441 + _1449 + 32
                                u = _1441 + ceil32(return_data.size) + 32
                                while s < _1457:
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
                            _1151 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1151))
                            staticcall address(_1151).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1196 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1207 = mem[_1196]
                            require mem[_1196] == mem[_1196]
                            if mem[_1196] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1237 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1207 - ext_call.return_data[0]
                            require ext_code.size(address(_1237))
                            call address(_1237).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1207 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1273 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1273] == bool(mem[_1273])
                            if _1207 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1319 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1319 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _600 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_c6357133 / 10000
                            require ext_code.size(address(_600))
                            call address(_600).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_c6357133 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _701 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_701))
                            staticcall address(_701).0x70a08231 with:
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
                                _1155 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1176 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] and cd[100] * sub_c6357133 / 10000 > -1 / mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1222 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1176 * cd[100] * sub_c6357133 / 10000 / 10000
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1256 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1256:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1222 + 100] = this.address
                                mem[_1222 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1155))
                                call address(_1155).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1222 + (32 * _1256) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1442 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1450 = mem[_1442]
                                require mem[_1442] <= test266151307()
                                require _1442 + mem[_1442] + 31 < _1442 + return_data.size
                                _1458 = mem[_1442 + mem[_1442]]
                                if mem[_1442 + mem[_1442]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1442 + ceil32(return_data.size) + floor32(mem[_1442 + mem[_1442]]) + 1 > test266151307() or floor32(mem[_1442 + mem[_1442]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1442 + ceil32(return_data.size) + floor32(mem[_1442 + mem[_1442]]) + 1
                                mem[_1442 + ceil32(return_data.size)] = _1458
                                require _1450 + (32 * _1458) + 32 <= return_data.size
                                s = 0
                                t = _1442 + _1450 + 32
                                u = _1442 + ceil32(return_data.size) + 32
                                while s < _1458:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if uint8(_1458) == 255:
                                    revert with 'NH{q', 17
                                s = uint8(_1458) + 1
                                continue 
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1154 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1154))
                            staticcall address(_1154).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1208 = mem[_1197]
                            require mem[_1197] == mem[_1197]
                            if mem[_1197] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1238 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1208 - ext_call.return_data[0]
                            require ext_code.size(address(_1238))
                            call address(_1238).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1208 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1275 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1275] == bool(mem[_1275])
                            if _1208 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1323 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1323 + ('cd', 196).length + -mem[64] + 32])] = 1
}



}
