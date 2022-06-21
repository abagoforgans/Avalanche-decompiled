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

function sub_d6618bf3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[196] = msg.sender
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 10^12
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
           args 10^12, 64, 2, mem[ceil32(return_data.size) + 292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _36 = mem[ceil32(return_data.size) + 192 len 4], 232
    require mem[ceil32(return_data.size) + 192 len 4], 232 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 223 < ceil32(return_data.size) + return_data.size + 192
    _37 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]
    require _36 + (32 * _37) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _36 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _36 + (32 * _37) + 224:
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
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 10^12, 0, 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    _142 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _143 = mem[_142]
    require mem[_142] == mem[_142]
    if ext_call.return_data[0] > mem[_142]:
        revert with 'NH{q', 1
    if mem[_142] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _146 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_146] == mem[_146]
    if mem[_146] >= 1:
        _149 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_149]:
            revert with 'NH{q', 50
        mem[_149 + 32] = address(arg2)
        if 1 >= mem[_149]:
            revert with 'NH{q', 50
        mem[_149 + 64] = address(arg1)
        mem[_149 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_149 + 100] = _143 - ext_call.return_data[0]
        mem[_149 + 132] = 64
        mem[_149 + 164] = mem[_149]
        idx = 0
        s = _149 + 32
        t = _149 + 196
        while idx < mem[_149]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _149 + (32 * mem[_149]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _202 = mem[_200]
        require mem[_200] <= test266151307()
        require _200 + mem[_200] + 31 < _200 + return_data.size
        _204 = mem[_200 + mem[_200]]
        if mem[_200 + mem[_200]] > test266151307():
            revert with 'NH{q', 65
        if _200 + ceil32(return_data.size) + floor32(mem[_200 + mem[_200]]) + 1 > test266151307() or floor32(mem[_200 + mem[_200]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _200 + ceil32(return_data.size) + floor32(mem[_200 + mem[_200]]) + 1
        mem[_200 + ceil32(return_data.size)] = _204
        require _202 + (32 * _204) + 32 <= return_data.size
        idx = _200 + _202 + 32
        s = _200 + ceil32(return_data.size) + 32
        while idx < _200 + _202 + (32 * _204) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = msg.sender
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _260 = mem[_258]
        require mem[_258] == mem[_258]
        _262 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _143 - ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _264 = mem[_149]
        mem[mem[64] + 164] = mem[_149]
        idx = 0
        s = _149 + 32
        t = mem[64] + 196
        while idx < _264:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_262 + 100] = msg.sender
        mem[_262 + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _262 + (32 * _264) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        _304 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_304] == mem[_304]
        if _260 > mem[_304]:
            revert with 'NH{q', 1
        if mem[_304] < _260:
            revert with 'NH{q', 17
        if 0 >= mem[_200 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        mem[_200 + ceil32(return_data.size) + 32] = mem[_304] - _260
        if _143 - ext_call.return_data[0] <= 1:
        if 0 >= mem[_200 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[_200 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        revert with 0, 
                    mem[_200 + ceil32(return_data.size) + 32],
                    mem[_200 + ceil32(return_data.size) + 64],
                    _143 - ext_call.return_data[0],
                    mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = stor4
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _155 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_155] == bool(mem[_155])
    _161 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_161]:
        revert with 'NH{q', 50
    mem[_161 + 32] = address(arg2)
    if 1 >= mem[_161]:
        revert with 'NH{q', 50
    mem[_161 + 64] = address(arg1)
    mem[_161 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_161 + 100] = _143 - ext_call.return_data[0]
    mem[_161 + 132] = 64
    mem[_161 + 164] = mem[_161]
    idx = 0
    s = _161 + 32
    t = _161 + 196
    while idx < mem[_161]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _161 + (32 * mem[_161]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _201 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _203 = mem[_201]
    require mem[_201] <= test266151307()
    require _201 + mem[_201] + 31 < _201 + return_data.size
    _205 = mem[_201 + mem[_201]]
    if mem[_201 + mem[_201]] > test266151307():
        revert with 'NH{q', 65
    if _201 + ceil32(return_data.size) + floor32(mem[_201 + mem[_201]]) + 1 > test266151307() or floor32(mem[_201 + mem[_201]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _201 + ceil32(return_data.size) + floor32(mem[_201 + mem[_201]]) + 1
    mem[_201 + ceil32(return_data.size)] = _205
    require _203 + (32 * _205) + 32 <= return_data.size
    idx = _201 + _203 + 32
    s = _201 + ceil32(return_data.size) + 32
    while idx < _201 + _203 + (32 * _205) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _259 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _261 = mem[_259]
    require mem[_259] == mem[_259]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _143 - ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _265 = mem[_161]
    mem[mem[64] + 164] = mem[_161]
    idx = 0
    s = _161 + 32
    t = mem[64] + 196
    while idx < _265:
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
        args _143 - ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _265) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    _305 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_305] == mem[_305]
    if _261 > mem[_305]:
        revert with 'NH{q', 1
    if mem[_305] < _261:
        revert with 'NH{q', 17
    if 0 >= mem[_201 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    mem[_201 + ceil32(return_data.size) + 32] = mem[_305] - _261
    if _143 - ext_call.return_data[0] <= 1:
    if 0 >= mem[_201 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[_201 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
        revert with 'NH{q', 50
    revert with 0, 
                mem[_201 + ceil32(return_data.size) + 32],
                mem[_201 + ceil32(return_data.size) + 64],
                _143 - ext_call.return_data[0],
                mem[(2 * ceil32(return_data.size)) + 256]
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



}
