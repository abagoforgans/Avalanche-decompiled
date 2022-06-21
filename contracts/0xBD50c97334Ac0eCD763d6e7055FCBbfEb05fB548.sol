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

function wrap() payable {
    require ext_code.size(wethAddress)
    call wethAddress.deposit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimEth() payable {
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_fc87f44e(?) payable {
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

function unwrap() payable {
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(wethAddress)
    call wethAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Sender is not owner: Reject!'
    routerAddress = arg1
    staticcall arg1.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    wethAddress = ext_call.return_data[12 len 20]
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    factoryAddress = ext_call.return_data[12 len 20]
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

function sub_6db36777(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^16
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^16, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 2328306
    require mem[192 len 4], 2328306 <= test266151307()
    require mem[192 len 4], 2328306 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 2328306 + 192]
    if mem[mem[192 len 4], 2328306 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 2328306 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 2328306 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 2328306 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 2328306 + 192]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = _20 + 224
    s = ceil32(return_data.size) + 224
    while idx < _20 + (32 * _21) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64 len 32 * _21] = mem[ceil32(return_data.size) + 224 len 32 * _21]
    return Array(len=_21, data=mem[mem[64] + 64 len 32 * _21])
}

function sub_7852f486(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[196] = this.address
    mem[228] = routerAddress
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 1:
        mem[ceil32(return_data.size) + 196] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 10^16
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
               args 10^16, 64, 2, mem[(2 * ceil32(return_data.size)) + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _60 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _62 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]
        require _60 + (32 * _62) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _60 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _60 + (32 * _62) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if block.timestamp > -60001:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^16
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
        mem[mem[64] + 132] = block.timestamp + 60000
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 10^16, 0, 160, address(this.address), block.timestamp + 60000, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _282 = mem[_280]
        require mem[_280] == mem[_280]
        if mem[_280] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_288] == mem[_288]
        if mem[_288] >= 1:
            if _282 - ext_call.return_data[0] <= 0:
                revert with 0, 'No tokens received'
            _296 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_296]:
                revert with 'NH{q', 50
            mem[_296 + 32] = address(arg2)
            if 1 >= mem[_296]:
                revert with 'NH{q', 50
            mem[_296 + 64] = address(arg1)
            mem[_296 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_296 + 100] = _282 - ext_call.return_data[0]
            mem[_296 + 132] = 64
            mem[_296 + 164] = mem[_296]
            idx = 0
            s = _296 + 32
            t = _296 + 196
            while idx < mem[_296]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall routerAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _296 + (32 * mem[_296]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _410 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _414 = mem[_410]
            require mem[_410] <= test266151307()
            require _410 + mem[_410] + 31 < _410 + return_data.size
            _418 = mem[_410 + mem[_410]]
            if mem[_410 + mem[_410]] > test266151307():
                revert with 'NH{q', 65
            if _410 + ceil32(return_data.size) + floor32(mem[_410 + mem[_410]]) + 1 > test266151307() or floor32(mem[_410 + mem[_410]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _410 + ceil32(return_data.size) + floor32(mem[_410 + mem[_410]]) + 1
            mem[_410 + ceil32(return_data.size)] = _418
            require _414 + (32 * _418) + 32 <= return_data.size
            idx = _410 + _414 + 32
            s = _410 + ceil32(return_data.size) + 32
            while idx < _410 + _414 + (32 * _418) + 32:
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
            _542 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _546 = mem[_542]
            require mem[_542] == mem[_542]
            if block.timestamp > -60001:
                revert with 'NH{q', 17
            _550 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _282 - ext_call.return_data[0]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _554 = mem[_296]
            mem[mem[64] + 164] = mem[_296]
            idx = 0
            s = _296 + 32
            t = mem[64] + 196
            while idx < _554:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_550 + 100] = this.address
            mem[_550 + 132] = block.timestamp + 60000
            require ext_code.size(routerAddress)
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _550 + (32 * _554) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _650 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_650] == mem[_650]
            if mem[_650] < _546:
                revert with 'NH{q', 17
            if mem[_650] - _546 <= 0:
                revert with 0, 'No tokens received'
            if 0 >= mem[_410 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            mem[_410 + ceil32(return_data.size) + 32] = mem[_650] - _546
            if 1 >= mem[_410 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[_410 + ceil32(return_data.size) + 64] <= 0:
            if 0 >= mem[_410 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if 1 >= mem[_410 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if 1 >= mem[(4 * ceil32(return_data.size)) + 192]:
                revert with 'NH{q', 50
            revert with 0, 
                        mem[_410 + ceil32(return_data.size) + 32],
                        mem[_410 + ceil32(return_data.size) + 64],
                        _282 - ext_call.return_data[0],
                        mem[(4 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = stor4
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, stor4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _308 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_308] == bool(mem[_308])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _330 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_330] == mem[_330]
        if mem[_330] <= 1:
            revert with 0, '_tokenOut allowance <1'
        if _282 - ext_call.return_data[0] <= 0:
            revert with 0, 'No tokens received'
        _342 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_342]:
            revert with 'NH{q', 50
        mem[_342 + 32] = address(arg2)
        if 1 >= mem[_342]:
            revert with 'NH{q', 50
        mem[_342 + 64] = address(arg1)
        mem[_342 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_342 + 100] = _282 - ext_call.return_data[0]
        mem[_342 + 132] = 64
        mem[_342 + 164] = mem[_342]
        idx = 0
        s = _342 + 32
        t = _342 + 196
        while idx < mem[_342]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _342 + (32 * mem[_342]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _411 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _415 = mem[_411]
        require mem[_411] <= test266151307()
        require _411 + mem[_411] + 31 < _411 + return_data.size
        _419 = mem[_411 + mem[_411]]
        if mem[_411 + mem[_411]] > test266151307():
            revert with 'NH{q', 65
        if _411 + ceil32(return_data.size) + floor32(mem[_411 + mem[_411]]) + 1 > test266151307() or floor32(mem[_411 + mem[_411]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _411 + ceil32(return_data.size) + floor32(mem[_411 + mem[_411]]) + 1
        mem[_411 + ceil32(return_data.size)] = _419
        require _415 + (32 * _419) + 32 <= return_data.size
        idx = _411 + _415 + 32
        s = _411 + ceil32(return_data.size) + 32
        while idx < _411 + _415 + (32 * _419) + 32:
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
        _543 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _547 = mem[_543]
        require mem[_543] == mem[_543]
        if block.timestamp > -60001:
            revert with 'NH{q', 17
        _551 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _282 - ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _555 = mem[_342]
        mem[mem[64] + 164] = mem[_342]
        idx = 0
        s = _342 + 32
        t = mem[64] + 196
        while idx < _555:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_551 + 100] = this.address
        mem[_551 + 132] = block.timestamp + 60000
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _551 + (32 * _555) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _651 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_651] == mem[_651]
        if mem[_651] < _547:
            revert with 'NH{q', 17
        if mem[_651] - _547 <= 0:
            revert with 0, 'No tokens received'
        if 0 >= mem[_411 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        mem[_411 + ceil32(return_data.size) + 32] = mem[_651] - _547
        if 1 >= mem[_411 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[_411 + ceil32(return_data.size) + 64] <= 0:
        if 0 >= mem[_411 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[_411 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[(4 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        revert with 0, 
                    mem[_411 + ceil32(return_data.size) + 32],
                    mem[_411 + ceil32(return_data.size) + 64],
                    _282 - ext_call.return_data[0],
                    mem[(4 * ceil32(return_data.size)) + 256]
    mem[ceil32(return_data.size) + 196] = routerAddress
    mem[ceil32(return_data.size) + 228] = stor4
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = routerAddress
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 1:
        revert with 0, '_tokenIn allowance <1'
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = 10^16
    mem[(6 * ceil32(return_data.size)) + 228] = 64
    mem[(6 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (6 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^16, 64, 2, mem[(6 * ceil32(return_data.size)) + 292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _61 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
    _63 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192] > test266151307():
        revert with 'NH{q', 65
    if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]) + 193
    mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 2328306 + 192]
    require _61 + (32 * _63) + 32 <= return_data.size
    idx = (6 * ceil32(return_data.size)) + _61 + 224
    s = (7 * ceil32(return_data.size)) + 224
    while idx < (6 * ceil32(return_data.size)) + _61 + (32 * _63) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if block.timestamp > -60001:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 10^16
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
    mem[mem[64] + 132] = block.timestamp + 60000
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 10^16, 0, 160, address(this.address), block.timestamp + 60000, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _281 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _283 = mem[_281]
    require mem[_281] == mem[_281]
    if mem[_281] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _289 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_289] == mem[_289]
    if mem[_289] >= 1:
        if _283 - ext_call.return_data[0] <= 0:
            revert with 0, 'No tokens received'
        _297 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_297]:
            revert with 'NH{q', 50
        mem[_297 + 32] = address(arg2)
        if 1 >= mem[_297]:
            revert with 'NH{q', 50
        mem[_297 + 64] = address(arg1)
        mem[_297 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_297 + 100] = _283 - ext_call.return_data[0]
        mem[_297 + 132] = 64
        mem[_297 + 164] = mem[_297]
        idx = 0
        s = _297 + 32
        t = _297 + 196
        while idx < mem[_297]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routerAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _297 + (32 * mem[_297]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _412 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _416 = mem[_412]
        require mem[_412] <= test266151307()
        require _412 + mem[_412] + 31 < _412 + return_data.size
        _420 = mem[_412 + mem[_412]]
        if mem[_412 + mem[_412]] > test266151307():
            revert with 'NH{q', 65
        if _412 + ceil32(return_data.size) + floor32(mem[_412 + mem[_412]]) + 1 > test266151307() or floor32(mem[_412 + mem[_412]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _412 + ceil32(return_data.size) + floor32(mem[_412 + mem[_412]]) + 1
        mem[_412 + ceil32(return_data.size)] = _420
        require _416 + (32 * _420) + 32 <= return_data.size
        idx = _412 + _416 + 32
        s = _412 + ceil32(return_data.size) + 32
        while idx < _412 + _416 + (32 * _420) + 32:
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
        _544 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _548 = mem[_544]
        require mem[_544] == mem[_544]
        if block.timestamp > -60001:
            revert with 'NH{q', 17
        _552 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _283 - ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _556 = mem[_297]
        mem[mem[64] + 164] = mem[_297]
        idx = 0
        s = _297 + 32
        t = mem[64] + 196
        while idx < _556:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_552 + 100] = this.address
        mem[_552 + 132] = block.timestamp + 60000
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _552 + (32 * _556) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _652 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_652] == mem[_652]
        if mem[_652] < _548:
            revert with 'NH{q', 17
        if mem[_652] - _548 <= 0:
            revert with 0, 'No tokens received'
        if 0 >= mem[_412 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        mem[_412 + ceil32(return_data.size) + 32] = mem[_652] - _548
        if 1 >= mem[_412 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if mem[_412 + ceil32(return_data.size) + 64] <= 0:
        if 0 >= mem[_412 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[_412 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if 1 >= mem[(7 * ceil32(return_data.size)) + 192]:
            revert with 'NH{q', 50
        revert with 0, 
                    mem[_412 + ceil32(return_data.size) + 32],
                    mem[_412 + ceil32(return_data.size) + 64],
                    _283 - ext_call.return_data[0],
                    mem[(7 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = stor4
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, stor4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _309 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_309] == bool(mem[_309])
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _331 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_331] == mem[_331]
    if mem[_331] <= 1:
        revert with 0, '_tokenOut allowance <1'
    if _283 - ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens received'
    _343 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_343]:
        revert with 'NH{q', 50
    mem[_343 + 32] = address(arg2)
    if 1 >= mem[_343]:
        revert with 'NH{q', 50
    mem[_343 + 64] = address(arg1)
    mem[_343 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_343 + 100] = _283 - ext_call.return_data[0]
    mem[_343 + 132] = 64
    mem[_343 + 164] = mem[_343]
    idx = 0
    s = _343 + 32
    t = _343 + 196
    while idx < mem[_343]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _343 + (32 * mem[_343]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _413 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _417 = mem[_413]
    require mem[_413] <= test266151307()
    require _413 + mem[_413] + 31 < _413 + return_data.size
    _421 = mem[_413 + mem[_413]]
    if mem[_413 + mem[_413]] > test266151307():
        revert with 'NH{q', 65
    if _413 + ceil32(return_data.size) + floor32(mem[_413 + mem[_413]]) + 1 > test266151307() or floor32(mem[_413 + mem[_413]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _413 + ceil32(return_data.size) + floor32(mem[_413 + mem[_413]]) + 1
    mem[_413 + ceil32(return_data.size)] = _421
    require _417 + (32 * _421) + 32 <= return_data.size
    idx = _413 + _417 + 32
    s = _413 + ceil32(return_data.size) + 32
    while idx < _413 + _417 + (32 * _421) + 32:
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
    _545 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _549 = mem[_545]
    require mem[_545] == mem[_545]
    if block.timestamp > -60001:
        revert with 'NH{q', 17
    _553 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _283 - ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _557 = mem[_343]
    mem[mem[64] + 164] = mem[_343]
    idx = 0
    s = _343 + 32
    t = mem[64] + 196
    while idx < _557:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_553 + 100] = this.address
    mem[_553 + 132] = block.timestamp + 60000
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _553 + (32 * _557) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _653 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_653] == mem[_653]
    if mem[_653] < _549:
        revert with 'NH{q', 17
    if mem[_653] - _549 <= 0:
        revert with 0, 'No tokens received'
    if 0 >= mem[_413 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    mem[_413 + ceil32(return_data.size) + 32] = mem[_653] - _549
    if 1 >= mem[_413 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if mem[_413 + ceil32(return_data.size) + 64] <= 0:
    if 0 >= mem[_413 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[_413 + ceil32(return_data.size)]:
        revert with 'NH{q', 50
    if 1 >= mem[(7 * ceil32(return_data.size)) + 192]:
        revert with 'NH{q', 50
    revert with 0, 
                mem[_413 + ceil32(return_data.size) + 32],
                mem[_413 + ceil32(return_data.size) + 64],
                _283 - ext_call.return_data[0],
                mem[(7 * ceil32(return_data.size)) + 256]
}



}
