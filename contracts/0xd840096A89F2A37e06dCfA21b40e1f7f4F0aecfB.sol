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
    require ext_code.size(address(arg1))
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
    require ext_code.size(address(arg1))
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
    require ext_code.size(address(arg1))
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
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
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
    require ext_code.size(address(arg1))
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
    require ext_code.size(routerAddress)
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
    idx = 0
    s = ceil32(return_data.size) + _42 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _43:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
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
    require ext_code.size(routerAddress)
    call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[mem[64] + 164 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _147 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _148 = mem[_147]
    require mem[_147] <= test266151307()
    require _147 + mem[_147] + 31 < _147 + return_data.size
    _149 = mem[_147 + mem[_147]]
    if mem[_147 + mem[_147]] > test266151307():
        revert with 'NH{q', 65
    if _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1 > test266151307() or floor32(mem[_147 + mem[_147]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1
    mem[_147 + ceil32(return_data.size)] = _149
    require _148 + (32 * _149) + 32 <= return_data.size
    idx = 0
    s = _147 + _148 + 32
    t = _147 + ceil32(return_data.size) + 32
    while idx < _149:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _204 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_204]
    require mem[_204] == mem[_204]
    if ext_call.return_data[0] > mem[_204]:
        revert with 'NH{q', 1
    if mem[_204] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _208 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_208] == mem[_208]
    if mem[_208] >= 1:
        _211 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_211]:
            revert with 'NH{q', 50
        mem[_211 + 32] = address(arg1)
        if 1 >= mem[_211]:
            revert with 'NH{q', 50
        mem[_211 + 64] = wethAddress
        mem[_211 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_211 + 100] = _205 - ext_call.return_data[0]
        mem[_211 + 132] = 64
        mem[_211 + 164] = mem[_211]
        idx = 0
        s = _211 + 32
        t = _211 + 196
        while idx < mem[_211]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _211 + (32 * mem[_211]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _268 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _270 = mem[_268]
        require mem[_268] <= test266151307()
        require _268 + mem[_268] + 31 < _268 + return_data.size
        _272 = mem[_268 + mem[_268]]
        if mem[_268 + mem[_268]] > test266151307():
            revert with 'NH{q', 65
        if _268 + ceil32(return_data.size) + floor32(mem[_268 + mem[_268]]) + 1 > test266151307() or floor32(mem[_268 + mem[_268]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _268 + ceil32(return_data.size) + floor32(mem[_268 + mem[_268]]) + 1
        mem[_268 + ceil32(return_data.size)] = _272
        require _270 + (32 * _272) + 32 <= return_data.size
        idx = 0
        s = _268 + _270 + 32
        t = _268 + ceil32(return_data.size) + 32
        while idx < _272:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(wethAddress)
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _328 = mem[_326]
        require mem[_326] == mem[_326]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _205 - ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _332 = mem[_211]
        mem[mem[64] + 164] = mem[_211]
        idx = 0
        s = _211 + 32
        t = mem[64] + 196
        while idx < _332:
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
            args _205 - ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _332) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(wethAddress)
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_372] == mem[_372]
        if _328 > mem[_372]:
            revert with 'NH{q', 1
        if mem[_372] < _328:
            revert with 'NH{q', 17
        if 0 >= mem[_268 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        mem[_268 + ceil32(return_data.size) + 32] = mem[_372] - _328
        if _205 - ext_call.return_data[0] <= 1:
        if 0 >= mem[_268 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[_268 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        revert with 0, 
                    mem[_268 + ceil32(return_data.size) + 32],
                    mem[_268 + ceil32(return_data.size) + 64],
                    _205 - ext_call.return_data[0],
                    mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = stor4
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _217 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_217] == bool(mem[_217])
    _223 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_223]:
        revert with 'NH{q', 50
    mem[_223 + 32] = address(arg1)
    if 1 >= mem[_223]:
        revert with 'NH{q', 50
    mem[_223 + 64] = wethAddress
    mem[_223 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_223 + 100] = _205 - ext_call.return_data[0]
    mem[_223 + 132] = 64
    mem[_223 + 164] = mem[_223]
    idx = 0
    s = _223 + 32
    t = _223 + 196
    while idx < mem[_223]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _223 + (32 * mem[_223]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _269 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _271 = mem[_269]
    require mem[_269] <= test266151307()
    require _269 + mem[_269] + 31 < _269 + return_data.size
    _273 = mem[_269 + mem[_269]]
    if mem[_269 + mem[_269]] > test266151307():
        revert with 'NH{q', 65
    if _269 + ceil32(return_data.size) + floor32(mem[_269 + mem[_269]]) + 1 > test266151307() or floor32(mem[_269 + mem[_269]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _269 + ceil32(return_data.size) + floor32(mem[_269 + mem[_269]]) + 1
    mem[_269 + ceil32(return_data.size)] = _273
    require _271 + (32 * _273) + 32 <= return_data.size
    idx = 0
    s = _269 + _271 + 32
    t = _269 + ceil32(return_data.size) + 32
    while idx < _273:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _327 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _329 = mem[_327]
    require mem[_327] == mem[_327]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _205 - ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _333 = mem[_223]
    mem[mem[64] + 164] = mem[_223]
    idx = 0
    s = _223 + 32
    t = mem[64] + 196
    while idx < _333:
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
        args _205 - ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _333) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _373 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_373] == mem[_373]
    if _329 > mem[_373]:
        revert with 'NH{q', 1
    if mem[_373] < _329:
        revert with 'NH{q', 17
    if 0 >= mem[_269 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    mem[_269 + ceil32(return_data.size) + 32] = mem[_373] - _329
    if _205 - ext_call.return_data[0] <= 1:
    if 0 >= mem[_269 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[_269 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
        revert with 'NH{q', 50
    revert with 0, 
                mem[_269 + ceil32(return_data.size) + 32],
                mem[_269 + ceil32(return_data.size) + 64],
                _205 - ext_call.return_data[0],
                mem[(2 * ceil32(return_data.size)) + 256]
}



}
