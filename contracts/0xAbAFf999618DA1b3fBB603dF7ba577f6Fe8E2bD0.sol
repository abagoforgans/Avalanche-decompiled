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
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99
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
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    _47 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    _49 = mem[floor32(('cd', 36).length) + 129]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = _49
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 263] = ('cd', 36).length
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 199] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 231] = block.timestamp + 120
    require ext_code.size(address(_47))
    call address(_47).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length) + -mem[64] + 291]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _62 = mem[_61]
    require mem[_61] <= test266151307()
    require _61 + mem[_61] + 31 < _61 + return_data.size
    _63 = mem[_61 + mem[_61]]
    if mem[_61 + mem[_61]] > test266151307():
        revert with 'NH{q', 65
    if _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1 > test266151307() or floor32(mem[_61 + mem[_61]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1
    mem[_61 + ceil32(return_data.size)] = _63
    require _62 + (32 * _63) + 32 <= return_data.size
    idx = 0
    s = _61 + _62 + 32
    t = _61 + ceil32(return_data.size) + 32
    while idx < _63:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
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
    _542 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_542))
    call address(_542).0x23b872dd with:
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
    if bool(stor3[mem[140 len 20]]) == 1:
        if cd[100] < 0:
            revert with 'NH{q', 17
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _555 = mem[160]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
        require ext_code.size(address(_555))
        staticcall address(_555).0x70a08231 with:
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
            _906 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _912 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _959 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _912
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _995 = mem[96]
            mem[mem[64] + 164] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 196
            while s < _995:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_959 + 100] = this.address
            mem[_959 + 132] = block.timestamp + 120
            require ext_code.size(address(_906))
            call address(_906).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _959 + (32 * _995) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1187 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1197 = mem[_1187]
            require mem[_1187] <= test266151307()
            require _1187 + mem[_1187] + 31 < _1187 + return_data.size
            _1199 = mem[_1187 + mem[_1187]]
            if mem[_1187 + mem[_1187]] > test266151307():
                revert with 'NH{q', 65
            if _1187 + ceil32(return_data.size) + floor32(mem[_1187 + mem[_1187]]) + 1 > test266151307() or floor32(mem[_1187 + mem[_1187]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1187 + ceil32(return_data.size) + floor32(mem[_1187 + mem[_1187]]) + 1
            mem[_1187 + ceil32(return_data.size)] = _1199
            require _1197 + (32 * _1199) + 32 <= return_data.size
            s = 0
            t = _1187 + _1197 + 32
            u = _1187 + ceil32(return_data.size) + 32
            while s < _1199:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if uint8(_1199) == 255:
                revert with 'NH{q', 17
            s = uint8(_1199) + 1
            continue 
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _905 = mem[160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_905))
        staticcall address(_905).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _968 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _981 = mem[_968]
        require mem[_968] == mem[_968]
        if mem[_968] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _1037 = mem[160]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _981 - ext_call.return_data[0]
        require ext_code.size(address(_1037))
        call address(_1037).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[4]), _981 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1065 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1065] == bool(mem[_1065])
        if _981 - ext_call.return_data[0] < cd[164]:
            revert with 0, 'Failed'
        _1075 = mem[64]
        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[mem[64] + ('cd', 196).length] = 4
        stor[sha3(mem[mem[64] len _1075 + ('cd', 196).length + -mem[64] + 32])] = 1
    else:
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[172 len 20]
        mem[32] = 3
        if bool(stor3[mem[172 len 20]]) == 1:
            if cd[100] < 0:
                revert with 'NH{q', 17
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _558 = mem[160]
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
            require ext_code.size(address(_558))
            staticcall address(_558).0x70a08231 with:
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
                _909 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                _915 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                _964 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _915
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1000 = mem[96]
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < _1000:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_964 + 100] = this.address
                mem[_964 + 132] = block.timestamp + 120
                require ext_code.size(address(_909))
                call address(_909).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _964 + (32 * _1000) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1188 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1198 = mem[_1188]
                require mem[_1188] <= test266151307()
                require _1188 + mem[_1188] + 31 < _1188 + return_data.size
                _1200 = mem[_1188 + mem[_1188]]
                if mem[_1188 + mem[_1188]] > test266151307():
                    revert with 'NH{q', 65
                if _1188 + ceil32(return_data.size) + floor32(mem[_1188 + mem[_1188]]) + 1 > test266151307() or floor32(mem[_1188 + mem[_1188]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1188 + ceil32(return_data.size) + floor32(mem[_1188 + mem[_1188]]) + 1
                mem[_1188 + ceil32(return_data.size)] = _1200
                require _1198 + (32 * _1200) + 32 <= return_data.size
                s = 0
                t = _1188 + _1198 + 32
                u = _1188 + ceil32(return_data.size) + 32
                while s < _1200:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if uint8(_1200) == 255:
                    revert with 'NH{q', 17
                s = uint8(_1200) + 1
                continue 
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _908 = mem[160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_908))
            staticcall address(_908).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _974 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _983 = mem[_974]
            require mem[_974] == mem[_974]
            if mem[_974] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _1050 = mem[160]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _983 - ext_call.return_data[0]
            require ext_code.size(address(_1050))
            call address(_1050).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _983 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1066 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1066] == bool(mem[_1066])
            if _983 - ext_call.return_data[0] < cd[164]:
                revert with 0, 'Failed'
            _1079 = mem[64]
            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
            mem[mem[64] + ('cd', 196).length] = 4
            stor[sha3(mem[mem[64] len _1079 + ('cd', 196).length + -mem[64] + 32])] = 1
        else:
            if uint8(cd[228]) == 1:
                if cd[100] and sub_b029d6e8 > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not cd[100] * sub_b029d6e8 / 10000:
                    if cd[100] < cd[100] * sub_b029d6e8 / 10000:
                        revert with 'NH{q', 17
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
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
                        _1140 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1158 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1174 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1158
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1207 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1207:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1174 + 100] = this.address
                        mem[_1174 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1140))
                        call address(_1140).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1174 + (32 * _1207) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1421 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1429 = mem[_1421]
                        require mem[_1421] <= test266151307()
                        require _1421 + mem[_1421] + 31 < _1421 + return_data.size
                        _1437 = mem[_1421 + mem[_1421]]
                        if mem[_1421 + mem[_1421]] > test266151307():
                            revert with 'NH{q', 65
                        if _1421 + ceil32(return_data.size) + floor32(mem[_1421 + mem[_1421]]) + 1 > test266151307() or floor32(mem[_1421 + mem[_1421]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1421 + ceil32(return_data.size) + floor32(mem[_1421 + mem[_1421]]) + 1
                        mem[_1421 + ceil32(return_data.size)] = _1437
                        require _1429 + (32 * _1437) + 32 <= return_data.size
                        s = 0
                        t = _1421 + _1429 + 32
                        u = _1421 + ceil32(return_data.size) + 32
                        while s < _1437:
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
                    _1139 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1139))
                    staticcall address(_1139).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1195 = mem[_1184]
                    require mem[_1184] == mem[_1184]
                    if mem[_1184] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1233 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1195 - ext_call.return_data[0]
                    require ext_code.size(address(_1233))
                    call address(_1233).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1195 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1283] == bool(mem[_1283])
                    if _1195 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1335 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 4
                    stor[sha3(mem[mem[64] len _1335 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _563 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_b029d6e8 / 10000
                    require ext_code.size(address(_563))
                    call address(_563).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, cd[100] * sub_b029d6e8 / 10000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if cd[100] < cd[100] * sub_b029d6e8 / 10000:
                        revert with 'NH{q', 17
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _673 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                    require ext_code.size(address(_673))
                    staticcall address(_673).0x70a08231 with:
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
                        _1143 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1160 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if block.timestamp > -121:
                            revert with 'NH{q', 17
                        _1176 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1160
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _1208 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 196
                        while s < _1208:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1176 + 100] = this.address
                        mem[_1176 + 132] = block.timestamp + 120
                        require ext_code.size(address(_1143))
                        call address(_1143).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1176 + (32 * _1208) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1422 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1430 = mem[_1422]
                        require mem[_1422] <= test266151307()
                        require _1422 + mem[_1422] + 31 < _1422 + return_data.size
                        _1438 = mem[_1422 + mem[_1422]]
                        if mem[_1422 + mem[_1422]] > test266151307():
                            revert with 'NH{q', 65
                        if _1422 + ceil32(return_data.size) + floor32(mem[_1422 + mem[_1422]]) + 1 > test266151307() or floor32(mem[_1422 + mem[_1422]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1422 + ceil32(return_data.size) + floor32(mem[_1422 + mem[_1422]]) + 1
                        mem[_1422 + ceil32(return_data.size)] = _1438
                        require _1430 + (32 * _1438) + 32 <= return_data.size
                        s = 0
                        t = _1422 + _1430 + 32
                        u = _1422 + ceil32(return_data.size) + 32
                        while s < _1438:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if uint8(_1438) == 255:
                            revert with 'NH{q', 17
                        s = uint8(_1438) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1142 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1142))
                    staticcall address(_1142).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1196 = mem[_1185]
                    require mem[_1185] == mem[_1185]
                    if mem[_1185] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1234 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _1196 - ext_call.return_data[0]
                    require ext_code.size(address(_1234))
                    call address(_1234).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _1196 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1284 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1284] == bool(mem[_1284])
                    if _1196 - ext_call.return_data[0] < cd[164]:
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
                        if cd[100] < cd[100] * sub_947646e0 / 10000:
                            revert with 'NH{q', 17
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
                            _1134 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1154 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _1170 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1154
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1205 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < _1205:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1170 + 100] = this.address
                            mem[_1170 + 132] = block.timestamp + 120
                            require ext_code.size(address(_1134))
                            call address(_1134).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1170 + (32 * _1205) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1419 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1427 = mem[_1419]
                            require mem[_1419] <= test266151307()
                            require _1419 + mem[_1419] + 31 < _1419 + return_data.size
                            _1435 = mem[_1419 + mem[_1419]]
                            if mem[_1419 + mem[_1419]] > test266151307():
                                revert with 'NH{q', 65
                            if _1419 + ceil32(return_data.size) + floor32(mem[_1419 + mem[_1419]]) + 1 > test266151307() or floor32(mem[_1419 + mem[_1419]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1419 + ceil32(return_data.size) + floor32(mem[_1419 + mem[_1419]]) + 1
                            mem[_1419 + ceil32(return_data.size)] = _1435
                            require _1427 + (32 * _1435) + 32 <= return_data.size
                            s = 0
                            t = _1419 + _1427 + 32
                            u = _1419 + ceil32(return_data.size) + 32
                            while s < _1435:
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
                        _1133 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1133))
                        staticcall address(_1133).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1182 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1193 = mem[_1182]
                        require mem[_1182] == mem[_1182]
                        if mem[_1182] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1231 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1193 - ext_call.return_data[0]
                        require ext_code.size(address(_1231))
                        call address(_1231).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1193 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1281 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1281] == bool(mem[_1281])
                        if _1193 - ext_call.return_data[0] < cd[164]:
                            revert with 0, 'Failed'
                        _1327 = mem[64]
                        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                        mem[mem[64] + ('cd', 196).length] = 4
                        stor[sha3(mem[mem[64] len _1327 + ('cd', 196).length + -mem[64] + 32])] = 1
                    else:
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _567 = mem[128]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                        require ext_code.size(address(_567))
                        call address(_567).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, cd[100] * sub_947646e0 / 10000
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if cd[100] < cd[100] * sub_947646e0 / 10000:
                            revert with 'NH{q', 17
                        if 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        _677 = mem[160]
                        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                        require ext_code.size(address(_677))
                        staticcall address(_677).0x70a08231 with:
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
                            _1137 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                revert with 'NH{q', 50
                            _1156 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _1172 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1156
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1206 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < _1206:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1172 + 100] = this.address
                            mem[_1172 + 132] = block.timestamp + 120
                            require ext_code.size(address(_1137))
                            call address(_1137).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1172 + (32 * _1206) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1420 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1428 = mem[_1420]
                            require mem[_1420] <= test266151307()
                            require _1420 + mem[_1420] + 31 < _1420 + return_data.size
                            _1436 = mem[_1420 + mem[_1420]]
                            if mem[_1420 + mem[_1420]] > test266151307():
                                revert with 'NH{q', 65
                            if _1420 + ceil32(return_data.size) + floor32(mem[_1420 + mem[_1420]]) + 1 > test266151307() or floor32(mem[_1420 + mem[_1420]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1420 + ceil32(return_data.size) + floor32(mem[_1420 + mem[_1420]]) + 1
                            mem[_1420 + ceil32(return_data.size)] = _1436
                            require _1428 + (32 * _1436) + 32 <= return_data.size
                            s = 0
                            t = _1420 + _1428 + 32
                            u = _1420 + ceil32(return_data.size) + 32
                            while s < _1436:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if uint8(_1436) == 255:
                                revert with 'NH{q', 17
                            s = uint8(_1436) + 1
                            continue 
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1136 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1136))
                        staticcall address(_1136).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1183 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1194 = mem[_1183]
                        require mem[_1183] == mem[_1183]
                        if mem[_1183] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1232 = mem[160]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = _1194 - ext_call.return_data[0]
                        require ext_code.size(address(_1232))
                        call address(_1232).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), _1194 - ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1282 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1282] == bool(mem[_1282])
                        if _1194 - ext_call.return_data[0] < cd[164]:
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
                            if cd[100] < cd[100] * sub_947646e0 / 10000:
                                revert with 'NH{q', 17
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _586 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_586))
                            staticcall address(_586).0x70a08231 with:
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
                                _1122 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1146 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1162 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1146
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1201 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1201:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1162 + 100] = this.address
                                mem[_1162 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1122))
                                call address(_1122).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1162 + (32 * _1201) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1415 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1423 = mem[_1415]
                                require mem[_1415] <= test266151307()
                                require _1415 + mem[_1415] + 31 < _1415 + return_data.size
                                _1431 = mem[_1415 + mem[_1415]]
                                if mem[_1415 + mem[_1415]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1415 + ceil32(return_data.size) + floor32(mem[_1415 + mem[_1415]]) + 1 > test266151307() or floor32(mem[_1415 + mem[_1415]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1415 + ceil32(return_data.size) + floor32(mem[_1415 + mem[_1415]]) + 1
                                mem[_1415 + ceil32(return_data.size)] = _1431
                                require _1423 + (32 * _1431) + 32 <= return_data.size
                                s = 0
                                t = _1415 + _1423 + 32
                                u = _1415 + ceil32(return_data.size) + 32
                                while s < _1431:
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
                            _1121 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1121))
                            staticcall address(_1121).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1178 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1189 = mem[_1178]
                            require mem[_1178] == mem[_1178]
                            if mem[_1178] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1227 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1189 - ext_call.return_data[0]
                            require ext_code.size(address(_1227))
                            call address(_1227).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1189 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1277] == bool(mem[_1277])
                            if _1189 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1311 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1311 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _570 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                            require ext_code.size(address(_570))
                            call address(_570).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_947646e0 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if cd[100] < cd[100] * sub_947646e0 / 10000:
                                revert with 'NH{q', 17
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _679 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_679))
                            staticcall address(_679).0x70a08231 with:
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
                                _1125 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1148 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1164 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1148
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1202 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1202:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1164 + 100] = this.address
                                mem[_1164 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1125))
                                call address(_1125).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1164 + (32 * _1202) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1416 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1424 = mem[_1416]
                                require mem[_1416] <= test266151307()
                                require _1416 + mem[_1416] + 31 < _1416 + return_data.size
                                _1432 = mem[_1416 + mem[_1416]]
                                if mem[_1416 + mem[_1416]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1416 + ceil32(return_data.size) + floor32(mem[_1416 + mem[_1416]]) + 1 > test266151307() or floor32(mem[_1416 + mem[_1416]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1416 + ceil32(return_data.size) + floor32(mem[_1416 + mem[_1416]]) + 1
                                mem[_1416 + ceil32(return_data.size)] = _1432
                                require _1424 + (32 * _1432) + 32 <= return_data.size
                                s = 0
                                t = _1416 + _1424 + 32
                                u = _1416 + ceil32(return_data.size) + 32
                                while s < _1432:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if uint8(_1432) == 255:
                                    revert with 'NH{q', 17
                                s = uint8(_1432) + 1
                                continue 
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1124 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1124))
                            staticcall address(_1124).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1179 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1190 = mem[_1179]
                            require mem[_1179] == mem[_1179]
                            if mem[_1179] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1228 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1190 - ext_call.return_data[0]
                            require ext_code.size(address(_1228))
                            call address(_1228).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1190 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1278 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1278] == bool(mem[_1278])
                            if _1190 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1315 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1315 + ('cd', 196).length + -mem[64] + 32])] = 1
                    else:
                        if cd[100] and sub_c6357133 > -1 / cd[100]:
                            revert with 'NH{q', 17
                        if not cd[100] * sub_c6357133 / 10000:
                            if cd[100] < cd[100] * sub_c6357133 / 10000:
                                revert with 'NH{q', 17
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _587 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                            require ext_code.size(address(_587))
                            staticcall address(_587).0x70a08231 with:
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
                                _1128 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1150 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1166 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1150
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1203 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1203:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1166 + 100] = this.address
                                mem[_1166 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1128))
                                call address(_1128).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1166 + (32 * _1203) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1417 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1425 = mem[_1417]
                                require mem[_1417] <= test266151307()
                                require _1417 + mem[_1417] + 31 < _1417 + return_data.size
                                _1433 = mem[_1417 + mem[_1417]]
                                if mem[_1417 + mem[_1417]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1417 + ceil32(return_data.size) + floor32(mem[_1417 + mem[_1417]]) + 1 > test266151307() or floor32(mem[_1417 + mem[_1417]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1417 + ceil32(return_data.size) + floor32(mem[_1417 + mem[_1417]]) + 1
                                mem[_1417 + ceil32(return_data.size)] = _1433
                                require _1425 + (32 * _1433) + 32 <= return_data.size
                                s = 0
                                t = _1417 + _1425 + 32
                                u = _1417 + ceil32(return_data.size) + 32
                                while s < _1433:
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
                            _1127 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1127))
                            staticcall address(_1127).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1180 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1191 = mem[_1180]
                            require mem[_1180] == mem[_1180]
                            if mem[_1180] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1229 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1191 - ext_call.return_data[0]
                            require ext_code.size(address(_1229))
                            call address(_1229).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1191 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1279 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1279] == bool(mem[_1279])
                            if _1191 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1319 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1319 + ('cd', 196).length + -mem[64] + 32])] = 1
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _571 = mem[128]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_c6357133 / 10000
                            require ext_code.size(address(_571))
                            call address(_571).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, cd[100] * sub_c6357133 / 10000
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if cd[100] < cd[100] * sub_c6357133 / 10000:
                                revert with 'NH{q', 17
                            if 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            _680 = mem[160]
                            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                            require ext_code.size(address(_680))
                            staticcall address(_680).0x70a08231 with:
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
                                _1131 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                                    revert with 'NH{q', 50
                                _1152 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                                if block.timestamp > -121:
                                    revert with 'NH{q', 17
                                _1168 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1152
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1204 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _1204:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1168 + 100] = this.address
                                mem[_1168 + 132] = block.timestamp + 120
                                require ext_code.size(address(_1131))
                                call address(_1131).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1168 + (32 * _1204) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1418 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1426 = mem[_1418]
                                require mem[_1418] <= test266151307()
                                require _1418 + mem[_1418] + 31 < _1418 + return_data.size
                                _1434 = mem[_1418 + mem[_1418]]
                                if mem[_1418 + mem[_1418]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1418 + ceil32(return_data.size) + floor32(mem[_1418 + mem[_1418]]) + 1 > test266151307() or floor32(mem[_1418 + mem[_1418]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1418 + ceil32(return_data.size) + floor32(mem[_1418 + mem[_1418]]) + 1
                                mem[_1418 + ceil32(return_data.size)] = _1434
                                require _1426 + (32 * _1434) + 32 <= return_data.size
                                s = 0
                                t = _1418 + _1426 + 32
                                u = _1418 + ceil32(return_data.size) + 32
                                while s < _1434:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if uint8(_1434) == 255:
                                    revert with 'NH{q', 17
                                s = uint8(_1434) + 1
                                continue 
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1130 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1130))
                            staticcall address(_1130).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1181 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1192 = mem[_1181]
                            require mem[_1181] == mem[_1181]
                            if mem[_1181] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1230 = mem[160]
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = _1192 - ext_call.return_data[0]
                            require ext_code.size(address(_1230))
                            call address(_1230).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), _1192 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1280] == bool(mem[_1280])
                            if _1192 - ext_call.return_data[0] < cd[164]:
                                revert with 0, 'Failed'
                            _1323 = mem[64]
                            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                            mem[mem[64] + ('cd', 196).length] = 4
                            stor[sha3(mem[mem[64] len _1323 + ('cd', 196).length + -mem[64] + 32])] = 1
}



}
