contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;
address stor3;
uint256 stor4;
mapping of uint8 stor99;

function _fallback() payable {
  stop
}

function setMinBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor4 = arg1
}

function allow(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_860737cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function withdrawFTM(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
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
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1c3133cf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function sub_8dea6891(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (256 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 256
        _1155 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_1155] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_1155 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_1155 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_1155 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_1155 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_1155 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_1155 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_1155 + 224] = cd[(s + 224)]
        mem[t] = _1155
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == bool(cd[68])
    require cd[100] == bool(cd[100])
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1161 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1162 = mem[_1161]
    require mem[_1161] == mem[_1161]
    if cd[68]:
        require mem[96]
        mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1247] == bool(mem[_1247])
        _2392 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _2392:
            _2421 = mem[64]
            mem[64] = mem[64] + 256
            mem[_2421] = 0
            mem[_2421 + 32] = 0
            mem[_2421 + 64] = 0
            mem[_2421 + 96] = 0
            mem[_2421 + 128] = 0
            mem[_2421 + 160] = 0
            mem[_2421 + 192] = 0
            mem[_2421 + 224] = 0
            require idx < mem[96]
            _2456 = mem[(32 * idx) + 128]
            if not mem[mem[(32 * idx) + 128] + 192]:
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2587 = mem[_2513]
                require mem[_2513] == mem[_2513 + 18 len 14]
                _2639 = mem[_2513 + 32]
                require mem[_2513 + 32] == mem[_2513 + 50 len 14]
                require mem[_2513 + 64] == mem[_2513 + 92 len 4]
                _2735 = mem[_2456 + 128]
                _2736 = mem[_2456 + 160]
                if mem[_2456 + 140 len 20] == mem[_2456 + 172 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[_2456 + 140 len 20] < mem[_2456 + 172 len 20]:
                    if not mem[_2456 + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if mem[_2456 + 140 len 20] == mem[_2456 + 140 len 20]:
                        _2889 = mem[_2456]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _2587)
                        mem[mem[64] + 68] = Mask(112, 0, _2639)
                        require ext_code.size(address(_2889))
                        staticcall address(_2889).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args s, _2587 << 144, Mask(112, 0, _2639)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3060 = mem[_3020]
                        require mem[_3020] == mem[_3020]
                        if mem[_2456 + 140 len 20] == address(_2735):
                            if idx == mem[96] - 1:
                                _3244 = mem[_2456 + 32]
                                _3245 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3245 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3245 + 36] = 0
                                mem[_3245 + 68] = _3060
                                mem[_3245 + 100] = this.address
                                mem[_3245 + 132] = 128
                                mem[_3245 + 164] = mem[_3245]
                                s = 0
                                while s < mem[_3245]:
                                    mem[s + _3245 + 196] = mem[s + _3245 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3245]) > mem[_3245]:
                                    mem[mem[_3245] + _3245 + 196] = 0
                                require ext_code.size(address(_3244))
                                call address(_3244).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3060, address(this.address), 128, mem[_3245], mem[_3245 + 196 len ceil32(mem[_3245])]
                            else:
                                require idx + 1 < mem[96]
                                if mem[mem[(32 * idx + 1) + 128] + 192]:
                                    _3296 = mem[_2456 + 32]
                                    _3297 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3297 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3297 + 36] = 0
                                    mem[_3297 + 68] = _3060
                                    mem[_3297 + 100] = this.address
                                    mem[_3297 + 132] = 128
                                    mem[_3297 + 164] = mem[_3297]
                                    s = 0
                                    while s < mem[_3297]:
                                        mem[s + _3297 + 196] = mem[s + _3297 + 32]
                                        _2392 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_3297]) > mem[_3297]:
                                        mem[mem[_3297] + _3297 + 196] = 0
                                    require ext_code.size(address(_3296))
                                    call address(_3296).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3060, address(this.address), 128, mem[_3297], mem[_3297 + 196 len ceil32(mem[_3297])]
                                else:
                                    require idx + 1 < mem[96]
                                    _3299 = mem[mem[(32 * idx + 1) + 128] + 32]
                                    _3329 = mem[_2456 + 32]
                                    _3330 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3330 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3330 + 36] = 0
                                    mem[_3330 + 68] = _3060
                                    mem[_3330 + 100] = address(_3299)
                                    mem[_3330 + 132] = 128
                                    mem[_3330 + 164] = mem[_3330]
                                    s = 0
                                    while s < mem[_3330]:
                                        mem[s + _3330 + 196] = mem[s + _3330 + 32]
                                        _2392 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_3330]) > mem[_3330]:
                                        mem[mem[_3330] + _3330 + 196] = 0
                                    require ext_code.size(address(_3329))
                                    call address(_3329).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3060, address(_3299), 128, mem[_3330], mem[_3330 + 196 len ceil32(mem[_3330])]
                        else:
                            if idx == mem[96] - 1:
                                _3246 = mem[_2456 + 32]
                                _3247 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3247 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3247 + 36] = _3060
                                mem[_3247 + 68] = 0
                                mem[_3247 + 100] = this.address
                                mem[_3247 + 132] = 128
                                mem[_3247 + 164] = mem[_3247]
                                s = 0
                                while s < mem[_3247]:
                                    mem[s + _3247 + 196] = mem[s + _3247 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3247]) > mem[_3247]:
                                    mem[mem[_3247] + _3247 + 196] = 0
                                require ext_code.size(address(_3246))
                                call address(_3246).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3060, 0, address(this.address), 128, mem[_3247], mem[_3247 + 196 len ceil32(mem[_3247])]
                            else:
                                require idx + 1 < mem[96]
                                if mem[mem[(32 * idx + 1) + 128] + 192]:
                                    _3300 = mem[_2456 + 32]
                                    _3301 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3301 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3301 + 36] = _3060
                                    mem[_3301 + 68] = 0
                                    mem[_3301 + 100] = this.address
                                    mem[_3301 + 132] = 128
                                    mem[_3301 + 164] = mem[_3301]
                                    s = 0
                                    while s < mem[_3301]:
                                        mem[s + _3301 + 196] = mem[s + _3301 + 32]
                                        _2392 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_3301]) > mem[_3301]:
                                        mem[mem[_3301] + _3301 + 196] = 0
                                    require ext_code.size(address(_3300))
                                    call address(_3300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3060, 0, address(this.address), 128, mem[_3301], mem[_3301 + 196 len ceil32(mem[_3301])]
                                else:
                                    require idx + 1 < mem[96]
                                    _3303 = mem[mem[(32 * idx + 1) + 128] + 32]
                                    _3332 = mem[_2456 + 32]
                                    _3333 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3333 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3333 + 36] = _3060
                                    mem[_3333 + 68] = 0
                                    mem[_3333 + 100] = address(_3303)
                                    mem[_3333 + 132] = 128
                                    mem[_3333 + 164] = mem[_3333]
                                    s = 0
                                    while s < mem[_3333]:
                                        mem[s + _3333 + 196] = mem[s + _3333 + 32]
                                        _2392 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_3333]) > mem[_3333]:
                                        mem[mem[_3333] + _3333 + 196] = 0
                                    require ext_code.size(address(_3332))
                                    call address(_3332).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _3060, 0, address(_3303), 128, mem[_3333], mem[_3333 + 196 len ceil32(mem[_3333])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2392 = mem[96]
                        idx = idx + 1
                        s = _3060
                        continue 
                    _2891 = mem[_2456]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _2639)
                    mem[mem[64] + 68] = Mask(112, 0, _2587)
                    require ext_code.size(address(_2891))
                    staticcall address(_2891).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _2639 << 144, Mask(112, 0, _2587)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3021 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3061 = mem[_3021]
                    require mem[_3021] == mem[_3021]
                    if mem[_2456 + 140 len 20] == address(_2735):
                        if idx == mem[96] - 1:
                            _3248 = mem[_2456 + 32]
                            _3249 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3249 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3249 + 36] = 0
                            mem[_3249 + 68] = _3061
                            mem[_3249 + 100] = this.address
                            mem[_3249 + 132] = 128
                            mem[_3249 + 164] = mem[_3249]
                            s = 0
                            while s < mem[_3249]:
                                mem[s + _3249 + 196] = mem[s + _3249 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3249]) > mem[_3249]:
                                mem[mem[_3249] + _3249 + 196] = 0
                            require ext_code.size(address(_3248))
                            call address(_3248).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3061, address(this.address), 128, mem[_3249], mem[_3249 + 196 len ceil32(mem[_3249])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _3304 = mem[_2456 + 32]
                                _3305 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3305 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3305 + 36] = 0
                                mem[_3305 + 68] = _3061
                                mem[_3305 + 100] = this.address
                                mem[_3305 + 132] = 128
                                mem[_3305 + 164] = mem[_3305]
                                s = 0
                                while s < mem[_3305]:
                                    mem[s + _3305 + 196] = mem[s + _3305 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3305]) > mem[_3305]:
                                    mem[mem[_3305] + _3305 + 196] = 0
                                require ext_code.size(address(_3304))
                                call address(_3304).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3061, address(this.address), 128, mem[_3305], mem[_3305 + 196 len ceil32(mem[_3305])]
                            else:
                                require idx + 1 < mem[96]
                                _3307 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _3335 = mem[_2456 + 32]
                                _3336 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3336 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3336 + 36] = 0
                                mem[_3336 + 68] = _3061
                                mem[_3336 + 100] = address(_3307)
                                mem[_3336 + 132] = 128
                                mem[_3336 + 164] = mem[_3336]
                                s = 0
                                while s < mem[_3336]:
                                    mem[s + _3336 + 196] = mem[s + _3336 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3336]) > mem[_3336]:
                                    mem[mem[_3336] + _3336 + 196] = 0
                                require ext_code.size(address(_3335))
                                call address(_3335).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3061, address(_3307), 128, mem[_3336], mem[_3336 + 196 len ceil32(mem[_3336])]
                    else:
                        if idx == mem[96] - 1:
                            _3250 = mem[_2456 + 32]
                            _3251 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3251 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3251 + 36] = _3061
                            mem[_3251 + 68] = 0
                            mem[_3251 + 100] = this.address
                            mem[_3251 + 132] = 128
                            mem[_3251 + 164] = mem[_3251]
                            s = 0
                            while s < mem[_3251]:
                                mem[s + _3251 + 196] = mem[s + _3251 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3251]) > mem[_3251]:
                                mem[mem[_3251] + _3251 + 196] = 0
                            require ext_code.size(address(_3250))
                            call address(_3250).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3061, 0, address(this.address), 128, mem[_3251], mem[_3251 + 196 len ceil32(mem[_3251])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _3308 = mem[_2456 + 32]
                                _3309 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3309 + 36] = _3061
                                mem[_3309 + 68] = 0
                                mem[_3309 + 100] = this.address
                                mem[_3309 + 132] = 128
                                mem[_3309 + 164] = mem[_3309]
                                s = 0
                                while s < mem[_3309]:
                                    mem[s + _3309 + 196] = mem[s + _3309 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3309]) > mem[_3309]:
                                    mem[mem[_3309] + _3309 + 196] = 0
                                require ext_code.size(address(_3308))
                                call address(_3308).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3061, 0, address(this.address), 128, mem[_3309], mem[_3309 + 196 len ceil32(mem[_3309])]
                            else:
                                require idx + 1 < mem[96]
                                _3311 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _3338 = mem[_2456 + 32]
                                _3339 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3339 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3339 + 36] = _3061
                                mem[_3339 + 68] = 0
                                mem[_3339 + 100] = address(_3311)
                                mem[_3339 + 132] = 128
                                mem[_3339 + 164] = mem[_3339]
                                s = 0
                                while s < mem[_3339]:
                                    mem[s + _3339 + 196] = mem[s + _3339 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3339]) > mem[_3339]:
                                    mem[mem[_3339] + _3339 + 196] = 0
                                require ext_code.size(address(_3338))
                                call address(_3338).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3061, 0, address(_3311), 128, mem[_3339], mem[_3339 + 196 len ceil32(mem[_3339])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2392 = mem[96]
                    idx = idx + 1
                    s = _3061
                    continue 
                if not mem[_2456 + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[_2456 + 140 len 20] == mem[_2456 + 172 len 20]:
                    _2893 = mem[_2456]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _2587)
                    mem[mem[64] + 68] = Mask(112, 0, _2639)
                    require ext_code.size(address(_2893))
                    staticcall address(_2893).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _2587 << 144, Mask(112, 0, _2639)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3062 = mem[_3022]
                    require mem[_3022] == mem[_3022]
                    if mem[_2456 + 140 len 20] == address(_2736):
                        if idx == mem[96] - 1:
                            _3252 = mem[_2456 + 32]
                            _3253 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3253 + 36] = 0
                            mem[_3253 + 68] = _3062
                            mem[_3253 + 100] = this.address
                            mem[_3253 + 132] = 128
                            mem[_3253 + 164] = mem[_3253]
                            s = 0
                            while s < mem[_3253]:
                                mem[s + _3253 + 196] = mem[s + _3253 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3253]) > mem[_3253]:
                                mem[mem[_3253] + _3253 + 196] = 0
                            require ext_code.size(address(_3252))
                            call address(_3252).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3062, address(this.address), 128, mem[_3253], mem[_3253 + 196 len ceil32(mem[_3253])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _3312 = mem[_2456 + 32]
                                _3313 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3313 + 36] = 0
                                mem[_3313 + 68] = _3062
                                mem[_3313 + 100] = this.address
                                mem[_3313 + 132] = 128
                                mem[_3313 + 164] = mem[_3313]
                                s = 0
                                while s < mem[_3313]:
                                    mem[s + _3313 + 196] = mem[s + _3313 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3313]) > mem[_3313]:
                                    mem[mem[_3313] + _3313 + 196] = 0
                                require ext_code.size(address(_3312))
                                call address(_3312).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3062, address(this.address), 128, mem[_3313], mem[_3313 + 196 len ceil32(mem[_3313])]
                            else:
                                require idx + 1 < mem[96]
                                _3315 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _3341 = mem[_2456 + 32]
                                _3342 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3342 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3342 + 36] = 0
                                mem[_3342 + 68] = _3062
                                mem[_3342 + 100] = address(_3315)
                                mem[_3342 + 132] = 128
                                mem[_3342 + 164] = mem[_3342]
                                s = 0
                                while s < mem[_3342]:
                                    mem[s + _3342 + 196] = mem[s + _3342 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3342]) > mem[_3342]:
                                    mem[mem[_3342] + _3342 + 196] = 0
                                require ext_code.size(address(_3341))
                                call address(_3341).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3062, address(_3315), 128, mem[_3342], mem[_3342 + 196 len ceil32(mem[_3342])]
                    else:
                        if idx == mem[96] - 1:
                            _3254 = mem[_2456 + 32]
                            _3255 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3255 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3255 + 36] = _3062
                            mem[_3255 + 68] = 0
                            mem[_3255 + 100] = this.address
                            mem[_3255 + 132] = 128
                            mem[_3255 + 164] = mem[_3255]
                            s = 0
                            while s < mem[_3255]:
                                mem[s + _3255 + 196] = mem[s + _3255 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3255]) > mem[_3255]:
                                mem[mem[_3255] + _3255 + 196] = 0
                            require ext_code.size(address(_3254))
                            call address(_3254).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3062, 0, address(this.address), 128, mem[_3255], mem[_3255 + 196 len ceil32(mem[_3255])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _3316 = mem[_2456 + 32]
                                _3317 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3317 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3317 + 36] = _3062
                                mem[_3317 + 68] = 0
                                mem[_3317 + 100] = this.address
                                mem[_3317 + 132] = 128
                                mem[_3317 + 164] = mem[_3317]
                                s = 0
                                while s < mem[_3317]:
                                    mem[s + _3317 + 196] = mem[s + _3317 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3317]) > mem[_3317]:
                                    mem[mem[_3317] + _3317 + 196] = 0
                                require ext_code.size(address(_3316))
                                call address(_3316).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3062, 0, address(this.address), 128, mem[_3317], mem[_3317 + 196 len ceil32(mem[_3317])]
                            else:
                                require idx + 1 < mem[96]
                                _3319 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _3344 = mem[_2456 + 32]
                                _3345 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3345 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3345 + 36] = _3062
                                mem[_3345 + 68] = 0
                                mem[_3345 + 100] = address(_3319)
                                mem[_3345 + 132] = 128
                                mem[_3345 + 164] = mem[_3345]
                                s = 0
                                while s < mem[_3345]:
                                    mem[s + _3345 + 196] = mem[s + _3345 + 32]
                                    _2392 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3345]) > mem[_3345]:
                                    mem[mem[_3345] + _3345 + 196] = 0
                                require ext_code.size(address(_3344))
                                call address(_3344).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3062, 0, address(_3319), 128, mem[_3345], mem[_3345 + 196 len ceil32(mem[_3345])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2392 = mem[96]
                    idx = idx + 1
                    s = _3062
                    continue 
                _2895 = mem[_2456]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _2639)
                mem[mem[64] + 68] = Mask(112, 0, _2587)
                require ext_code.size(address(_2895))
                staticcall address(_2895).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s, _2639 << 144, Mask(112, 0, _2587)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3023 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3063 = mem[_3023]
                require mem[_3023] == mem[_3023]
                if mem[_2456 + 140 len 20] == address(_2736):
                    if idx == mem[96] - 1:
                        _3256 = mem[_2456 + 32]
                        _3257 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3257 + 36] = 0
                        mem[_3257 + 68] = _3063
                        mem[_3257 + 100] = this.address
                        mem[_3257 + 132] = 128
                        mem[_3257 + 164] = mem[_3257]
                        s = 0
                        while s < mem[_3257]:
                            mem[s + _3257 + 196] = mem[s + _3257 + 32]
                            _2392 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3257]) > mem[_3257]:
                            mem[mem[_3257] + _3257 + 196] = 0
                        require ext_code.size(address(_3256))
                        call address(_3256).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3063, address(this.address), 128, mem[_3257], mem[_3257 + 196 len ceil32(mem[_3257])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _3320 = mem[_2456 + 32]
                            _3321 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3321 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3321 + 36] = 0
                            mem[_3321 + 68] = _3063
                            mem[_3321 + 100] = this.address
                            mem[_3321 + 132] = 128
                            mem[_3321 + 164] = mem[_3321]
                            s = 0
                            while s < mem[_3321]:
                                mem[s + _3321 + 196] = mem[s + _3321 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3321]) > mem[_3321]:
                                mem[mem[_3321] + _3321 + 196] = 0
                            require ext_code.size(address(_3320))
                            call address(_3320).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3063, address(this.address), 128, mem[_3321], mem[_3321 + 196 len ceil32(mem[_3321])]
                        else:
                            require idx + 1 < mem[96]
                            _3323 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _3347 = mem[_2456 + 32]
                            _3348 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3348 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3348 + 36] = 0
                            mem[_3348 + 68] = _3063
                            mem[_3348 + 100] = address(_3323)
                            mem[_3348 + 132] = 128
                            mem[_3348 + 164] = mem[_3348]
                            s = 0
                            while s < mem[_3348]:
                                mem[s + _3348 + 196] = mem[s + _3348 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3348]) > mem[_3348]:
                                mem[mem[_3348] + _3348 + 196] = 0
                            require ext_code.size(address(_3347))
                            call address(_3347).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3063, address(_3323), 128, mem[_3348], mem[_3348 + 196 len ceil32(mem[_3348])]
                else:
                    if idx == mem[96] - 1:
                        _3258 = mem[_2456 + 32]
                        _3259 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3259 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3259 + 36] = _3063
                        mem[_3259 + 68] = 0
                        mem[_3259 + 100] = this.address
                        mem[_3259 + 132] = 128
                        mem[_3259 + 164] = mem[_3259]
                        s = 0
                        while s < mem[_3259]:
                            mem[s + _3259 + 196] = mem[s + _3259 + 32]
                            _2392 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3259]) > mem[_3259]:
                            mem[mem[_3259] + _3259 + 196] = 0
                        require ext_code.size(address(_3258))
                        call address(_3258).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3063, 0, address(this.address), 128, mem[_3259], mem[_3259 + 196 len ceil32(mem[_3259])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _3324 = mem[_2456 + 32]
                            _3325 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3325 + 36] = _3063
                            mem[_3325 + 68] = 0
                            mem[_3325 + 100] = this.address
                            mem[_3325 + 132] = 128
                            mem[_3325 + 164] = mem[_3325]
                            s = 0
                            while s < mem[_3325]:
                                mem[s + _3325 + 196] = mem[s + _3325 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3325]) > mem[_3325]:
                                mem[mem[_3325] + _3325 + 196] = 0
                            require ext_code.size(address(_3324))
                            call address(_3324).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3063, 0, address(this.address), 128, mem[_3325], mem[_3325 + 196 len ceil32(mem[_3325])]
                        else:
                            require idx + 1 < mem[96]
                            _3327 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _3350 = mem[_2456 + 32]
                            _3351 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3351 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3351 + 36] = _3063
                            mem[_3351 + 68] = 0
                            mem[_3351 + 100] = address(_3327)
                            mem[_3351 + 132] = 128
                            mem[_3351 + 164] = mem[_3351]
                            s = 0
                            while s < mem[_3351]:
                                mem[s + _3351 + 196] = mem[s + _3351 + 32]
                                _2392 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3351]) > mem[_3351]:
                                mem[mem[_3351] + _3351 + 196] = 0
                            require ext_code.size(address(_3350))
                            call address(_3350).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3063, 0, address(_3327), 128, mem[_3351], mem[_3351 + 196 len ceil32(mem[_3351])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2392 = mem[96]
                idx = idx + 1
                s = _3063
                continue 
            _2473 = mem[mem[(32 * idx) + 128] + 32]
            _2474 = mem[mem[(32 * idx) + 128] + 128]
            _2479 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            if stor[_2479][address(mem[mem[(32 * idx) + 128] + 128])]:
                if not mem[mem[(32 * idx) + 128] + 224]:
                    _2589 = mem[mem[(32 * idx) + 128] + 32]
                    _2590 = mem[mem[(32 * idx) + 128] + 64]
                    _2591 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_2590'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_2591'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_2589))
                    call address(_2589).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_2590')), ('signextend', 15, ('var', '_2591')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2775 = mem[_2456 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_2775))
                    staticcall address(_2775).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2974 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2980 = mem[_2974]
                    require mem[_2974] == mem[_2974]
                    _3064 = mem[_2456 + 160]
                    require idx + 1 < mem[96]
                    mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
                    mem[mem[64] + 36] = _2980
                    require ext_code.size(address(_3064))
                    call address(_3064).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _2980
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3354] == bool(mem[_3354])
                    _2392 = mem[96]
                    idx = idx + 1
                    s = _2980
                    continue 
                _2593 = mem[mem[(32 * idx) + 128] + 32]
                _2594 = mem[mem[(32 * idx) + 128] + 64]
                _2595 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_2594'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_2595'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_2593))
                call address(_2593).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_2594')), ('signextend', 15, ('var', '_2595')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2777 = mem[_2456 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2777))
                staticcall address(_2777).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2975 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2981 = mem[_2975]
                require mem[_2975] == mem[_2975]
                _3066 = mem[_2456 + 160]
                require idx + 1 < mem[96]
                mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
                mem[mem[64] + 36] = _2981
                require ext_code.size(address(_3066))
                call address(_3066).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2981
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3355] == bool(mem[_3355])
                _2392 = mem[96]
                idx = idx + 1
                s = _2981
                continue 
            mem[mem[64] + 4] = address(_2473)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_2474))
            call address(_2474).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_2473), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2678 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2678] == bool(mem[_2678])
            mem[0] = address(_2474)
            mem[32] = sha3(address(_2473), 1)
            if not mem[_2456 + 224]:
                _2758 = mem[_2456 + 32]
                _2759 = mem[_2456 + 64]
                _2760 = mem[_2456 + 96]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_2759'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_2760'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_2758))
                call address(_2758).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_2759')), ('signextend', 15, ('var', '_2760')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3024 = mem[_2456 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_3024))
                staticcall address(_3024).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3352 = mem[_3260]
                require mem[_3260] == mem[_3260]
                _3366 = mem[_2456 + 160]
                require idx + 1 < mem[96]
                mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
                mem[mem[64] + 36] = _3352
                require ext_code.size(address(_3366))
                call address(_3366).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _3352
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3410] == bool(mem[_3410])
                _2392 = mem[96]
                idx = idx + 1
                s = _3352
                continue 
            _2762 = mem[_2456 + 32]
            _2763 = mem[_2456 + 64]
            _2764 = mem[_2456 + 96]
            mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('var', '_2763'))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_2764'))
            mem[mem[64] + 68] = s
            mem[mem[64] + 100] = 1
            require ext_code.size(address(_2762))
            call address(_2762).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', '_2763')), ('signextend', 15, ('var', '_2764')), s, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3026 = mem[_2456 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_3026))
            staticcall address(_3026).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3353 = mem[_3261]
            require mem[_3261] == mem[_3261]
            _3368 = mem[_2456 + 160]
            require idx + 1 < mem[96]
            mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
            mem[mem[64] + 36] = _3353
            require ext_code.size(address(_3368))
            call address(_3368).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _3353
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3411 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3411] == bool(mem[_3411])
            _2392 = mem[96]
            idx = idx + 1
            s = _3353
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2638 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2638] == mem[_2638]
        if mem[_2638] <= _1162:
            revert with 0, 'P'
    else:
        if cd[100]:
            require mem[96]
            mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
            mem[mem[64] + 36] = cd[36]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[36]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1251] == bool(mem[_1251])
            _3482 = mem[96]
            idx = 0
            s = 0
            s = cd[36]
            while idx < _3482:
                _3515 = mem[64]
                mem[64] = mem[64] + 256
                mem[_3515] = 0
                mem[_3515 + 32] = 0
                mem[_3515 + 64] = 0
                mem[_3515 + 96] = 0
                mem[_3515 + 128] = 0
                mem[_3515 + 160] = 0
                mem[_3515 + 192] = 0
                mem[_3515 + 224] = 0
                require idx < mem[96]
                _3530 = mem[(32 * idx) + 128]
                if idx == mem[96] - 1:
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3691 = mem[_3625]
                    require mem[_3625] == mem[_3625 + 18 len 14]
                    _3711 = mem[_3625 + 32]
                    require mem[_3625 + 32] == mem[_3625 + 50 len 14]
                    require mem[_3625 + 64] == mem[_3625 + 92 len 4]
                    _3746 = mem[_3530 + 128]
                    _3747 = mem[_3530 + 160]
                    if mem[_3530 + 140 len 20] == mem[_3530 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_3530 + 140 len 20] < mem[_3530 + 172 len 20]:
                        if not mem[_3530 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_3530 + 140 len 20] == mem[_3530 + 140 len 20]:
                            _3807 = mem[_3530]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _3691)
                            mem[mem[64] + 68] = Mask(112, 0, _3711)
                            require ext_code.size(address(_3807))
                            staticcall address(_3807).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _3691 << 144, Mask(112, 0, _3711)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3861 = mem[_3853]
                            require mem[_3853] == mem[_3853]
                            if mem[_3530 + 140 len 20] == address(_3746):
                                _3877 = mem[_3530 + 160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3877))
                                staticcall address(_3877).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3925 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3941 = mem[_3925]
                                require mem[_3925] == mem[_3925]
                                _3957 = mem[_3530 + 32]
                                _3958 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3958 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3958 + 36] = 0
                                mem[_3958 + 68] = _3861
                                mem[_3958 + 100] = this.address
                                mem[_3958 + 132] = 128
                                mem[_3958 + 164] = mem[_3958]
                                s = 0
                                while s < mem[_3958]:
                                    mem[s + _3958 + 196] = mem[s + _3958 + 32]
                                    _3482 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_3958]) <= mem[_3958]:
                                    require ext_code.size(address(_3957))
                                    call address(_3957).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3861, address(this.address), 128, mem[_3958], mem[_3958 + 196 len ceil32(mem[_3958])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4325 = mem[_3530 + 160]
                                    mem[_3958 + 36] = this.address
                                    require ext_code.size(address(_4325))
                                    staticcall address(_4325).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                else:
                                    mem[mem[_3958] + _3958 + 196] = 0
                                    require ext_code.size(address(_3957))
                                    call address(_3957).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _3861, address(this.address), 128, mem[_3958], mem[_3958 + 196 len ceil32(mem[_3958])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4327 = mem[_3530 + 160]
                                    mem[_3958 + 36] = this.address
                                    require ext_code.size(address(_4327))
                                    staticcall address(_4327).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                mem[_3958 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _3958 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                _3482 = mem[96]
                                idx = idx + 1
                                s = _3941
                                s = ext_call.return_data[0] - _3941
                                continue 
                            _3879 = mem[_3530 + 160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_3879))
                            staticcall address(_3879).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3926 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3942 = mem[_3926]
                            require mem[_3926] == mem[_3926]
                            _3959 = mem[_3530 + 32]
                            _3960 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3960 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3960 + 36] = _3861
                            mem[_3960 + 68] = 0
                            mem[_3960 + 100] = this.address
                            mem[_3960 + 132] = 128
                            mem[_3960 + 164] = mem[_3960]
                            s = 0
                            while s < mem[_3960]:
                                mem[s + _3960 + 196] = mem[s + _3960 + 32]
                                _3482 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3960]) <= mem[_3960]:
                                require ext_code.size(address(_3959))
                                call address(_3959).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3861, 0, address(this.address), 128, mem[_3960], mem[_3960 + 196 len ceil32(mem[_3960])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4329 = mem[_3530 + 160]
                                mem[_3960 + 36] = this.address
                                require ext_code.size(address(_4329))
                                staticcall address(_4329).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                            else:
                                mem[mem[_3960] + _3960 + 196] = 0
                                require ext_code.size(address(_3959))
                                call address(_3959).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3861, 0, address(this.address), 128, mem[_3960], mem[_3960 + 196 len ceil32(mem[_3960])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4331 = mem[_3530 + 160]
                                mem[_3960 + 36] = this.address
                                require ext_code.size(address(_4331))
                                staticcall address(_4331).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                            mem[_3960 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3960 + ceil32(return_data.size) + 32
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            _3482 = mem[96]
                            idx = idx + 1
                            s = _3942
                            s = ext_call.return_data[0] - _3942
                            continue 
                        _3809 = mem[_3530]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _3711)
                        mem[mem[64] + 68] = Mask(112, 0, _3691)
                        require ext_code.size(address(_3809))
                        staticcall address(_3809).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args s, _3711 << 144, Mask(112, 0, _3691)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3862 = mem[_3854]
                        require mem[_3854] == mem[_3854]
                        if mem[_3530 + 140 len 20] == address(_3746):
                            _3881 = mem[_3530 + 160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_3881))
                            staticcall address(_3881).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3927 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3943 = mem[_3927]
                            require mem[_3927] == mem[_3927]
                            _3961 = mem[_3530 + 32]
                            _3962 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3962 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3962 + 36] = 0
                            mem[_3962 + 68] = _3862
                            mem[_3962 + 100] = this.address
                            mem[_3962 + 132] = 128
                            mem[_3962 + 164] = mem[_3962]
                            s = 0
                            while s < mem[_3962]:
                                mem[s + _3962 + 196] = mem[s + _3962 + 32]
                                _3482 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3962]) <= mem[_3962]:
                                require ext_code.size(address(_3961))
                                call address(_3961).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3862, address(this.address), 128, mem[_3962], mem[_3962 + 196 len ceil32(mem[_3962])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4333 = mem[_3530 + 160]
                                mem[_3962 + 36] = this.address
                                require ext_code.size(address(_4333))
                                staticcall address(_4333).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                            else:
                                mem[mem[_3962] + _3962 + 196] = 0
                                require ext_code.size(address(_3961))
                                call address(_3961).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3862, address(this.address), 128, mem[_3962], mem[_3962 + 196 len ceil32(mem[_3962])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4335 = mem[_3530 + 160]
                                mem[_3962 + 36] = this.address
                                require ext_code.size(address(_4335))
                                staticcall address(_4335).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                            mem[_3962 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3962 + ceil32(return_data.size) + 32
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            _3482 = mem[96]
                            idx = idx + 1
                            s = _3943
                            s = ext_call.return_data[0] - _3943
                            continue 
                        _3883 = mem[_3530 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3883))
                        staticcall address(_3883).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3944 = mem[_3928]
                        require mem[_3928] == mem[_3928]
                        _3963 = mem[_3530 + 32]
                        _3964 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3964 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3964 + 36] = _3862
                        mem[_3964 + 68] = 0
                        mem[_3964 + 100] = this.address
                        mem[_3964 + 132] = 128
                        mem[_3964 + 164] = mem[_3964]
                        s = 0
                        while s < mem[_3964]:
                            mem[s + _3964 + 196] = mem[s + _3964 + 32]
                            _3482 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3964]) <= mem[_3964]:
                            require ext_code.size(address(_3963))
                            call address(_3963).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3862, 0, address(this.address), 128, mem[_3964], mem[_3964 + 196 len ceil32(mem[_3964])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4337 = mem[_3530 + 160]
                            mem[_3964 + 36] = this.address
                            require ext_code.size(address(_4337))
                            staticcall address(_4337).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                        else:
                            mem[mem[_3964] + _3964 + 196] = 0
                            require ext_code.size(address(_3963))
                            call address(_3963).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3862, 0, address(this.address), 128, mem[_3964], mem[_3964 + 196 len ceil32(mem[_3964])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4339 = mem[_3530 + 160]
                            mem[_3964 + 36] = this.address
                            require ext_code.size(address(_4339))
                            staticcall address(_4339).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                        mem[_3964 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3964 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        _3482 = mem[96]
                        idx = idx + 1
                        s = _3944
                        s = ext_call.return_data[0] - _3944
                        continue 
                    if not mem[_3530 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if mem[_3530 + 140 len 20] == mem[_3530 + 172 len 20]:
                        _3811 = mem[_3530]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _3691)
                        mem[mem[64] + 68] = Mask(112, 0, _3711)
                        require ext_code.size(address(_3811))
                        staticcall address(_3811).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args s, _3691 << 144, Mask(112, 0, _3711)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3863 = mem[_3855]
                        require mem[_3855] == mem[_3855]
                        if mem[_3530 + 140 len 20] == address(_3747):
                            _3885 = mem[_3530 + 160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_3885))
                            staticcall address(_3885).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3945 = mem[_3929]
                            require mem[_3929] == mem[_3929]
                            _3965 = mem[_3530 + 32]
                            _3966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3966 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3966 + 36] = 0
                            mem[_3966 + 68] = _3863
                            mem[_3966 + 100] = this.address
                            mem[_3966 + 132] = 128
                            mem[_3966 + 164] = mem[_3966]
                            s = 0
                            while s < mem[_3966]:
                                mem[s + _3966 + 196] = mem[s + _3966 + 32]
                                _3482 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3966]) <= mem[_3966]:
                                require ext_code.size(address(_3965))
                                call address(_3965).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3863, address(this.address), 128, mem[_3966], mem[_3966 + 196 len ceil32(mem[_3966])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4341 = mem[_3530 + 160]
                                mem[_3966 + 36] = this.address
                                require ext_code.size(address(_4341))
                                staticcall address(_4341).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                            else:
                                mem[mem[_3966] + _3966 + 196] = 0
                                require ext_code.size(address(_3965))
                                call address(_3965).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3863, address(this.address), 128, mem[_3966], mem[_3966 + 196 len ceil32(mem[_3966])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4343 = mem[_3530 + 160]
                                mem[_3966 + 36] = this.address
                                require ext_code.size(address(_4343))
                                staticcall address(_4343).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                            mem[_3966 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3966 + ceil32(return_data.size) + 32
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            _3482 = mem[96]
                            idx = idx + 1
                            s = _3945
                            s = ext_call.return_data[0] - _3945
                            continue 
                        _3887 = mem[_3530 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3887))
                        staticcall address(_3887).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3946 = mem[_3930]
                        require mem[_3930] == mem[_3930]
                        _3967 = mem[_3530 + 32]
                        _3968 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3968 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3968 + 36] = _3863
                        mem[_3968 + 68] = 0
                        mem[_3968 + 100] = this.address
                        mem[_3968 + 132] = 128
                        mem[_3968 + 164] = mem[_3968]
                        s = 0
                        while s < mem[_3968]:
                            mem[s + _3968 + 196] = mem[s + _3968 + 32]
                            _3482 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3968]) <= mem[_3968]:
                            require ext_code.size(address(_3967))
                            call address(_3967).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3863, 0, address(this.address), 128, mem[_3968], mem[_3968 + 196 len ceil32(mem[_3968])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4345 = mem[_3530 + 160]
                            mem[_3968 + 36] = this.address
                            require ext_code.size(address(_4345))
                            staticcall address(_4345).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                        else:
                            mem[mem[_3968] + _3968 + 196] = 0
                            require ext_code.size(address(_3967))
                            call address(_3967).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3863, 0, address(this.address), 128, mem[_3968], mem[_3968 + 196 len ceil32(mem[_3968])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4347 = mem[_3530 + 160]
                            mem[_3968 + 36] = this.address
                            require ext_code.size(address(_4347))
                            staticcall address(_4347).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                        mem[_3968 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3968 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        _3482 = mem[96]
                        idx = idx + 1
                        s = _3946
                        s = ext_call.return_data[0] - _3946
                        continue 
                    _3813 = mem[_3530]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _3711)
                    mem[mem[64] + 68] = Mask(112, 0, _3691)
                    require ext_code.size(address(_3813))
                    staticcall address(_3813).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _3711 << 144, Mask(112, 0, _3691)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3856 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3864 = mem[_3856]
                    require mem[_3856] == mem[_3856]
                    if mem[_3530 + 140 len 20] == address(_3747):
                        _3889 = mem[_3530 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3889))
                        staticcall address(_3889).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3947 = mem[_3931]
                        require mem[_3931] == mem[_3931]
                        _3969 = mem[_3530 + 32]
                        _3970 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3970 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3970 + 36] = 0
                        mem[_3970 + 68] = _3864
                        mem[_3970 + 100] = this.address
                        mem[_3970 + 132] = 128
                        mem[_3970 + 164] = mem[_3970]
                        s = 0
                        while s < mem[_3970]:
                            mem[s + _3970 + 196] = mem[s + _3970 + 32]
                            _3482 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3970]) <= mem[_3970]:
                            require ext_code.size(address(_3969))
                            call address(_3969).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3864, address(this.address), 128, mem[_3970], mem[_3970 + 196 len ceil32(mem[_3970])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4349 = mem[_3530 + 160]
                            mem[_3970 + 36] = this.address
                            require ext_code.size(address(_4349))
                            staticcall address(_4349).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                        else:
                            mem[mem[_3970] + _3970 + 196] = 0
                            require ext_code.size(address(_3969))
                            call address(_3969).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3864, address(this.address), 128, mem[_3970], mem[_3970 + 196 len ceil32(mem[_3970])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4351 = mem[_3530 + 160]
                            mem[_3970 + 36] = this.address
                            require ext_code.size(address(_4351))
                            staticcall address(_4351).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                        mem[_3970 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3970 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        _3482 = mem[96]
                        idx = idx + 1
                        s = _3947
                        s = ext_call.return_data[0] - _3947
                        continue 
                    _3891 = mem[_3530 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3891))
                    staticcall address(_3891).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3948 = mem[_3932]
                    require mem[_3932] == mem[_3932]
                    _3971 = mem[_3530 + 32]
                    _3972 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3972 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3972 + 36] = _3864
                    mem[_3972 + 68] = 0
                    mem[_3972 + 100] = this.address
                    mem[_3972 + 132] = 128
                    mem[_3972 + 164] = mem[_3972]
                    s = 0
                    while s < mem[_3972]:
                        mem[s + _3972 + 196] = mem[s + _3972 + 32]
                        _3482 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_3972]) <= mem[_3972]:
                        require ext_code.size(address(_3971))
                        call address(_3971).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3864, 0, address(this.address), 128, mem[_3972], mem[_3972 + 196 len ceil32(mem[_3972])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4353 = mem[_3530 + 160]
                        mem[_3972 + 36] = this.address
                        require ext_code.size(address(_4353))
                        staticcall address(_4353).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                    else:
                        mem[mem[_3972] + _3972 + 196] = 0
                        require ext_code.size(address(_3971))
                        call address(_3971).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3864, 0, address(this.address), 128, mem[_3972], mem[_3972 + 196 len ceil32(mem[_3972])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4355 = mem[_3530 + 160]
                        mem[_3972 + 36] = this.address
                        require ext_code.size(address(_4355))
                        staticcall address(_4355).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                    mem[_3972 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3972 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    _3482 = mem[96]
                    idx = idx + 1
                    s = _3948
                    s = ext_call.return_data[0] - _3948
                    continue 
                require idx + 1 < mem[96]
                _3553 = mem[mem[(32 * idx + 1) + 128] + 32]
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3642 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3700 = mem[_3642]
                require mem[_3642] == mem[_3642 + 18 len 14]
                _3716 = mem[_3642 + 32]
                require mem[_3642 + 32] == mem[_3642 + 50 len 14]
                require mem[_3642 + 64] == mem[_3642 + 92 len 4]
                _3752 = mem[_3530 + 128]
                _3753 = mem[_3530 + 160]
                if mem[_3530 + 140 len 20] == mem[_3530 + 172 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[_3530 + 140 len 20] < mem[_3530 + 172 len 20]:
                    if not mem[_3530 + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if mem[_3530 + 140 len 20] == mem[_3530 + 140 len 20]:
                        _3832 = mem[_3530]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _3700)
                        mem[mem[64] + 68] = Mask(112, 0, _3716)
                        require ext_code.size(address(_3832))
                        staticcall address(_3832).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args s, _3700 << 144, Mask(112, 0, _3716)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3865 = mem[_3857]
                        require mem[_3857] == mem[_3857]
                        if mem[_3530 + 140 len 20] == address(_3752):
                            _3893 = mem[_3530 + 160]
                            mem[mem[64] + 4] = address(_3553)
                            require ext_code.size(address(_3893))
                            staticcall address(_3893).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3553)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3933 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3949 = mem[_3933]
                            require mem[_3933] == mem[_3933]
                            _3981 = mem[_3530 + 32]
                            _3982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3982 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3982 + 36] = 0
                            mem[_3982 + 68] = _3865
                            mem[_3982 + 100] = address(_3553)
                            mem[_3982 + 132] = 128
                            mem[_3982 + 164] = mem[_3982]
                            s = 0
                            while s < mem[_3982]:
                                mem[s + _3982 + 196] = mem[s + _3982 + 32]
                                _3482 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3982]) <= mem[_3982]:
                                require ext_code.size(address(_3981))
                                call address(_3981).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3865, address(_3553), 128, mem[_3982], mem[_3982 + 196 len ceil32(mem[_3982])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4357 = mem[_3530 + 160]
                                mem[_3982 + 36] = address(_3553)
                                require ext_code.size(address(_4357))
                                staticcall address(_4357).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3553)
                            else:
                                mem[mem[_3982] + _3982 + 196] = 0
                                require ext_code.size(address(_3981))
                                call address(_3981).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3865, address(_3553), 128, mem[_3982], mem[_3982 + 196 len ceil32(mem[_3982])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4359 = mem[_3530 + 160]
                                mem[_3982 + 36] = address(_3553)
                                require ext_code.size(address(_4359))
                                staticcall address(_4359).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_3553)
                            mem[_3982 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3982 + ceil32(return_data.size) + 32
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            _3482 = mem[96]
                            idx = idx + 1
                            s = _3949
                            s = ext_call.return_data[0] - _3949
                            continue 
                        _3895 = mem[_3530 + 160]
                        mem[mem[64] + 4] = address(_3553)
                        require ext_code.size(address(_3895))
                        staticcall address(_3895).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3950 = mem[_3934]
                        require mem[_3934] == mem[_3934]
                        _3983 = mem[_3530 + 32]
                        _3984 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3984 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3984 + 36] = _3865
                        mem[_3984 + 68] = 0
                        mem[_3984 + 100] = address(_3553)
                        mem[_3984 + 132] = 128
                        mem[_3984 + 164] = mem[_3984]
                        s = 0
                        while s < mem[_3984]:
                            mem[s + _3984 + 196] = mem[s + _3984 + 32]
                            _3482 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3984]) <= mem[_3984]:
                            require ext_code.size(address(_3983))
                            call address(_3983).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3865, 0, address(_3553), 128, mem[_3984], mem[_3984 + 196 len ceil32(mem[_3984])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4361 = mem[_3530 + 160]
                            mem[_3984 + 36] = address(_3553)
                            require ext_code.size(address(_4361))
                            staticcall address(_4361).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3553)
                        else:
                            mem[mem[_3984] + _3984 + 196] = 0
                            require ext_code.size(address(_3983))
                            call address(_3983).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3865, 0, address(_3553), 128, mem[_3984], mem[_3984 + 196 len ceil32(mem[_3984])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4363 = mem[_3530 + 160]
                            mem[_3984 + 36] = address(_3553)
                            require ext_code.size(address(_4363))
                            staticcall address(_4363).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3553)
                        mem[_3984 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3984 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        _3482 = mem[96]
                        idx = idx + 1
                        s = _3950
                        s = ext_call.return_data[0] - _3950
                        continue 
                    _3834 = mem[_3530]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _3716)
                    mem[mem[64] + 68] = Mask(112, 0, _3700)
                    require ext_code.size(address(_3834))
                    staticcall address(_3834).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _3716 << 144, Mask(112, 0, _3700)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3866 = mem[_3858]
                    require mem[_3858] == mem[_3858]
                    if mem[_3530 + 140 len 20] == address(_3752):
                        _3897 = mem[_3530 + 160]
                        mem[mem[64] + 4] = address(_3553)
                        require ext_code.size(address(_3897))
                        staticcall address(_3897).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3951 = mem[_3935]
                        require mem[_3935] == mem[_3935]
                        _3985 = mem[_3530 + 32]
                        _3986 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3986 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3986 + 36] = 0
                        mem[_3986 + 68] = _3866
                        mem[_3986 + 100] = address(_3553)
                        mem[_3986 + 132] = 128
                        mem[_3986 + 164] = mem[_3986]
                        s = 0
                        while s < mem[_3986]:
                            mem[s + _3986 + 196] = mem[s + _3986 + 32]
                            _3482 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3986]) <= mem[_3986]:
                            require ext_code.size(address(_3985))
                            call address(_3985).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3866, address(_3553), 128, mem[_3986], mem[_3986 + 196 len ceil32(mem[_3986])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4365 = mem[_3530 + 160]
                            mem[_3986 + 36] = address(_3553)
                            require ext_code.size(address(_4365))
                            staticcall address(_4365).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3553)
                        else:
                            mem[mem[_3986] + _3986 + 196] = 0
                            require ext_code.size(address(_3985))
                            call address(_3985).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3866, address(_3553), 128, mem[_3986], mem[_3986 + 196 len ceil32(mem[_3986])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4367 = mem[_3530 + 160]
                            mem[_3986 + 36] = address(_3553)
                            require ext_code.size(address(_4367))
                            staticcall address(_4367).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3553)
                        mem[_3986 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3986 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        _3482 = mem[96]
                        idx = idx + 1
                        s = _3951
                        s = ext_call.return_data[0] - _3951
                        continue 
                    _3899 = mem[_3530 + 160]
                    mem[mem[64] + 4] = address(_3553)
                    require ext_code.size(address(_3899))
                    staticcall address(_3899).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3553)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3952 = mem[_3936]
                    require mem[_3936] == mem[_3936]
                    _3987 = mem[_3530 + 32]
                    _3988 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3988 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3988 + 36] = _3866
                    mem[_3988 + 68] = 0
                    mem[_3988 + 100] = address(_3553)
                    mem[_3988 + 132] = 128
                    mem[_3988 + 164] = mem[_3988]
                    s = 0
                    while s < mem[_3988]:
                        mem[s + _3988 + 196] = mem[s + _3988 + 32]
                        _3482 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_3988]) <= mem[_3988]:
                        require ext_code.size(address(_3987))
                        call address(_3987).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3866, 0, address(_3553), 128, mem[_3988], mem[_3988 + 196 len ceil32(mem[_3988])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4369 = mem[_3530 + 160]
                        mem[_3988 + 36] = address(_3553)
                        require ext_code.size(address(_4369))
                        staticcall address(_4369).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                    else:
                        mem[mem[_3988] + _3988 + 196] = 0
                        require ext_code.size(address(_3987))
                        call address(_3987).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3866, 0, address(_3553), 128, mem[_3988], mem[_3988 + 196 len ceil32(mem[_3988])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4371 = mem[_3530 + 160]
                        mem[_3988 + 36] = address(_3553)
                        require ext_code.size(address(_4371))
                        staticcall address(_4371).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                    mem[_3988 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3988 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    _3482 = mem[96]
                    idx = idx + 1
                    s = _3952
                    s = ext_call.return_data[0] - _3952
                    continue 
                if not mem[_3530 + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[_3530 + 140 len 20] == mem[_3530 + 172 len 20]:
                    _3836 = mem[_3530]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _3700)
                    mem[mem[64] + 68] = Mask(112, 0, _3716)
                    require ext_code.size(address(_3836))
                    staticcall address(_3836).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _3700 << 144, Mask(112, 0, _3716)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3867 = mem[_3859]
                    require mem[_3859] == mem[_3859]
                    if mem[_3530 + 140 len 20] == address(_3753):
                        _3901 = mem[_3530 + 160]
                        mem[mem[64] + 4] = address(_3553)
                        require ext_code.size(address(_3901))
                        staticcall address(_3901).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3953 = mem[_3937]
                        require mem[_3937] == mem[_3937]
                        _3989 = mem[_3530 + 32]
                        _3990 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_3990 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_3990 + 36] = 0
                        mem[_3990 + 68] = _3867
                        mem[_3990 + 100] = address(_3553)
                        mem[_3990 + 132] = 128
                        mem[_3990 + 164] = mem[_3990]
                        s = 0
                        while s < mem[_3990]:
                            mem[s + _3990 + 196] = mem[s + _3990 + 32]
                            _3482 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3990]) <= mem[_3990]:
                            require ext_code.size(address(_3989))
                            call address(_3989).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3867, address(_3553), 128, mem[_3990], mem[_3990 + 196 len ceil32(mem[_3990])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4373 = mem[_3530 + 160]
                            mem[_3990 + 36] = address(_3553)
                            require ext_code.size(address(_4373))
                            staticcall address(_4373).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3553)
                        else:
                            mem[mem[_3990] + _3990 + 196] = 0
                            require ext_code.size(address(_3989))
                            call address(_3989).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3867, address(_3553), 128, mem[_3990], mem[_3990 + 196 len ceil32(mem[_3990])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4375 = mem[_3530 + 160]
                            mem[_3990 + 36] = address(_3553)
                            require ext_code.size(address(_4375))
                            staticcall address(_4375).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3553)
                        mem[_3990 + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _3990 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        _3482 = mem[96]
                        idx = idx + 1
                        s = _3953
                        s = ext_call.return_data[0] - _3953
                        continue 
                    _3903 = mem[_3530 + 160]
                    mem[mem[64] + 4] = address(_3553)
                    require ext_code.size(address(_3903))
                    staticcall address(_3903).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3553)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3954 = mem[_3938]
                    require mem[_3938] == mem[_3938]
                    _3991 = mem[_3530 + 32]
                    _3992 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3992 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3992 + 36] = _3867
                    mem[_3992 + 68] = 0
                    mem[_3992 + 100] = address(_3553)
                    mem[_3992 + 132] = 128
                    mem[_3992 + 164] = mem[_3992]
                    s = 0
                    while s < mem[_3992]:
                        mem[s + _3992 + 196] = mem[s + _3992 + 32]
                        _3482 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_3992]) <= mem[_3992]:
                        require ext_code.size(address(_3991))
                        call address(_3991).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3867, 0, address(_3553), 128, mem[_3992], mem[_3992 + 196 len ceil32(mem[_3992])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4377 = mem[_3530 + 160]
                        mem[_3992 + 36] = address(_3553)
                        require ext_code.size(address(_4377))
                        staticcall address(_4377).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                    else:
                        mem[mem[_3992] + _3992 + 196] = 0
                        require ext_code.size(address(_3991))
                        call address(_3991).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _3867, 0, address(_3553), 128, mem[_3992], mem[_3992 + 196 len ceil32(mem[_3992])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4379 = mem[_3530 + 160]
                        mem[_3992 + 36] = address(_3553)
                        require ext_code.size(address(_4379))
                        staticcall address(_4379).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                    mem[_3992 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3992 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    _3482 = mem[96]
                    idx = idx + 1
                    s = _3954
                    s = ext_call.return_data[0] - _3954
                    continue 
                _3838 = mem[_3530]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _3716)
                mem[mem[64] + 68] = Mask(112, 0, _3700)
                require ext_code.size(address(_3838))
                staticcall address(_3838).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s, _3716 << 144, Mask(112, 0, _3700)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3860 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3868 = mem[_3860]
                require mem[_3860] == mem[_3860]
                if mem[_3530 + 140 len 20] == address(_3753):
                    _3905 = mem[_3530 + 160]
                    mem[mem[64] + 4] = address(_3553)
                    require ext_code.size(address(_3905))
                    staticcall address(_3905).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3553)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3955 = mem[_3939]
                    require mem[_3939] == mem[_3939]
                    _3993 = mem[_3530 + 32]
                    _3994 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3994 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_3994 + 36] = 0
                    mem[_3994 + 68] = _3868
                    mem[_3994 + 100] = address(_3553)
                    mem[_3994 + 132] = 128
                    mem[_3994 + 164] = mem[_3994]
                    s = 0
                    while s < mem[_3994]:
                        mem[s + _3994 + 196] = mem[s + _3994 + 32]
                        _3482 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_3994]) <= mem[_3994]:
                        require ext_code.size(address(_3993))
                        call address(_3993).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3868, address(_3553), 128, mem[_3994], mem[_3994 + 196 len ceil32(mem[_3994])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4381 = mem[_3530 + 160]
                        mem[_3994 + 36] = address(_3553)
                        require ext_code.size(address(_4381))
                        staticcall address(_4381).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                    else:
                        mem[mem[_3994] + _3994 + 196] = 0
                        require ext_code.size(address(_3993))
                        call address(_3993).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _3868, address(_3553), 128, mem[_3994], mem[_3994 + 196 len ceil32(mem[_3994])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4383 = mem[_3530 + 160]
                        mem[_3994 + 36] = address(_3553)
                        require ext_code.size(address(_4383))
                        staticcall address(_4383).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3553)
                    mem[_3994 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3994 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    _3482 = mem[96]
                    idx = idx + 1
                    s = _3955
                    s = ext_call.return_data[0] - _3955
                    continue 
                _3907 = mem[_3530 + 160]
                mem[mem[64] + 4] = address(_3553)
                require ext_code.size(address(_3907))
                staticcall address(_3907).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_3553)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3940 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3956 = mem[_3940]
                require mem[_3940] == mem[_3940]
                _3995 = mem[_3530 + 32]
                _3996 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3996 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_3996 + 36] = _3868
                mem[_3996 + 68] = 0
                mem[_3996 + 100] = address(_3553)
                mem[_3996 + 132] = 128
                mem[_3996 + 164] = mem[_3996]
                s = 0
                while s < mem[_3996]:
                    mem[s + _3996 + 196] = mem[s + _3996 + 32]
                    _3482 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(mem[_3996]) <= mem[_3996]:
                    require ext_code.size(address(_3995))
                    call address(_3995).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _3868, 0, address(_3553), 128, mem[_3996], mem[_3996 + 196 len ceil32(mem[_3996])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4385 = mem[_3530 + 160]
                    mem[_3996 + 36] = address(_3553)
                    require ext_code.size(address(_4385))
                    staticcall address(_4385).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3553)
                else:
                    mem[mem[_3996] + _3996 + 196] = 0
                    require ext_code.size(address(_3995))
                    call address(_3995).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _3868, 0, address(_3553), 128, mem[_3996], mem[_3996 + 196 len ceil32(mem[_3996])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4387 = mem[_3530 + 160]
                    mem[_3996 + 36] = address(_3553)
                    require ext_code.size(address(_4387))
                    staticcall address(_4387).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3553)
                mem[_3996 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3996 + ceil32(return_data.size) + 32
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                _3482 = mem[96]
                idx = idx + 1
                s = _3956
                s = ext_call.return_data[0] - _3956
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3710 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3710] == mem[_3710]
            if mem[_3710] <= _1162:
                revert with 0, 'P'
        else:
            _1168 = mem[96]
            _1169 = mem[64]
            mem[mem[64]] = mem[96]
            if not _1168:
                mem[mem[64] + (32 * _1168) + 32] = mem[96]
                mem[64] = mem[64] + (32 * _1168) + (32 * mem[96]) + 64
                if not mem[96]:
                    _2388 = mem[96]
                    idx = 0
                    s = cd[36]
                    while idx < _2388:
                        _2411 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_2411] = 0
                        mem[_2411 + 32] = 0
                        mem[_2411 + 64] = 0
                        mem[_2411 + 96] = 0
                        mem[_2411 + 128] = 0
                        mem[_2411 + 160] = 0
                        mem[_2411 + 192] = 0
                        mem[_2411 + 224] = 0
                        require idx < mem[96]
                        _2434 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2515 = mem[_2475]
                        require mem[_2475] == mem[_2475 + 18 len 14]
                        _2598 = mem[_2475 + 32]
                        require mem[_2475 + 32] == mem[_2475 + 50 len 14]
                        require mem[_2475 + 64] == mem[_2475 + 92 len 4]
                        _2724 = mem[_2434 + 128]
                        _2725 = mem[_2434 + 160]
                        if mem[_2434 + 140 len 20] == mem[_2434 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if mem[_2434 + 140 len 20] < mem[_2434 + 172 len 20]:
                            if not mem[_2434 + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2434 + 140 len 20] == mem[_2434 + 140 len 20]:
                                _2828 = mem[_2434]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2515)
                                mem[mem[64] + 68] = Mask(112, 0, _2598)
                                require ext_code.size(address(_2828))
                                staticcall address(_2828).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2515 << 144, Mask(112, 0, _2598)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3004 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3004] == mem[_3004]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3004]
                            else:
                                _2830 = mem[_2434]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2598)
                                mem[mem[64] + 68] = Mask(112, 0, _2515)
                                require ext_code.size(address(_2830))
                                staticcall address(_2830).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2598 << 144, Mask(112, 0, _2515)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3005 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3005] == mem[_3005]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3005]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2434 + 140 len 20] == address(_2724)
                        else:
                            if not mem[_2434 + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2434 + 140 len 20] == mem[_2434 + 172 len 20]:
                                _2832 = mem[_2434]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2515)
                                mem[mem[64] + 68] = Mask(112, 0, _2598)
                                require ext_code.size(address(_2832))
                                staticcall address(_2832).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2515 << 144, Mask(112, 0, _2598)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3006 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3006] == mem[_3006]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3006]
                            else:
                                _2834 = mem[_2434]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2598)
                                mem[mem[64] + 68] = Mask(112, 0, _2515)
                                require ext_code.size(address(_2834))
                                staticcall address(_2834).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2598 << 144, Mask(112, 0, _2515)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3007 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3007] == mem[_3007]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3007]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2434 + 140 len 20] == address(_2725)
                        _2388 = mem[96]
                        idx = idx + 1
                        s = mem[(32 * idx) + _1169 + 32]
                        continue 
                    require mem[96] - 1 < mem[_1169]
                    if mem[(32 * mem[96] - 1) + _1169 + 32] <= cd[36]:
                        revert with 0, 'UNI_P'
                    require mem[96]
                    mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                    mem[mem[64] + 36] = cd[36]
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], cd[36]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2640] == bool(mem[_2640])
                    _3478 = mem[96]
                    s = 0
                    while s < _3478:
                        _3508 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_3508] = 0
                        mem[_3508 + 32] = 0
                        mem[_3508 + 64] = 0
                        mem[_3508 + 96] = 0
                        mem[_3508 + 128] = 0
                        mem[_3508 + 160] = 0
                        mem[_3508 + 192] = 0
                        mem[_3508 + 224] = 0
                        require s < mem[96]
                        if s == mem[96] - 1:
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3626 = mem[(32 * s) + _1169 + 32]
                                _3643 = mem[mem[(32 * s) + 128] + 32]
                                _3644 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3644 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3644 + 36] = 0
                                mem[_3644 + 68] = _3626
                                mem[_3644 + 100] = this.address
                                mem[_3644 + 132] = 128
                                mem[_3644 + 164] = mem[_3644]
                                idx = 0
                                while idx < mem[_3644]:
                                    mem[idx + _3644 + 196] = mem[idx + _3644 + 32]
                                    _3478 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3644]) > mem[_3644]:
                                    mem[mem[_3644] + _3644 + 196] = 0
                                require ext_code.size(address(_3643))
                                call address(_3643).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3626, address(this.address), 128, mem[_3644], mem[_3644 + 196 len ceil32(mem[_3644])]
                            else:
                                _3627 = mem[(32 * s) + _1169 + 32]
                                _3645 = mem[mem[(32 * s) + 128] + 32]
                                _3646 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3646 + 36] = _3627
                                mem[_3646 + 68] = 0
                                mem[_3646 + 100] = this.address
                                mem[_3646 + 132] = 128
                                mem[_3646 + 164] = mem[_3646]
                                idx = 0
                                while idx < mem[_3646]:
                                    mem[idx + _3646 + 196] = mem[idx + _3646 + 32]
                                    _3478 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3646]) > mem[_3646]:
                                    mem[mem[_3646] + _3646 + 196] = 0
                                require ext_code.size(address(_3645))
                                call address(_3645).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3627, 0, address(this.address), 128, mem[_3646], mem[_3646 + 196 len ceil32(mem[_3646])]
                        else:
                            require s + 1 < mem[96]
                            _3539 = mem[mem[(32 * s + 1) + 128] + 32]
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3647 = mem[(32 * s) + _1169 + 32]
                                _3669 = mem[mem[(32 * s) + 128] + 32]
                                _3670 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3670 + 36] = 0
                                mem[_3670 + 68] = _3647
                                mem[_3670 + 100] = address(_3539)
                                mem[_3670 + 132] = 128
                                mem[_3670 + 164] = mem[_3670]
                                t = 0
                                while t < mem[_3670]:
                                    mem[t + _3670 + 196] = mem[t + _3670 + 32]
                                    _3478 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3670]) > mem[_3670]:
                                    mem[mem[_3670] + _3670 + 196] = 0
                                require ext_code.size(address(_3669))
                                call address(_3669).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3647, address(_3539), 128, mem[_3670], mem[_3670 + 196 len ceil32(mem[_3670])]
                            else:
                                _3648 = mem[(32 * s) + _1169 + 32]
                                _3671 = mem[mem[(32 * s) + 128] + 32]
                                _3672 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3672 + 36] = _3648
                                mem[_3672 + 68] = 0
                                mem[_3672 + 100] = address(_3539)
                                mem[_3672 + 132] = 128
                                mem[_3672 + 164] = mem[_3672]
                                t = 0
                                while t < mem[_3672]:
                                    mem[t + _3672 + 196] = mem[t + _3672 + 32]
                                    _3478 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3672]) > mem[_3672]:
                                    mem[mem[_3672] + _3672 + 196] = 0
                                require ext_code.size(address(_3671))
                                call address(_3671).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3648, 0, address(_3539), 128, mem[_3672], mem[_3672 + 196 len ceil32(mem[_3672])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3478 = mem[96]
                        s = s + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3706] == mem[_3706]
                    if mem[_3706] <= _1162:
                        revert with 0, 'P'
                else:
                    mem[_1169 + (32 * _1168) + 64 len 32 * mem[96]] = code.data[9486 len 32 * mem[96]]
                    _2389 = mem[96]
                    idx = 0
                    s = cd[36]
                    while idx < _2389:
                        _2414 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_2414] = 0
                        mem[_2414 + 32] = 0
                        mem[_2414 + 64] = 0
                        mem[_2414 + 96] = 0
                        mem[_2414 + 128] = 0
                        mem[_2414 + 160] = 0
                        mem[_2414 + 192] = 0
                        mem[_2414 + 224] = 0
                        require idx < mem[96]
                        _2440 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2516 = mem[_2476]
                        require mem[_2476] == mem[_2476 + 18 len 14]
                        _2599 = mem[_2476 + 32]
                        require mem[_2476 + 32] == mem[_2476 + 50 len 14]
                        require mem[_2476 + 64] == mem[_2476 + 92 len 4]
                        _2727 = mem[_2440 + 128]
                        _2728 = mem[_2440 + 160]
                        if mem[_2440 + 140 len 20] == mem[_2440 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if mem[_2440 + 140 len 20] < mem[_2440 + 172 len 20]:
                            if not mem[_2440 + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2440 + 140 len 20] == mem[_2440 + 140 len 20]:
                                _2840 = mem[_2440]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2516)
                                mem[mem[64] + 68] = Mask(112, 0, _2599)
                                require ext_code.size(address(_2840))
                                staticcall address(_2840).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2516 << 144, Mask(112, 0, _2599)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3008 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3008] == mem[_3008]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3008]
                            else:
                                _2842 = mem[_2440]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2599)
                                mem[mem[64] + 68] = Mask(112, 0, _2516)
                                require ext_code.size(address(_2842))
                                staticcall address(_2842).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2599 << 144, Mask(112, 0, _2516)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3009 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3009] == mem[_3009]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3009]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2440 + 140 len 20] == address(_2727)
                        else:
                            if not mem[_2440 + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2440 + 140 len 20] == mem[_2440 + 172 len 20]:
                                _2844 = mem[_2440]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2516)
                                mem[mem[64] + 68] = Mask(112, 0, _2599)
                                require ext_code.size(address(_2844))
                                staticcall address(_2844).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2516 << 144, Mask(112, 0, _2599)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3010 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3010] == mem[_3010]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3010]
                            else:
                                _2846 = mem[_2440]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2599)
                                mem[mem[64] + 68] = Mask(112, 0, _2516)
                                require ext_code.size(address(_2846))
                                staticcall address(_2846).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2599 << 144, Mask(112, 0, _2516)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3011 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3011] == mem[_3011]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3011]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2440 + 140 len 20] == address(_2728)
                        _2389 = mem[96]
                        idx = idx + 1
                        s = mem[(32 * idx) + _1169 + 32]
                        continue 
                    require mem[96] - 1 < mem[_1169]
                    if mem[(32 * mem[96] - 1) + _1169 + 32] <= cd[36]:
                        revert with 0, 'UNI_P'
                    require mem[96]
                    mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                    mem[mem[64] + 36] = cd[36]
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], cd[36]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2641 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2641] == bool(mem[_2641])
                    _3479 = mem[96]
                    s = 0
                    while s < _3479:
                        _3510 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_3510] = 0
                        mem[_3510 + 32] = 0
                        mem[_3510 + 64] = 0
                        mem[_3510 + 96] = 0
                        mem[_3510 + 128] = 0
                        mem[_3510 + 160] = 0
                        mem[_3510 + 192] = 0
                        mem[_3510 + 224] = 0
                        require s < mem[96]
                        if s == mem[96] - 1:
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3630 = mem[(32 * s) + _1169 + 32]
                                _3649 = mem[mem[(32 * s) + 128] + 32]
                                _3650 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3650 + 36] = 0
                                mem[_3650 + 68] = _3630
                                mem[_3650 + 100] = this.address
                                mem[_3650 + 132] = 128
                                mem[_3650 + 164] = mem[_3650]
                                idx = 0
                                while idx < mem[_3650]:
                                    mem[idx + _3650 + 196] = mem[idx + _3650 + 32]
                                    _3479 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3650]) > mem[_3650]:
                                    mem[mem[_3650] + _3650 + 196] = 0
                                require ext_code.size(address(_3649))
                                call address(_3649).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3630, address(this.address), 128, mem[_3650], mem[_3650 + 196 len ceil32(mem[_3650])]
                            else:
                                _3631 = mem[(32 * s) + _1169 + 32]
                                _3651 = mem[mem[(32 * s) + 128] + 32]
                                _3652 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3652 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3652 + 36] = _3631
                                mem[_3652 + 68] = 0
                                mem[_3652 + 100] = this.address
                                mem[_3652 + 132] = 128
                                mem[_3652 + 164] = mem[_3652]
                                idx = 0
                                while idx < mem[_3652]:
                                    mem[idx + _3652 + 196] = mem[idx + _3652 + 32]
                                    _3479 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3652]) > mem[_3652]:
                                    mem[mem[_3652] + _3652 + 196] = 0
                                require ext_code.size(address(_3651))
                                call address(_3651).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3631, 0, address(this.address), 128, mem[_3652], mem[_3652 + 196 len ceil32(mem[_3652])]
                        else:
                            require s + 1 < mem[96]
                            _3542 = mem[mem[(32 * s + 1) + 128] + 32]
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3653 = mem[(32 * s) + _1169 + 32]
                                _3675 = mem[mem[(32 * s) + 128] + 32]
                                _3676 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3676 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3676 + 36] = 0
                                mem[_3676 + 68] = _3653
                                mem[_3676 + 100] = address(_3542)
                                mem[_3676 + 132] = 128
                                mem[_3676 + 164] = mem[_3676]
                                t = 0
                                while t < mem[_3676]:
                                    mem[t + _3676 + 196] = mem[t + _3676 + 32]
                                    _3479 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3676]) > mem[_3676]:
                                    mem[mem[_3676] + _3676 + 196] = 0
                                require ext_code.size(address(_3675))
                                call address(_3675).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3653, address(_3542), 128, mem[_3676], mem[_3676 + 196 len ceil32(mem[_3676])]
                            else:
                                _3654 = mem[(32 * s) + _1169 + 32]
                                _3677 = mem[mem[(32 * s) + 128] + 32]
                                _3678 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3678 + 36] = _3654
                                mem[_3678 + 68] = 0
                                mem[_3678 + 100] = address(_3542)
                                mem[_3678 + 132] = 128
                                mem[_3678 + 164] = mem[_3678]
                                t = 0
                                while t < mem[_3678]:
                                    mem[t + _3678 + 196] = mem[t + _3678 + 32]
                                    _3479 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3678]) > mem[_3678]:
                                    mem[mem[_3678] + _3678 + 196] = 0
                                require ext_code.size(address(_3677))
                                call address(_3677).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3654, 0, address(_3542), 128, mem[_3678], mem[_3678 + 196 len ceil32(mem[_3678])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3479 = mem[96]
                        s = s + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3707] == mem[_3707]
                    if mem[_3707] <= _1162:
                        revert with 0, 'P'
            else:
                mem[mem[64] + 32 len 32 * _1168] = code.data[9486 len 32 * _1168]
                mem[mem[64] + (32 * _1168) + 32] = mem[96]
                mem[64] = mem[64] + (32 * _1168) + (32 * mem[96]) + 64
                if not mem[96]:
                    _2390 = mem[96]
                    idx = 0
                    s = cd[36]
                    while idx < _2390:
                        _2417 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_2417] = 0
                        mem[_2417 + 32] = 0
                        mem[_2417 + 64] = 0
                        mem[_2417 + 96] = 0
                        mem[_2417 + 128] = 0
                        mem[_2417 + 160] = 0
                        mem[_2417 + 192] = 0
                        mem[_2417 + 224] = 0
                        require idx < mem[96]
                        _2446 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2477 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2517 = mem[_2477]
                        require mem[_2477] == mem[_2477 + 18 len 14]
                        _2600 = mem[_2477 + 32]
                        require mem[_2477 + 32] == mem[_2477 + 50 len 14]
                        require mem[_2477 + 64] == mem[_2477 + 92 len 4]
                        _2730 = mem[_2446 + 128]
                        _2731 = mem[_2446 + 160]
                        if mem[_2446 + 140 len 20] == mem[_2446 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if mem[_2446 + 140 len 20] < mem[_2446 + 172 len 20]:
                            if not mem[_2446 + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2446 + 140 len 20] == mem[_2446 + 140 len 20]:
                                _2852 = mem[_2446]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2517)
                                mem[mem[64] + 68] = Mask(112, 0, _2600)
                                require ext_code.size(address(_2852))
                                staticcall address(_2852).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2517 << 144, Mask(112, 0, _2600)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3012 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3012] == mem[_3012]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3012]
                            else:
                                _2854 = mem[_2446]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2600)
                                mem[mem[64] + 68] = Mask(112, 0, _2517)
                                require ext_code.size(address(_2854))
                                staticcall address(_2854).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2600 << 144, Mask(112, 0, _2517)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3013] == mem[_3013]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3013]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2446 + 140 len 20] == address(_2730)
                        else:
                            if not mem[_2446 + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2446 + 140 len 20] == mem[_2446 + 172 len 20]:
                                _2856 = mem[_2446]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2517)
                                mem[mem[64] + 68] = Mask(112, 0, _2600)
                                require ext_code.size(address(_2856))
                                staticcall address(_2856).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2517 << 144, Mask(112, 0, _2600)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3014 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3014] == mem[_3014]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3014]
                            else:
                                _2858 = mem[_2446]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2600)
                                mem[mem[64] + 68] = Mask(112, 0, _2517)
                                require ext_code.size(address(_2858))
                                staticcall address(_2858).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2600 << 144, Mask(112, 0, _2517)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3015 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3015] == mem[_3015]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3015]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2446 + 140 len 20] == address(_2731)
                        _2390 = mem[96]
                        idx = idx + 1
                        s = mem[(32 * idx) + _1169 + 32]
                        continue 
                    require mem[96] - 1 < mem[_1169]
                    if mem[(32 * mem[96] - 1) + _1169 + 32] <= cd[36]:
                        revert with 0, 'UNI_P'
                    require mem[96]
                    mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                    mem[mem[64] + 36] = cd[36]
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], cd[36]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2642] == bool(mem[_2642])
                    _3480 = mem[96]
                    s = 0
                    while s < _3480:
                        _3512 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_3512] = 0
                        mem[_3512 + 32] = 0
                        mem[_3512 + 64] = 0
                        mem[_3512 + 96] = 0
                        mem[_3512 + 128] = 0
                        mem[_3512 + 160] = 0
                        mem[_3512 + 192] = 0
                        mem[_3512 + 224] = 0
                        require s < mem[96]
                        if s == mem[96] - 1:
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3634 = mem[(32 * s) + _1169 + 32]
                                _3655 = mem[mem[(32 * s) + 128] + 32]
                                _3656 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3656 + 36] = 0
                                mem[_3656 + 68] = _3634
                                mem[_3656 + 100] = this.address
                                mem[_3656 + 132] = 128
                                mem[_3656 + 164] = mem[_3656]
                                idx = 0
                                while idx < mem[_3656]:
                                    mem[idx + _3656 + 196] = mem[idx + _3656 + 32]
                                    _3480 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3656]) > mem[_3656]:
                                    mem[mem[_3656] + _3656 + 196] = 0
                                require ext_code.size(address(_3655))
                                call address(_3655).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3634, address(this.address), 128, mem[_3656], mem[_3656 + 196 len ceil32(mem[_3656])]
                            else:
                                _3635 = mem[(32 * s) + _1169 + 32]
                                _3657 = mem[mem[(32 * s) + 128] + 32]
                                _3658 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3658 + 36] = _3635
                                mem[_3658 + 68] = 0
                                mem[_3658 + 100] = this.address
                                mem[_3658 + 132] = 128
                                mem[_3658 + 164] = mem[_3658]
                                idx = 0
                                while idx < mem[_3658]:
                                    mem[idx + _3658 + 196] = mem[idx + _3658 + 32]
                                    _3480 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3658]) > mem[_3658]:
                                    mem[mem[_3658] + _3658 + 196] = 0
                                require ext_code.size(address(_3657))
                                call address(_3657).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3635, 0, address(this.address), 128, mem[_3658], mem[_3658 + 196 len ceil32(mem[_3658])]
                        else:
                            require s + 1 < mem[96]
                            _3545 = mem[mem[(32 * s + 1) + 128] + 32]
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3659 = mem[(32 * s) + _1169 + 32]
                                _3681 = mem[mem[(32 * s) + 128] + 32]
                                _3682 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3682 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3682 + 36] = 0
                                mem[_3682 + 68] = _3659
                                mem[_3682 + 100] = address(_3545)
                                mem[_3682 + 132] = 128
                                mem[_3682 + 164] = mem[_3682]
                                t = 0
                                while t < mem[_3682]:
                                    mem[t + _3682 + 196] = mem[t + _3682 + 32]
                                    _3480 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3682]) > mem[_3682]:
                                    mem[mem[_3682] + _3682 + 196] = 0
                                require ext_code.size(address(_3681))
                                call address(_3681).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3659, address(_3545), 128, mem[_3682], mem[_3682 + 196 len ceil32(mem[_3682])]
                            else:
                                _3660 = mem[(32 * s) + _1169 + 32]
                                _3683 = mem[mem[(32 * s) + 128] + 32]
                                _3684 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3684 + 36] = _3660
                                mem[_3684 + 68] = 0
                                mem[_3684 + 100] = address(_3545)
                                mem[_3684 + 132] = 128
                                mem[_3684 + 164] = mem[_3684]
                                t = 0
                                while t < mem[_3684]:
                                    mem[t + _3684 + 196] = mem[t + _3684 + 32]
                                    _3480 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3684]) > mem[_3684]:
                                    mem[mem[_3684] + _3684 + 196] = 0
                                require ext_code.size(address(_3683))
                                call address(_3683).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3660, 0, address(_3545), 128, mem[_3684], mem[_3684 + 196 len ceil32(mem[_3684])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3480 = mem[96]
                        s = s + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3708] == mem[_3708]
                    if mem[_3708] <= _1162:
                        revert with 0, 'P'
                else:
                    mem[_1169 + (32 * _1168) + 64 len 32 * mem[96]] = code.data[9486 len 32 * mem[96]]
                    _2391 = mem[96]
                    idx = 0
                    s = cd[36]
                    while idx < _2391:
                        _2420 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_2420] = 0
                        mem[_2420 + 32] = 0
                        mem[_2420 + 64] = 0
                        mem[_2420 + 96] = 0
                        mem[_2420 + 128] = 0
                        mem[_2420 + 160] = 0
                        mem[_2420 + 192] = 0
                        mem[_2420 + 224] = 0
                        require idx < mem[96]
                        _2452 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2518 = mem[_2478]
                        require mem[_2478] == mem[_2478 + 18 len 14]
                        _2601 = mem[_2478 + 32]
                        require mem[_2478 + 32] == mem[_2478 + 50 len 14]
                        require mem[_2478 + 64] == mem[_2478 + 92 len 4]
                        _2733 = mem[_2452 + 128]
                        _2734 = mem[_2452 + 160]
                        if mem[_2452 + 140 len 20] == mem[_2452 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if mem[_2452 + 140 len 20] < mem[_2452 + 172 len 20]:
                            if not mem[_2452 + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2452 + 140 len 20] == mem[_2452 + 140 len 20]:
                                _2864 = mem[_2452]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2518)
                                mem[mem[64] + 68] = Mask(112, 0, _2601)
                                require ext_code.size(address(_2864))
                                staticcall address(_2864).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2518 << 144, Mask(112, 0, _2601)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3016 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3016] == mem[_3016]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3016]
                            else:
                                _2866 = mem[_2452]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2601)
                                mem[mem[64] + 68] = Mask(112, 0, _2518)
                                require ext_code.size(address(_2866))
                                staticcall address(_2866).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2601 << 144, Mask(112, 0, _2518)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3017 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3017] == mem[_3017]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3017]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2452 + 140 len 20] == address(_2733)
                        else:
                            if not mem[_2452 + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if mem[_2452 + 140 len 20] == mem[_2452 + 172 len 20]:
                                _2868 = mem[_2452]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2518)
                                mem[mem[64] + 68] = Mask(112, 0, _2601)
                                require ext_code.size(address(_2868))
                                staticcall address(_2868).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2518 << 144, Mask(112, 0, _2601)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3018 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3018] == mem[_3018]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3018]
                            else:
                                _2870 = mem[_2452]
                                mem[mem[64] + 4] = s
                                mem[mem[64] + 36] = Mask(112, 0, _2601)
                                mem[mem[64] + 68] = Mask(112, 0, _2518)
                                require ext_code.size(address(_2870))
                                staticcall address(_2870).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args s, _2601 << 144, Mask(112, 0, _2518)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3019 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3019] == mem[_3019]
                                require idx < mem[_1169]
                                mem[(32 * idx) + _1169 + 32] = mem[_3019]
                            require idx < mem[_1169]
                            require idx < mem[_1169 + (32 * _1168) + 32]
                            mem[(32 * idx) + _1169 + (32 * _1168) + 64] = mem[_2452 + 140 len 20] == address(_2734)
                        _2391 = mem[96]
                        idx = idx + 1
                        s = mem[(32 * idx) + _1169 + 32]
                        continue 
                    require mem[96] - 1 < mem[_1169]
                    if mem[(32 * mem[96] - 1) + _1169 + 32] <= cd[36]:
                        revert with 0, 'UNI_P'
                    require mem[96]
                    mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                    mem[mem[64] + 36] = cd[36]
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], cd[36]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2643] == bool(mem[_2643])
                    _3481 = mem[96]
                    s = 0
                    while s < _3481:
                        _3514 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_3514] = 0
                        mem[_3514 + 32] = 0
                        mem[_3514 + 64] = 0
                        mem[_3514 + 96] = 0
                        mem[_3514 + 128] = 0
                        mem[_3514 + 160] = 0
                        mem[_3514 + 192] = 0
                        mem[_3514 + 224] = 0
                        require s < mem[96]
                        if s == mem[96] - 1:
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3638 = mem[(32 * s) + _1169 + 32]
                                _3661 = mem[mem[(32 * s) + 128] + 32]
                                _3662 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3662 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3662 + 36] = 0
                                mem[_3662 + 68] = _3638
                                mem[_3662 + 100] = this.address
                                mem[_3662 + 132] = 128
                                mem[_3662 + 164] = mem[_3662]
                                idx = 0
                                while idx < mem[_3662]:
                                    mem[idx + _3662 + 196] = mem[idx + _3662 + 32]
                                    _3481 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3662]) > mem[_3662]:
                                    mem[mem[_3662] + _3662 + 196] = 0
                                require ext_code.size(address(_3661))
                                call address(_3661).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3638, address(this.address), 128, mem[_3662], mem[_3662 + 196 len ceil32(mem[_3662])]
                            else:
                                _3639 = mem[(32 * s) + _1169 + 32]
                                _3663 = mem[mem[(32 * s) + 128] + 32]
                                _3664 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3664 + 36] = _3639
                                mem[_3664 + 68] = 0
                                mem[_3664 + 100] = this.address
                                mem[_3664 + 132] = 128
                                mem[_3664 + 164] = mem[_3664]
                                idx = 0
                                while idx < mem[_3664]:
                                    mem[idx + _3664 + 196] = mem[idx + _3664 + 32]
                                    _3481 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3664]) > mem[_3664]:
                                    mem[mem[_3664] + _3664 + 196] = 0
                                require ext_code.size(address(_3663))
                                call address(_3663).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3639, 0, address(this.address), 128, mem[_3664], mem[_3664 + 196 len ceil32(mem[_3664])]
                        else:
                            require s + 1 < mem[96]
                            _3548 = mem[mem[(32 * s + 1) + 128] + 32]
                            require s < mem[_1169 + (32 * _1168) + 32]
                            require s < mem[_1169]
                            if mem[(32 * s) + _1169 + (32 * _1168) + 64]:
                                _3665 = mem[(32 * s) + _1169 + 32]
                                _3687 = mem[mem[(32 * s) + 128] + 32]
                                _3688 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3688 + 36] = 0
                                mem[_3688 + 68] = _3665
                                mem[_3688 + 100] = address(_3548)
                                mem[_3688 + 132] = 128
                                mem[_3688 + 164] = mem[_3688]
                                t = 0
                                while t < mem[_3688]:
                                    mem[t + _3688 + 196] = mem[t + _3688 + 32]
                                    _3481 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3688]) > mem[_3688]:
                                    mem[mem[_3688] + _3688 + 196] = 0
                                require ext_code.size(address(_3687))
                                call address(_3687).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _3665, address(_3548), 128, mem[_3688], mem[_3688 + 196 len ceil32(mem[_3688])]
                            else:
                                _3666 = mem[(32 * s) + _1169 + 32]
                                _3689 = mem[mem[(32 * s) + 128] + 32]
                                _3690 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3690 + 36] = _3666
                                mem[_3690 + 68] = 0
                                mem[_3690 + 100] = address(_3548)
                                mem[_3690 + 132] = 128
                                mem[_3690 + 164] = mem[_3690]
                                t = 0
                                while t < mem[_3690]:
                                    mem[t + _3690 + 196] = mem[t + _3690 + 32]
                                    _3481 = mem[96]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3690]) > mem[_3690]:
                                    mem[mem[_3690] + _3690 + 196] = 0
                                require ext_code.size(address(_3689))
                                call address(_3689).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _3666, 0, address(_3548), 128, mem[_3690], mem[_3690 + 196 len ceil32(mem[_3690])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3481 = mem[96]
                        s = s + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3709 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3709] == mem[_3709]
                    if mem[_3709] <= _1162:
                        revert with 0, 'P'
    if eth.balance(msg.sender) < stor4:
        require ext_code.size(stor0)
        call stor0.0x2e1a7d4d with:
             gas gas_remaining wei
            args stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
}



}
