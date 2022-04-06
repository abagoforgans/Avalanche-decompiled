contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sendToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Transaction failed'
}

function approveToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Approving failed'
}

function migrate(address[] arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        require mem[_15] == mem[_15]
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = _16
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _16
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == bool(mem[_19])
        if bool(mem[_19]) != 1:
            revert with 0, 'Transaction failed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _16
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
}

function swap(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'get off dude'
    if 0 >= arg4.length:
        revert with 'NH{q', 50
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    mem[100] = arg1
    mem[132] = arg2
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg2
    mem[ceil32(return_data.size) + 132] = arg3
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = arg4.length
    idx = 0
    s = arg4 + 36
    t = ceil32(return_data.size) + 292
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = block.timestamp
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=mem[ceil32(return_data.size) + 292 len 32 * arg4.length]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _30 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _31 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _31
    require _30 + (32 * _31) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _30 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _31:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _31:
        revert with 'NH{q', 50
    _67 = mem[(2 * ceil32(return_data.size)) + 160]
    if 1 >= arg4.length:
        revert with 'NH{q', 50
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _71 = mem[_70]
    require mem[_70] == mem[_70]
    if mem[_70] < _67:
        revert with 0, 'got burned after first swap fk'
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _71
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = arg5.length
    idx = 0
    s = arg5 + 36
    t = mem[64] + 100
    while idx < arg5.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _71, Array(len=arg5.length, data=mem[mem[64] + 100 len 32 * arg5.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    require mem[_107] <= test266151307()
    require _107 + mem[_107] + 31 < _107 + return_data.size
    _109 = mem[_107 + mem[_107]]
    if mem[_107 + mem[_107]] > test266151307():
        revert with 'NH{q', 65
    if _107 + ceil32(return_data.size) + floor32(mem[_107 + mem[_107]]) + 1 > test266151307() or floor32(mem[_107 + mem[_107]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _107 + ceil32(return_data.size) + floor32(mem[_107 + mem[_107]]) + 1
    mem[_107 + ceil32(return_data.size)] = _109
    require _108 + (32 * _109) + 32 <= return_data.size
    idx = 0
    s = _107 + _108 + 32
    t = _107 + ceil32(return_data.size) + 32
    while idx < _109:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _109:
        revert with 'NH{q', 50
    _149 = mem[_107 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = _71
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), _71
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _152 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_152] == bool(mem[_152])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _71
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = arg5.length
    idx = 0
    s = arg5 + 36
    t = mem[64] + 196
    while idx < arg5.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _71, 0, 160, address(this.address), block.timestamp, arg5.length, mem[mem[64] + 196 len 32 * arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _188 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _189 = mem[_188]
    require mem[_188] <= test266151307()
    require _188 + mem[_188] + 31 < _188 + return_data.size
    _190 = mem[_188 + mem[_188]]
    if mem[_188 + mem[_188]] > test266151307():
        revert with 'NH{q', 65
    if _188 + ceil32(return_data.size) + floor32(mem[_188 + mem[_188]]) + 1 > test266151307() or floor32(mem[_188 + mem[_188]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _188 + ceil32(return_data.size) + floor32(mem[_188 + mem[_188]]) + 1
    mem[_188 + ceil32(return_data.size)] = _190
    require _189 + (32 * _190) + 32 <= return_data.size
    idx = 0
    s = _188 + _189 + 32
    t = _188 + ceil32(return_data.size) + 32
    while idx < _190:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _190:
        revert with 'NH{q', 50
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _229 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_229] == mem[_229]
    if mem[_229] < _149:
        revert with 0, 'got burned after second swap fk'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _235 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _236 = mem[_235]
    require mem[_235] == mem[_235]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _236
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = arg4.length
    idx = 0
    s = arg4 + 36
    t = mem[64] + 100
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _236, Array(len=arg4.length, data=mem[mem[64] + 100 len 32 * arg4.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _269 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _270 = mem[_269]
    require mem[_269] <= test266151307()
    require _269 + mem[_269] + 31 < _269 + return_data.size
    _271 = mem[_269 + mem[_269]]
    if mem[_269 + mem[_269]] > test266151307():
        revert with 'NH{q', 65
    if _269 + ceil32(return_data.size) + floor32(mem[_269 + mem[_269]]) + 1 > test266151307() or floor32(mem[_269 + mem[_269]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _269 + ceil32(return_data.size) + floor32(mem[_269 + mem[_269]]) + 1
    mem[_269 + ceil32(return_data.size)] = _271
    require _270 + (32 * _271) + 32 <= return_data.size
    idx = 0
    s = _269 + _270 + 32
    t = _269 + ceil32(return_data.size) + 32
    while idx < _271:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _271:
        revert with 'NH{q', 50
    _311 = mem[_269 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = _236
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), _236
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _314 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_314] == bool(mem[_314])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _236
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = arg4.length
    idx = 0
    s = arg4 + 36
    t = mem[64] + 196
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _236, 0, 160, address(this.address), block.timestamp, arg4.length, mem[mem[64] + 196 len 32 * arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _348 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _349 = mem[_348]
    require mem[_348] <= test266151307()
    require _348 + mem[_348] + 31 < _348 + return_data.size
    _350 = mem[_348 + mem[_348]]
    if mem[_348 + mem[_348]] > test266151307():
        revert with 'NH{q', 65
    if _348 + ceil32(return_data.size) + floor32(mem[_348 + mem[_348]]) + 1 > test266151307() or floor32(mem[_348 + mem[_348]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _348 + ceil32(return_data.size) + floor32(mem[_348 + mem[_348]]) + 1
    mem[_348 + ceil32(return_data.size)] = _350
    require _349 + (32 * _350) + 32 <= return_data.size
    idx = 0
    s = _348 + _349 + 32
    t = _348 + ceil32(return_data.size) + 32
    while idx < _350:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _350:
        revert with 'NH{q', 50
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _382 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_382] == mem[_382]
    if mem[_382] < _311:
        revert with 0, 'got burned after third swap fk'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _388 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _389 = mem[_388]
    require mem[_388] == mem[_388]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _389
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _389
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _392 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_392] == bool(mem[_392])
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(address(cd[(arg4 + 68)]))
    staticcall address(cd[(arg4 + 68)]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _396 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_396] == mem[_396]
    if mem[_396] < _389:
        revert with 0, 'got burned after last transfer fk'
    return _71
}



}
