contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
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

function sub_c9c13eca(?) {
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

function getBalance(address arg1) {
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

function sub_b98c491a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
        return 1
    else:
        return 0
}

function sub_4e96a543(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_754c7d24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5f4a1b37(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg2) == address(arg3):
        mem[96] = 2
        mem[128] = address(arg2)
        mem[160] = address(arg4)
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg6
        mem[228] = 1
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = address(arg5)
        mem[324] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, 1, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _35 = mem[192 len 4], Mask(224, 32, arg6) >> 32
        require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
        _37 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
        require _35 + (32 * _37) + 32 <= return_data.size
        idx = 0
        s = _35 + 224
        t = ceil32(return_data.size) + 224
        while idx < _37:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[96] = 3
        mem[128] = address(arg2)
        mem[160] = address(arg3)
        mem[192] = address(arg4)
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = arg6
        mem[260] = 1
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = address(arg5)
        mem[356] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, 1, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _34 = mem[224 len 4], Mask(224, 32, arg6) >> 32
        require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
        _36 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
        require _34 + (32 * _36) + 32 <= return_data.size
        idx = 0
        s = _34 + 256
        t = ceil32(return_data.size) + 256
        while idx < _36:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function sub_cc99467c(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg2) == address(arg3):
        mem[96] = 2
        mem[128] = address(arg2)
        mem[160] = address(arg4)
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[196] = arg6
        mem[228] = arg7
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = address(arg5)
        mem[324] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, arg7, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _35 = mem[192 len 4], Mask(224, 32, arg6) >> 32
        require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
        _37 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
        require _35 + (32 * _37) + 32 <= return_data.size
        idx = 0
        s = _35 + 224
        t = ceil32(return_data.size) + 224
        while idx < _37:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[96] = 3
        mem[128] = address(arg2)
        mem[160] = address(arg3)
        mem[192] = address(arg4)
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[228] = arg6
        mem[260] = arg7
        mem[292] = 160
        mem[388] = 3
        idx = 0
        s = 128
        t = 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = address(arg5)
        mem[356] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, arg7, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _34 = mem[224 len 4], Mask(224, 32, arg6) >> 32
        require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
        _36 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
        require _34 + (32 * _36) + 32 <= return_data.size
        idx = 0
        s = _34 + 256
        t = ceil32(return_data.size) + 256
        while idx < _36:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function sub_0471ba89(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(cd[36]) == address(cd[68]):
        mem[floor32(('cd', 132).length) + 97] = 2
        mem[64] = floor32(('cd', 132).length) + 193
        mem[floor32(('cd', 132).length) + 129] = address(cd[36])
        mem[floor32(('cd', 132).length) + 161] = address(cd[100])
        if block.timestamp > -31:
            revert with 'NH{q', 17
        idx = 0
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _86 = mem[(32 * idx) + 128]
            _87 = mem[64]
            mem[mem[64] + 36] = cd[164]
            mem[mem[64] + 68] = cd[196]
            mem[mem[64] + 100] = 160
            _89 = mem[floor32(('cd', 132).length) + 97]
            mem[mem[64] + 196] = mem[floor32(('cd', 132).length) + 97]
            s = 0
            t = floor32(('cd', 132).length) + 129
            u = mem[64] + 228
            while s < _89:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_87 + 132] = address(_86)
            mem[_87 + 164] = block.timestamp + 30
            _115 = mem[64]
            mem[mem[64]] = _87 + (32 * _89) + -mem[64] + 196
            mem[64] = _87 + (32 * _89) + 228
            mem[_115 + 32] = mem[_115 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
            _119 = mem[_115]
            s = 0
            while s < _119:
                mem[_87 + (32 * _89) + s + 228] = mem[_115 + s + 32]
                s = s + 32
                continue 
            if ceil32(_119) > _119:
                mem[_87 + (32 * _89) + _119 + 228] = 0
            call address(cd[4]).mem[_87 + (32 * _89) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[_87 + (32 * _89) + 232 len _119 - 4]
            if return_data.size:
                mem[64] = _87 + (32 * _89) + ceil32(return_data.size) + 229
                mem[_87 + (32 * _89) + 228] = return_data.size
                mem[_87 + (32 * _89) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if gas_remaining < 100000:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[floor32(('cd', 132).length) + 97] = 3
        mem[64] = floor32(('cd', 132).length) + 225
        mem[floor32(('cd', 132).length) + 129] = address(cd[36])
        mem[floor32(('cd', 132).length) + 161] = address(cd[68])
        mem[floor32(('cd', 132).length) + 193] = address(cd[100])
        if block.timestamp > -31:
            revert with 'NH{q', 17
        idx = 0
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _84 = mem[(32 * idx) + 128]
            _85 = mem[64]
            mem[mem[64] + 36] = cd[164]
            mem[mem[64] + 68] = cd[196]
            mem[mem[64] + 100] = 160
            _88 = mem[floor32(('cd', 132).length) + 97]
            mem[mem[64] + 196] = mem[floor32(('cd', 132).length) + 97]
            s = 0
            t = floor32(('cd', 132).length) + 129
            u = mem[64] + 228
            while s < _88:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_85 + 132] = address(_84)
            mem[_85 + 164] = block.timestamp + 30
            _112 = mem[64]
            mem[mem[64]] = _85 + (32 * _88) + -mem[64] + 196
            mem[64] = _85 + (32 * _88) + 228
            mem[_112 + 32] = mem[_112 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
            _118 = mem[_112]
            s = 0
            while s < _118:
                mem[_85 + (32 * _88) + s + 228] = mem[_112 + s + 32]
                s = s + 32
                continue 
            if ceil32(_118) > _118:
                mem[_85 + (32 * _88) + _118 + 228] = 0
            call address(cd[4]).mem[_85 + (32 * _88) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[_85 + (32 * _88) + 232 len _118 - 4]
            if return_data.size:
                mem[64] = _85 + (32 * _88) + ceil32(return_data.size) + 229
                mem[_85 + (32 * _88) + 228] = return_data.size
                mem[_85 + (32 * _88) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if gas_remaining < 100000:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_6bb459d8(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(cd[36]) == address(cd[68]):
        mem[floor32(('cd', 132).length) + 97] = 2
        mem[64] = floor32(('cd', 132).length) + 193
        mem[floor32(('cd', 132).length) + 129] = address(cd[36])
        mem[floor32(('cd', 132).length) + 161] = address(cd[100])
        if block.timestamp > -31:
            revert with 'NH{q', 17
        idx = 0
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _74 = mem[(32 * idx) + 128]
            _75 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[164]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _77 = mem[floor32(('cd', 132).length) + 97]
            mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + 97]
            s = 0
            t = floor32(('cd', 132).length) + 129
            u = mem[64] + 196
            while s < _77:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_75 + 100] = address(_74)
            mem[_75 + 132] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _75 + (32 * _77) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_97]
            require mem[_97] <= test266151307()
            require _97 + mem[_97] + 31 < _97 + return_data.size
            _101 = mem[_97 + mem[_97]]
            if mem[_97 + mem[_97]] > test266151307():
                revert with 'NH{q', 65
            if _97 + ceil32(return_data.size) + floor32(mem[_97 + mem[_97]]) + 1 > test266151307() or floor32(mem[_97 + mem[_97]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _97 + ceil32(return_data.size) + floor32(mem[_97 + mem[_97]]) + 1
            mem[_97 + ceil32(return_data.size)] = _101
            require _99 + (32 * _101) + 32 <= return_data.size
            s = 0
            t = _97 + _99 + 32
            u = _97 + ceil32(return_data.size) + 32
            while s < _101:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if gas_remaining < 100000:
            if _101 == -1:
                revert with 'NH{q', 17
            s = _101 + 1
            continue 
    else:
        mem[floor32(('cd', 132).length) + 97] = 3
        mem[64] = floor32(('cd', 132).length) + 225
        mem[floor32(('cd', 132).length) + 129] = address(cd[36])
        mem[floor32(('cd', 132).length) + 161] = address(cd[68])
        mem[floor32(('cd', 132).length) + 193] = address(cd[100])
        if block.timestamp > -31:
            revert with 'NH{q', 17
        idx = 0
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _72 = mem[(32 * idx) + 128]
            _73 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[164]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _76 = mem[floor32(('cd', 132).length) + 97]
            mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + 97]
            s = 0
            t = floor32(('cd', 132).length) + 129
            u = mem[64] + 196
            while s < _76:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_73 + 100] = address(_72)
            mem[_73 + 132] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _73 + (32 * _76) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_96]
            require mem[_96] <= test266151307()
            require _96 + mem[_96] + 31 < _96 + return_data.size
            _100 = mem[_96 + mem[_96]]
            if mem[_96 + mem[_96]] > test266151307():
                revert with 'NH{q', 65
            if _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1 > test266151307() or floor32(mem[_96 + mem[_96]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1
            mem[_96 + ceil32(return_data.size)] = _100
            require _98 + (32 * _100) + 32 <= return_data.size
            s = 0
            t = _96 + _98 + 32
            u = _96 + ceil32(return_data.size) + 32
            while s < _100:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if gas_remaining < 100000:
            if _100 == -1:
                revert with 'NH{q', 17
            s = _100 + 1
            continue 
}



}
