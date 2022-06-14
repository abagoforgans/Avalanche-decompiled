contract main {




// =====================  Runtime code  =====================


#
#  - getLiquidationInfo(address arg1)
#  - _fallback()
#
address _owner;
address sub_c8cbf147Address;
address _wethAddress;
address _routerAddress;

function _weth() {
    return _wethAddress
}

function _owner() {
    return _owner
}

function sub_c8cbf147(?) {
    return sub_c8cbf147Address
}

function _router() {
    return _routerAddress
}

function liquidate(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    staticcall sub_c8cbf147Address.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 132] = -1
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), -1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approval error'
    mem[(2 * ceil32(return_data.size)) + 128] = arg2
    mem[(2 * ceil32(return_data.size)) + 160] = 1
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 644
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, 352, address(this.address), 416, 0, 1, mem[(2 * ceil32(return_data.size)) + 644], 1, arg4, 1, 0, 64, address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args _owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'only owner.'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_19] > 0:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24 = mem[_23]
            mem[mem[64] + 4] = _owner
            mem[mem[64] + 36] = _24
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args _owner, _24
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        call _owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if arg4 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'flashloan executeOperation failed'
    staticcall sub_c8cbf147Address.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg5.length >= 64
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if 0 >= arg2.length:
        revert with 0, 50
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 36)]), address(cd[(arg1 + 36)]), address(cd[(arg5 + 68)]), cd[(arg2 + 36)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(cd[(arg5 + 36)]) == address(cd[(arg1 + 36)]):
        if 0 >= arg3.length:
            revert with 0, 50
        if 0 >= arg2.length:
            revert with 0, 50
        if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
            revert with 0, 17
        if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), cd[(arg2 + 36)] + cd[(arg3 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if address(cd[(arg5 + 36)]) == _wethAddress:
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = address(cd[(arg5 + 36)])
            mem[ceil32(return_data.size) + 160] = address(cd[(arg1 + 36)])
            mem[ceil32(return_data.size) + 196] = _routerAddress
            mem[ceil32(return_data.size) + 228] = -1
            call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args _routerAddress, -1
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
            call _routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _111 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
            _114 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _114
            require _111 + (32 * _114) + 32 <= return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _114)] = mem[(4 * ceil32(return_data.size)) + _111 + 224 len ceil32(32 * _114)]
            if 0 >= arg3.length:
                revert with 0, 50
            if 0 >= arg2.length:
                revert with 0, 50
            if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
                revert with 0, 17
            if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = cd[(arg2 + 36)] + cd[(arg3 + 36)]
            call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), cd[(arg2 + 36)] + cd[(arg3 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_162] == bool(mem[_162])
        else:
            if _wethAddress == address(cd[(arg1 + 36)]):
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = address(cd[(arg5 + 36)])
                mem[ceil32(return_data.size) + 160] = address(cd[(arg1 + 36)])
                mem[ceil32(return_data.size) + 196] = _routerAddress
                mem[ceil32(return_data.size) + 228] = -1
                call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 228] = 0
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                call _routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _112 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                _115 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(6 * ceil32(return_data.size)) + 192] = _115
                require _112 + (32 * _115) + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _115)] = mem[(4 * ceil32(return_data.size)) + _112 + 224 len ceil32(32 * _115)]
                if 0 >= arg3.length:
                    revert with 0, 50
                if 0 >= arg2.length:
                    revert with 0, 50
                if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
                    revert with 0, 17
                if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 >= arg1.length:
                    revert with 0, 50
                require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = cd[(arg2 + 36)] + cd[(arg3 + 36)]
                call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), cd[(arg2 + 36)] + cd[(arg3 + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_163] == bool(mem[_163])
            else:
                mem[ceil32(return_data.size) + 96] = 3
                mem[ceil32(return_data.size) + 128] = address(cd[(arg5 + 36)])
                mem[ceil32(return_data.size) + 160] = _wethAddress
                mem[ceil32(return_data.size) + 192] = address(cd[(arg1 + 36)])
                mem[ceil32(return_data.size) + 228] = _routerAddress
                mem[ceil32(return_data.size) + 260] = -1
                call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292] = 160
                mem[(4 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (4 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
                call _routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _113 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                _116 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                require _113 + (32 * _116) + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _116)] = mem[(4 * ceil32(return_data.size)) + _113 + 256 len ceil32(32 * _116)]
                if 0 >= arg3.length:
                    revert with 0, 50
                if 0 >= arg2.length:
                    revert with 0, 50
                if cd[(arg2 + 36)] > !cd[(arg3 + 36)]:
                    revert with 0, 17
                if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 >= arg1.length:
                    revert with 0, 50
                require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = cd[(arg2 + 36)] + cd[(arg3 + 36)]
                call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), cd[(arg2 + 36)] + cd[(arg3 + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _164 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_164] == bool(mem[_164])
    return 1
}



}
