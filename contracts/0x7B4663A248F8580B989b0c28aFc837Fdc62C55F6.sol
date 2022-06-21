contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address routerAddress;
address factoryAddress;
address wethAddress;
uint256 stor4;

function getWeth() {
    return wethAddress
}

function getFactory() {
    return factoryAddress
}

function getOwner() {
    return owner
}

function getRouter() {
    return routerAddress
}

function _fallback() payable {
  stop
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    owner = arg1
    return owner
}

function sub_fc87f44e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2065615d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_339b8270(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function claimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f6a11b76(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 2
    mem[128] = wethAddress
    mem[160] = address(arg1)
    mem[196] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = msg.value
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _42 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _43 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    require _42 + (32 * _43) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _42 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _42 + (32 * _43) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 2
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = block.timestamp
    call routerAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[mem[64] + 164 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _148 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _149 = mem[_148]
    require mem[_148] <= test266151307()
    require _148 + mem[_148] + 31 < _148 + return_data.size
    _150 = mem[_148 + mem[_148]]
    if mem[_148 + mem[_148]] > test266151307():
        revert with 'NH{q', 65
    if _148 + ceil32(return_data.size) + floor32(mem[_148 + mem[_148]]) + 1 > test266151307() or floor32(mem[_148 + mem[_148]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _148 + ceil32(return_data.size) + floor32(mem[_148 + mem[_148]]) + 1
    mem[_148 + ceil32(return_data.size)] = _150
    require _149 + (32 * _150) + 32 <= return_data.size
    idx = _148 + _149 + 32
    s = _148 + ceil32(return_data.size) + 32
    while idx < _148 + _149 + (32 * _150) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _206 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _207 = mem[_206]
    require mem[_206] == mem[_206]
    if ext_call.return_data[0] > mem[_206]:
        revert with 'NH{q', 1
    if mem[_206] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _210 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_210] == mem[_210]
    if mem[_210] >= 1:
        _213 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_213]:
            revert with 'NH{q', 50
        mem[_213 + 32] = address(arg1)
        if 1 >= mem[_213]:
            revert with 'NH{q', 50
        mem[_213 + 64] = wethAddress
        mem[_213 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_213 + 100] = _207 - ext_call.return_data[0]
        mem[_213 + 132] = 64
        mem[_213 + 164] = mem[_213]
        idx = 0
        s = _213 + 32
        t = _213 + 196
        while idx < mem[_213]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _213 + (32 * mem[_213]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _273 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _275 = mem[_273]
        require mem[_273] <= test266151307()
        require _273 + mem[_273] + 31 < _273 + return_data.size
        _277 = mem[_273 + mem[_273]]
        if mem[_273 + mem[_273]] > test266151307():
            revert with 'NH{q', 65
        if _273 + ceil32(return_data.size) + floor32(mem[_273 + mem[_273]]) + 1 > test266151307() or floor32(mem[_273 + mem[_273]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _273 + ceil32(return_data.size) + floor32(mem[_273 + mem[_273]]) + 1
        mem[_273 + ceil32(return_data.size)] = _277
        require _275 + (32 * _277) + 32 <= return_data.size
        idx = _273 + _275 + 32
        s = _273 + ceil32(return_data.size) + 32
        while idx < _273 + _275 + (32 * _277) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = msg.sender
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _333 = mem[_331]
        require mem[_331] == mem[_331]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _207 - ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _337 = mem[_213]
        mem[mem[64] + 164] = mem[_213]
        idx = 0
        s = _213 + 32
        t = mem[64] + 196
        while idx < _337:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _207 - ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _337) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        _377 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_377] == mem[_377]
        if _333 > mem[_377]:
            revert with 'NH{q', 1
        if mem[_377] < _333:
            revert with 'NH{q', 17
        if 0 >= mem[_273 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        mem[_273 + ceil32(return_data.size) + 32] = mem[_377] - _333
        if _207 - ext_call.return_data[0] <= 1:
        if 0 >= mem[_273 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[_273 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        revert with 0, 
                    mem[_273 + ceil32(return_data.size) + 32],
                    mem[_273 + ceil32(return_data.size) + 64],
                    _207 - ext_call.return_data[0],
                    mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = stor4
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _219 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_219] == bool(mem[_219])
    _225 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_225]:
        revert with 'NH{q', 50
    mem[_225 + 32] = address(arg1)
    if 1 >= mem[_225]:
        revert with 'NH{q', 50
    mem[_225 + 64] = wethAddress
    mem[_225 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_225 + 100] = _207 - ext_call.return_data[0]
    mem[_225 + 132] = 64
    mem[_225 + 164] = mem[_225]
    idx = 0
    s = _225 + 32
    t = _225 + 196
    while idx < mem[_225]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _225 + (32 * mem[_225]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _274 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _276 = mem[_274]
    require mem[_274] <= test266151307()
    require _274 + mem[_274] + 31 < _274 + return_data.size
    _278 = mem[_274 + mem[_274]]
    if mem[_274 + mem[_274]] > test266151307():
        revert with 'NH{q', 65
    if _274 + ceil32(return_data.size) + floor32(mem[_274 + mem[_274]]) + 1 > test266151307() or floor32(mem[_274 + mem[_274]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _274 + ceil32(return_data.size) + floor32(mem[_274 + mem[_274]]) + 1
    mem[_274 + ceil32(return_data.size)] = _278
    require _276 + (32 * _278) + 32 <= return_data.size
    idx = _274 + _276 + 32
    s = _274 + ceil32(return_data.size) + 32
    while idx < _274 + _276 + (32 * _278) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _332 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _334 = mem[_332]
    require mem[_332] == mem[_332]
    _336 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _207 - ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _338 = mem[_225]
    mem[mem[64] + 164] = mem[_225]
    idx = 0
    s = _225 + 32
    t = mem[64] + 196
    while idx < _338:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_336 + 100] = msg.sender
    mem[_336 + 132] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _336 + (32 * _338) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    _378 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_378] == mem[_378]
    if _334 > mem[_378]:
        revert with 'NH{q', 1
    if mem[_378] < _334:
        revert with 'NH{q', 17
    if 0 >= mem[_274 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    mem[_274 + ceil32(return_data.size) + 32] = mem[_378] - _334
    if _207 - ext_call.return_data[0] <= 1:
    if 0 >= mem[_274 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[_274 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
        revert with 'NH{q', 50
    revert with 0, 
                mem[_274 + ceil32(return_data.size) + 32],
                mem[_274 + ceil32(return_data.size) + 64],
                _207 - ext_call.return_data[0],
                mem[(2 * ceil32(return_data.size)) + 256]
}

function sub_d6618bf3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[196] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = routerAddress
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 1:
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 10^12
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^12, 64, 2, mem[(2 * ceil32(return_data.size)) + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _56 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 232
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _58 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 232 + 192]
        require _56 + (32 * _58) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _56 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _56 + (32 * _58) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^12
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 10^12, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _268 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _270 = mem[_268]
        require mem[_268] == mem[_268]
        if ext_call.return_data[0] > mem[_268]:
            revert with 'NH{q', 1
        if mem[_268] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_276] == mem[_276]
        if mem[_276] >= 1:
            _282 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_282]:
                revert with 'NH{q', 50
            mem[_282 + 32] = address(arg2)
            if 1 >= mem[_282]:
                revert with 'NH{q', 50
            mem[_282 + 64] = address(arg1)
            mem[_282 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_282 + 100] = _270 - ext_call.return_data[0]
            mem[_282 + 132] = 64
            mem[_282 + 164] = mem[_282]
            idx = 0
            s = _282 + 32
            t = _282 + 196
            while idx < mem[_282]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall routerAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _282 + (32 * mem[_282]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _388 = mem[_384]
            require mem[_384] <= test266151307()
            require _384 + mem[_384] + 31 < _384 + return_data.size
            _392 = mem[_384 + mem[_384]]
            if mem[_384 + mem[_384]] > test266151307():
                revert with 'NH{q', 65
            if _384 + ceil32(return_data.size) + floor32(mem[_384 + mem[_384]]) + 1 > test266151307() or floor32(mem[_384 + mem[_384]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _384 + ceil32(return_data.size) + floor32(mem[_384 + mem[_384]]) + 1
            mem[_384 + ceil32(return_data.size)] = _392
            require _388 + (32 * _392) + 32 <= return_data.size
            idx = _384 + _388 + 32
            s = _384 + ceil32(return_data.size) + 32
            while idx < _384 + _388 + (32 * _392) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _500 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _504 = mem[_500]
            require mem[_500] == mem[_500]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _270 - ext_call.return_data[0]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _512 = mem[_282]
            mem[mem[64] + 164] = mem[_282]
            idx = 0
            s = _282 + 32
            t = mem[64] + 196
            while idx < _512:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _270 - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _512) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _592 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_592] == mem[_592]
            if _504 > mem[_592]:
                revert with 'NH{q', 1
            if mem[_592] < _504:
                revert with 'NH{q', 17
            if 0 >= mem[_384 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            mem[_384 + ceil32(return_data.size) + 32] = mem[_592] - _504
            if _270 - ext_call.return_data[0] <= 1:
            if 0 >= mem[_384 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if 1 >= mem[_384 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if 1 >= mem[(4 * ceil32(return_data.size)) + 192]:
                revert with 'NH{q', 50
            revert with 0, 
                        mem[_384 + ceil32(return_data.size) + 32],
                        mem[_384 + ceil32(return_data.size) + 64],
                        _270 - ext_call.return_data[0],
                        mem[(4 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = stor4
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, stor4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _293 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_293] == bool(mem[_293])
        _306 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_306]:
            revert with 'NH{q', 50
        mem[_306 + 32] = address(arg2)
        if 1 >= mem[_306]:
            revert with 'NH{q', 50
        mem[_306 + 64] = address(arg1)
        mem[_306 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_306 + 100] = _270 - ext_call.return_data[0]
        mem[_306 + 132] = 64
        mem[_306 + 164] = mem[_306]
        idx = 0
        s = _306 + 32
        t = _306 + 196
        while idx < mem[_306]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _306 + (32 * mem[_306]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _389 = mem[_385]
        require mem[_385] <= test266151307()
        require _385 + mem[_385] + 31 < _385 + return_data.size
        _393 = mem[_385 + mem[_385]]
        if mem[_385 + mem[_385]] > test266151307():
            revert with 'NH{q', 65
        if _385 + ceil32(return_data.size) + floor32(mem[_385 + mem[_385]]) + 1 > test266151307() or floor32(mem[_385 + mem[_385]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _385 + ceil32(return_data.size) + floor32(mem[_385 + mem[_385]]) + 1
        mem[_385 + ceil32(return_data.size)] = _393
        require _389 + (32 * _393) + 32 <= return_data.size
        idx = _385 + _389 + 32
        s = _385 + ceil32(return_data.size) + 32
        while idx < _385 + _389 + (32 * _393) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _501 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _505 = mem[_501]
        require mem[_501] == mem[_501]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _270 - ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _513 = mem[_306]
        mem[mem[64] + 164] = mem[_306]
        idx = 0
        s = _306 + 32
        t = mem[64] + 196
        while idx < _513:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _270 - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _513) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _593 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_593] == mem[_593]
        if _505 > mem[_593]:
            revert with 'NH{q', 1
        if mem[_593] < _505:
            revert with 'NH{q', 17
        if 0 >= mem[_385 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        mem[_385 + ceil32(return_data.size) + 32] = mem[_593] - _505
        if _270 - ext_call.return_data[0] <= 1:
        if 0 >= mem[_385 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[_385 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[(4 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        revert with 0, 
                    mem[_385 + ceil32(return_data.size) + 32],
                    mem[_385 + ceil32(return_data.size) + 64],
                    _270 - ext_call.return_data[0],
                    mem[(4 * ceil32(return_data.size)) + 256]
    mem[(2 * ceil32(return_data.size)) + 196] = routerAddress
    mem[(2 * ceil32(return_data.size)) + 228] = stor4
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = 10^12
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^12, 64, 2, mem[(4 * ceil32(return_data.size)) + 292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _57 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 232
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _59 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 232 + 192]
    require _57 + (32 * _59) + 32 <= return_data.size
    idx = (4 * ceil32(return_data.size)) + _57 + 224
    s = (6 * ceil32(return_data.size)) + 224
    while idx < (4 * ceil32(return_data.size)) + _57 + (32 * _59) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 10^12
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 10^12, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _269 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _271 = mem[_269]
    require mem[_269] == mem[_269]
    if ext_call.return_data[0] > mem[_269]:
        revert with 'NH{q', 1
    if mem[_269] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_277] == mem[_277]
    if mem[_277] >= 1:
        _283 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_283]:
            revert with 'NH{q', 50
        mem[_283 + 32] = address(arg2)
        if 1 >= mem[_283]:
            revert with 'NH{q', 50
        mem[_283 + 64] = address(arg1)
        mem[_283 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_283 + 100] = _271 - ext_call.return_data[0]
        mem[_283 + 132] = 64
        mem[_283 + 164] = mem[_283]
        idx = 0
        s = _283 + 32
        t = _283 + 196
        while idx < mem[_283]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _283 + (32 * mem[_283]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _386 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _390 = mem[_386]
        require mem[_386] <= test266151307()
        require _386 + mem[_386] + 31 < _386 + return_data.size
        _394 = mem[_386 + mem[_386]]
        if mem[_386 + mem[_386]] > test266151307():
            revert with 'NH{q', 65
        if _386 + ceil32(return_data.size) + floor32(mem[_386 + mem[_386]]) + 1 > test266151307() or floor32(mem[_386 + mem[_386]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _386 + ceil32(return_data.size) + floor32(mem[_386 + mem[_386]]) + 1
        mem[_386 + ceil32(return_data.size)] = _394
        require _390 + (32 * _394) + 32 <= return_data.size
        idx = _386 + _390 + 32
        s = _386 + ceil32(return_data.size) + 32
        while idx < _386 + _390 + (32 * _394) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _502 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _506 = mem[_502]
        require mem[_502] == mem[_502]
        _510 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _271 - ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _514 = mem[_283]
        mem[mem[64] + 164] = mem[_283]
        idx = 0
        s = _283 + 32
        t = mem[64] + 196
        while idx < _514:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_510 + 100] = this.address
        mem[_510 + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _510 + (32 * _514) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _594 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_594] == mem[_594]
        if _506 > mem[_594]:
            revert with 'NH{q', 1
        if mem[_594] < _506:
            revert with 'NH{q', 17
        if 0 >= mem[_386 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        mem[_386 + ceil32(return_data.size) + 32] = mem[_594] - _506
        if _271 - ext_call.return_data[0] <= 1:
        if 0 >= mem[_386 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[_386 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[(6 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        revert with 0, 
                    mem[_386 + ceil32(return_data.size) + 32],
                    mem[_386 + ceil32(return_data.size) + 64],
                    _271 - ext_call.return_data[0],
                    mem[(6 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = stor4
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _295 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_295] == bool(mem[_295])
    _307 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_307]:
        revert with 'NH{q', 50
    mem[_307 + 32] = address(arg2)
    if 1 >= mem[_307]:
        revert with 'NH{q', 50
    mem[_307 + 64] = address(arg1)
    mem[_307 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_307 + 100] = _271 - ext_call.return_data[0]
    mem[_307 + 132] = 64
    mem[_307 + 164] = mem[_307]
    idx = 0
    s = _307 + 32
    t = _307 + 196
    while idx < mem[_307]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _307 + (32 * mem[_307]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _387 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _391 = mem[_387]
    require mem[_387] <= test266151307()
    require _387 + mem[_387] + 31 < _387 + return_data.size
    _395 = mem[_387 + mem[_387]]
    if mem[_387 + mem[_387]] > test266151307():
        revert with 'NH{q', 65
    if _387 + ceil32(return_data.size) + floor32(mem[_387 + mem[_387]]) + 1 > test266151307() or floor32(mem[_387 + mem[_387]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _387 + ceil32(return_data.size) + floor32(mem[_387 + mem[_387]]) + 1
    mem[_387 + ceil32(return_data.size)] = _395
    require _391 + (32 * _395) + 32 <= return_data.size
    idx = _387 + _391 + 32
    s = _387 + ceil32(return_data.size) + 32
    while idx < _387 + _391 + (32 * _395) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _503 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _507 = mem[_503]
    require mem[_503] == mem[_503]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _271 - ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _515 = mem[_307]
    mem[mem[64] + 164] = mem[_307]
    idx = 0
    s = _307 + 32
    t = mem[64] + 196
    while idx < _515:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _271 - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _515) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _595 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_595] == mem[_595]
    if _507 > mem[_595]:
        revert with 'NH{q', 1
    if mem[_595] < _507:
        revert with 'NH{q', 17
    if 0 >= mem[_387 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    mem[_387 + ceil32(return_data.size) + 32] = mem[_595] - _507
    if _271 - ext_call.return_data[0] <= 1:
    if 0 >= mem[_387 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[_387 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[(6 * ceil32(return_data.size)) + 192]:
        revert with 'NH{q', 50
    revert with 0, 
                mem[_387 + ceil32(return_data.size) + 32],
                mem[_387 + ceil32(return_data.size) + 64],
                _271 - ext_call.return_data[0],
                mem[(6 * ceil32(return_data.size)) + 256]
}



}
