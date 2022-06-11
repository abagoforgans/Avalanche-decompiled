contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 != msg.value:
        revert with 0, 'Deposit failed!'
}

function sub_6220aea8(?) payable {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_15b021fd(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not address(arg3):
        call address(arg1) with:
           value arg4 wei
             gas gas_remaining wei
            args arg5[all]
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg3):
            call address(arg1) with:
               value arg4 wei
                 gas gas_remaining wei
                args arg5[all]
        else:
            staticcall address(arg3).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4:
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg1) with:
                 gas gas_remaining wei
                args arg5[all]
    if not ext_call.success:
        revert with 0, 'safeSwap Failed!'
}

function safeTradeAMMtoAMM(address[] arg1, address[] arg2, address[] arg3, uint256 arg4, bytes[] arg5, uint256[] arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require test266151307() >= arg2
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require test266151307() >= arg3
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require test266151307() >= arg5
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    require test266151307() >= arg6
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    if 0 >= arg3.length:
        revert with 0, 50
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    mem[100] = this.address
    staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    u = arg4
    while idx < arg1.length:
        if arg1.length < 1:
            revert with 0, 17
        if idx >= arg1.length - 1:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if idx >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            if idx >= arg5.length:
                revert with 0, 50
            require cd[(arg5 + (32 * idx) + 36)] < calldata.size + -arg5 - 67
            require cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]
            if not address(cd[((32 * idx) + arg3 + 36)]):
                _265 = mem[64]
                mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value u wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _265 + -mem[64] - 4]
                if return_data.size:
                    _271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_271] = return_data.size
                    mem[_271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + arg3 + 36)]):
                    _266 = mem[64]
                    mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                    mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                       value u wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _266 + -mem[64] - 4]
                    if return_data.size:
                        _273 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_273] = return_data.size
                        mem[_273 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                    staticcall address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _270 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_270] >= u:
                        _277 = mem[64]
                        mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                        mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _277 + -mem[64] - 4]
                        if return_data.size:
                            _288 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_288] = return_data.size
                            mem[_288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 36] = -1
                        call address(cd[((32 * idx) + arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + arg2 + 36)]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _284 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_284] == bool(mem[_284])
                        _292 = mem[64]
                        mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                        mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _292 + -mem[64] - 4]
                        if return_data.size:
                            _296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_296] = return_data.size
                            mem[_296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'safeSwap Failed!'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= arg3.length:
            revert with 0, 50
        require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
        if not address(cd[((32 * idx + 1) + arg3 + 36)]):
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if idx >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            if idx >= arg5.length:
                revert with 0, 50
            require cd[(arg5 + (32 * idx) + 36)] < calldata.size + -arg5 - 67
            require cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]
            if not address(cd[((32 * idx) + arg3 + 36)]):
                _297 = mem[64]
                mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value u wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _297 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeSwap Failed!'
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= arg3.length:
                        revert with 0, 50
                    require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                    if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_413] < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_413]
                    t = eth.balance(this.address)
                    u = mem[_413] - eth.balance(this.address)
                    continue 
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_311] = return_data.size
                mem[_311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_414] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_414]
                t = eth.balance(this.address)
                u = mem[_414] - eth.balance(this.address)
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + arg3 + 36)]):
                _300 = mem[64]
                mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value u wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _300 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeSwap Failed!'
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= arg3.length:
                        revert with 0, 50
                    require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                    if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_423] < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_423]
                    t = eth.balance(this.address)
                    u = mem[_423] - eth.balance(this.address)
                    continue 
                _315 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_315] = return_data.size
                mem[_315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_424] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_424]
                t = eth.balance(this.address)
                u = mem[_424] - eth.balance(this.address)
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            staticcall address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_307] >= u:
                _327 = mem[64]
                mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _327 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeSwap Failed!'
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= arg3.length:
                        revert with 0, 50
                    require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                    if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _457 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_457] < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_457]
                    t = eth.balance(this.address)
                    u = mem[_457] - eth.balance(this.address)
                    continue 
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_354] = return_data.size
                mem[_354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_458] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_458]
                t = eth.balance(this.address)
                u = mem[_458] - eth.balance(this.address)
                continue 
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = -1
            call address(cd[((32 * idx) + arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_336] == bool(mem[_336])
            _373 = mem[64]
            mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _373 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _483 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_483] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_483]
                t = eth.balance(this.address)
                u = mem[_483] - eth.balance(this.address)
                continue 
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_387] = return_data.size
            mem[_387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'safeSwap Failed!'
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
            if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = eth.balance(this.address)
                u = 0
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = eth.balance(this.address)
                u = 0
                continue 
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_484] < eth.balance(this.address):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_484]
            t = eth.balance(this.address)
            u = mem[_484] - eth.balance(this.address)
            continue 
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if idx >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            if idx >= arg5.length:
                revert with 0, 50
            require cd[(arg5 + (32 * idx) + 36)] < calldata.size + -arg5 - 67
            require cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]
            if not address(cd[((32 * idx) + arg3 + 36)]):
                _303 = mem[64]
                mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value u wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _303 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeSwap Failed!'
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= arg3.length:
                        revert with 0, 50
                    require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                    if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_425] < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_425]
                    t = eth.balance(this.address)
                    u = mem[_425] - eth.balance(this.address)
                    continue 
                _318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_318] = return_data.size
                mem[_318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_426] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_426]
                t = eth.balance(this.address)
                u = mem[_426] - eth.balance(this.address)
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + arg3 + 36)]):
                _308 = mem[64]
                mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value u wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _308 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeSwap Failed!'
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= arg3.length:
                        revert with 0, 50
                    require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                    if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_433] < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_433]
                    t = eth.balance(this.address)
                    u = mem[_433] - eth.balance(this.address)
                    continue 
                _323 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_323] = return_data.size
                mem[_323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_434] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_434]
                t = eth.balance(this.address)
                u = mem[_434] - eth.balance(this.address)
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            staticcall address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _314 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_314] >= u:
                _341 = mem[64]
                mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _341 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeSwap Failed!'
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= arg3.length:
                        revert with 0, 50
                    require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                    if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = eth.balance(this.address)
                        t = eth.balance(this.address)
                        u = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_467] < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_467]
                    t = eth.balance(this.address)
                    u = mem[_467] - eth.balance(this.address)
                    continue 
                _364 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_364] = return_data.size
                mem[_364 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_468] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_468]
                t = eth.balance(this.address)
                u = mem[_468] - eth.balance(this.address)
                continue 
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = -1
            call address(cd[((32 * idx) + arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_353] == bool(mem[_353])
            _383 = mem[64]
            mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _383 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = eth.balance(this.address)
                    u = 0
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_491] < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_491]
                t = eth.balance(this.address)
                u = mem[_491] - eth.balance(this.address)
                continue 
            _392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_392] = return_data.size
            mem[_392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'safeSwap Failed!'
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
            if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = eth.balance(this.address)
                u = 0
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = eth.balance(this.address)
                u = 0
                continue 
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _492 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_492] < eth.balance(this.address):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_492]
            t = eth.balance(this.address)
            u = mem[_492] - eth.balance(this.address)
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _264 = mem[_263]
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
        if idx >= arg5.length:
            revert with 0, 50
        require cd[(arg5 + (32 * idx) + 36)] < calldata.size + -arg5 - 67
        require cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]
        if not address(cd[((32 * idx) + arg3 + 36)]):
            _317 = mem[64]
            mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
               value u wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _317 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < _264:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = _264
                    u = eth.balance(this.address) - _264
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < _264:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = _264
                    u = eth.balance(this.address) - _264
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_443] < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_443]
                t = _264
                u = mem[_443] - _264
                continue 
            _337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_337] = return_data.size
            mem[_337 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'safeSwap Failed!'
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
            if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _444 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_444] < _264:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_444]
            t = _264
            u = mem[_444] - _264
            continue 
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + arg3 + 36)]):
            _320 = mem[64]
            mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
               value u wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _320 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < _264:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = _264
                    u = eth.balance(this.address) - _264
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < _264:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = _264
                    u = eth.balance(this.address) - _264
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_455] < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_455]
                t = _264
                u = mem[_455] - _264
                continue 
            _347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_347] = return_data.size
            mem[_347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'safeSwap Failed!'
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
            if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _456 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_456] < _264:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_456]
            t = _264
            u = mem[_456] - _264
            continue 
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        staticcall address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_331] >= u:
            _361 = mem[64]
            mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _361 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'safeSwap Failed!'
                if 1 > !idx:
                    revert with 0, 17
                if idx + 1 >= arg3.length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
                if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < _264:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = _264
                    u = eth.balance(this.address) - _264
                    continue 
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                    if eth.balance(this.address) < _264:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = eth.balance(this.address)
                    t = _264
                    u = eth.balance(this.address) - _264
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _477 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_477] < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_477]
                t = _264
                u = mem[_477] - _264
                continue 
            _379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_379] = return_data.size
            mem[_379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'safeSwap Failed!'
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
            if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_478] < _264:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_478]
            t = _264
            u = mem[_478] - _264
            continue 
        mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 36] = -1
        call address(cd[((32 * idx) + arg3 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg2 + 36)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_370] == bool(mem[_370])
        _391 = mem[64]
        mem[mem[64] len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] + _391 + -mem[64] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'safeSwap Failed!'
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
            if not address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
                if eth.balance(this.address) < _264:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address)
                t = _264
                u = eth.balance(this.address) - _264
                continue 
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_501] < _264:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_501]
            t = _264
            u = mem[_501] - _264
            continue 
        _400 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_400] = return_data.size
        mem[_400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'safeSwap Failed!'
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= arg3.length:
            revert with 0, 50
        require cd[((32 * idx + 1) + arg3 + 36)] == address(cd[((32 * idx + 1) + arg3 + 36)])
        if not address(cd[((32 * idx + 1) + arg3 + 36)]):
            if eth.balance(this.address) < _264:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = eth.balance(this.address)
            t = _264
            u = eth.balance(this.address) - _264
            continue 
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx + 1) + arg3 + 36)]):
            if eth.balance(this.address) < _264:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = eth.balance(this.address)
            t = _264
            u = eth.balance(this.address) - _264
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx + 1) + arg3 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _502 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_502] < _264:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_502]
        t = _264
        u = mem[_502] - _264
        continue 
    if 0 >= arg3.length:
        revert with 0, 50
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    mem[mem[64] + 4] = this.address
    staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _257 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_257] < ext_call.return_data[0]:
        revert with 0, 'Not enough!'
}



}
