contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6c03d528(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_15] == mem[_15 + 18 len 14]
        require mem[_15 + 32] == mem[_15 + 50 len 14]
        require mem[_15 + 64] == mem[_15 + 92 len 4]
        if mem[_15 + 18 len 14] and mem[_15 + 50 len 14] > -1 / mem[_15 + 18 len 14]:
            revert with 'NH{q', 17
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[100] + 36)] != mem[_15 + 18 len 14] * mem[_15 + 50 len 14]:
            revert with 0, 'FAIL:N'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _11 = mem[64]
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = ('cd', 36).length
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[mem[64] + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[mem[64] + 64] = (32 * ('cd', 36).length) + 128
    mem[mem[64] + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    s = mem[64] + (32 * ('cd', 36).length) + 192
    idx = 0
    t = cd[68] + 36
    while idx < ('cd', 68).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    mem[_11 + 96] = cd[4]
    _21 = mem[64]
    mem[mem[64]] = _11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + -mem[64] + 160
    mem[64] = _11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 196] = ('cd', 36)[0]
    mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 228] = ('cd', 36)[1]
    mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = this.address
    mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 292] = 128
    _23 = mem[_21]
    mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324] = mem[_21]
    mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 356 len ceil32(_23)] = mem[_21 + 32 len ceil32(_23)]
    if ceil32(_23) > _23:
        mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + _23 + 356] = 0
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args ('cd', 36)[0], ('cd', 36)[1], address(this.address), 128, mem[_11 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 324 len ceil32(_23) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[132]))
    call address(cd[132]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if arg2 != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            revert with 'NH{q', 50
        if arg2 > !arg3:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 134] = arg2 + arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 102], arg2 + arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 100)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}

function sub_6dca4cd4(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 96
    require ('cd', 100)[0] <= test266151307()
    require cd[100] + ('cd', 100)[0] + 67 < cd[100] + ('cd', 100).length + 36
    if cd[(cd[100] + ('cd', 100)[0] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97 < 96 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(cd[100] + ('cd', 100)[0] + 36)]
    require ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
    s = cd[100] + ('cd', 100)[0] + 68
    t = 128
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ('cd', 100)[1] <= test266151307()
    require cd[100] + ('cd', 100)[1] + 67 < cd[100] + ('cd', 100).length + 36
    if cd[(cd[100] + ('cd', 100)[1] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 98 < 97 or ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    require ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    idx = 0
    s = cd[100] + ('cd', 100)[1] + 68
    t = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129
    while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(msg.sender)
    if cd[36] != 0:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(cd[100] + ('cd', 100)[1] + 36)]:
            revert with 'NH{q', 50
        if cd[36] > !cd[68]:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 134] = cd[36] + cd[68]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 102], cd[36] + cd[68]
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
            if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97]:
                revert with 'NH{q', 50
            _240 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _248 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _252 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97] - 1:
                _256 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_256 + 36] = _248
                mem[_256 + 68] = _252
                mem[_256 + 100] = this.address
                mem[_256 + 132] = 128
                mem[_256 + 164] = mem[_256]
                s = 0
                while s < mem[_256]:
                    mem[s + _256 + 196] = mem[s + _256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_256]) > mem[_256]:
                    mem[_256 + mem[_256] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _248, _252, address(this.address), Array(len=mem[_256], data=mem[_256 + 196 len ceil32(mem[_256])])
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _263 = mem[(32 * idx + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]
                _266 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_266 + 36] = _248
                mem[_266 + 68] = _252
                mem[_266 + 100] = address(_263)
                mem[_266 + 132] = 128
                mem[_266 + 164] = mem[_266]
                s = 0
                while s < mem[_266]:
                    mem[s + _266 + 196] = mem[s + _266 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_266]) > mem[_266]:
                    mem[_266 + mem[_266] + 196] = 0
                require ext_code.size(address(_240))
                call address(_240).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_266]) + _266 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = ('cd', 100)[2]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ('cd', 100)[2]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == bool(mem[_242])
    else:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= cd[(cd[100] + ('cd', 100)[1] + 36)]:
            revert with 'NH{q', 50
        if cd[36] > !cd[68]:
            revert with 'NH{q', 17
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 102] = mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 173 len 20]
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 134] = cd[36] + cd[68]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 102], cd[36] + cd[68]
        mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + ceil32(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 1
        while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
            if idx >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97]:
                revert with 'NH{q', 50
            _241 = mem[(32 * idx) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * idx >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(64 * idx) + 128]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 1 > !(2 * idx):
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * (2 * idx) + 1) + 128]
            if mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if idx == mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97] - 1:
                _257 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_257 + 36] = _249
                mem[_257 + 68] = _254
                mem[_257 + 100] = this.address
                mem[_257 + 132] = 128
                mem[_257 + 164] = mem[_257]
                s = 0
                while s < mem[_257]:
                    mem[s + _257 + 196] = mem[s + _257 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_257]) > mem[_257]:
                    mem[_257 + mem[_257] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_257]) + _257 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 97]:
                    revert with 'NH{q', 50
                _265 = mem[(32 * idx + 1) + ceil32(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 129]
                _267 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_267 + 36] = _249
                mem[_267 + 68] = _254
                mem[_267 + 100] = address(_265)
                mem[_267 + 132] = 128
                mem[_267 + 164] = mem[_267]
                s = 0
                while s < mem[_267]:
                    mem[s + _267 + 196] = mem[s + _267 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_267]) > mem[_267]:
                    mem[_267 + mem[_267] + 196] = 0
                require ext_code.size(address(_241))
                call address(_241).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _249, _254, address(_265), Array(len=mem[_267], data=mem[_267 + 196 len ceil32(mem[_267])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = ('cd', 100)[2]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ('cd', 100)[2]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
}



}
