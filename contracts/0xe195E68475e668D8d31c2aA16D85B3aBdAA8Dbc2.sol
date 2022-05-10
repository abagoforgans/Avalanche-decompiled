contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_5bbacac6(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
    staticcall address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
    staticcall address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg1:
        require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        staticcall address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).getReserves() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * ext_call.return_data[0])
        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * ext_call.return_data[0]) < arg2:
            revert with 0, 'EM'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 196] = this.address
        mem[(7 * ceil32(return_data.size)) + 228] = 128
        mem[(7 * ceil32(return_data.size)) + 260] = 0
        mem[(7 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        call address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    else:
        if ext_call.return_data[0] < arg1:
            revert with 0, 'BI'
        require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        staticcall address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).getReserves() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg1)
        if 997 * arg1 * ext_call.return_data[50 len 14] / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg1) < arg2:
            revert with 0, 'EM'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 164] = 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg1)
        mem[(7 * ceil32(return_data.size)) + 196] = this.address
        mem[(7 * ceil32(return_data.size)) + 228] = 128
        mem[(7 * ceil32(return_data.size)) + 260] = 0
        mem[(7 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        call address(arg3 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg1), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= arg2:
    mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 132] = 32
    mem[(8 * ceil32(return_data.size)) + 164] = 2
    mem[(8 * ceil32(return_data.size)) + 196] = 'OU'
    revert with memory
      from (8 * ceil32(return_data.size)) + 128
       len ceil32(return_data.size) + 100
}

function sub_56992b4d(?) payable {
    require calldata.size - 4 >= 160
    mem[96 len 64] = call.data[calldata.size len 64]
    mem[64] = 224
    mem[160 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = 0
    t = 0
    u = Mask(160, 32, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) >> 96
    while idx < 2:
        require bool(u) < 2
        mem[(32 * bool(u)) + 96] = Mask(1, 1, u)
        if bool(u):
            require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
            staticcall uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if Mask(1, 1, u):
                _72 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _78 = mem[_72]
                require mem[_72] == mem[_72 + 18 len 14]
                _83 = mem[_72 + 32]
                require mem[_72 + 32] == mem[_72 + 50 len 14]
                require mem[_72 + 64] == mem[_72 + 92 len 4]
                if bool(u):
                    require Mask(112, 0, 1000 * mem[_72 + 32]) + (997 * arg2)
                    if 997 * arg2 * mem[_72 + 18 len 14] / Mask(112, 0, 1000 * mem[_72 + 32]) + (997 * arg2) < arg3:
                        revert with 0, 'EM'
                    if not bool(u):
                        idx = idx + 1
                        s = 997 * arg2 * mem[_72 + 18 len 14] / Mask(112, 0, 1000 * mem[_72 + 32]) + (997 * arg2)
                        t = t
                        u = Mask(254, 0, u) * 0.25
                        continue 
                    mem[160] = mem[_72 + 50 len 14]
                    mem[192] = Mask(112, 0, _78)
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(254, 0, u) * 0.25
                    continue 
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                staticcall uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _111 = mem[_101]
                require mem[_101] == mem[_101 + 12 len 20]
                require Mask(112, 0, 1000 * _83) + (997 * arg2)
                if 997 * arg2 * Mask(112, 0, _78) / Mask(112, 0, 1000 * _83) + (997 * arg2) < arg3:
                    revert with 0, 'EM'
                if not bool(u):
                    idx = idx + 1
                    s = 997 * arg2 * Mask(112, 0, _78) / Mask(112, 0, 1000 * _83) + (997 * arg2)
                    t = mem[_101]
                    u = Mask(254, 0, u) * 0.25
                    continue 
                mem[160] = Mask(112, 0, _83)
                mem[192] = Mask(112, 0, _78)
                idx = idx + 1
                s = s
                t = _111
                u = Mask(254, 0, u) * 0.25
                continue 
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _79 = mem[_73]
            require mem[_73] == mem[_73 + 18 len 14]
            _84 = mem[_73 + 32]
            require mem[_73 + 32] == mem[_73 + 50 len 14]
            require mem[_73 + 64] == mem[_73 + 92 len 4]
            if bool(u):
                require Mask(112, 0, 1000 * mem[_73]) + (997 * arg2)
                if 997 * arg2 * mem[_73 + 50 len 14] / Mask(112, 0, 1000 * mem[_73]) + (997 * arg2) < arg3:
                    revert with 0, 'EM'
                if not bool(u):
                    idx = idx + 1
                    s = 997 * arg2 * mem[_73 + 50 len 14] / Mask(112, 0, 1000 * mem[_73]) + (997 * arg2)
                    t = t
                    u = Mask(254, 0, u) * 0.25
                    continue 
                mem[160] = mem[_73 + 18 len 14]
                mem[192] = Mask(112, 0, _84)
                idx = idx + 1
                s = s
                t = t
                u = Mask(254, 0, u) * 0.25
                continue 
            require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
            staticcall uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _112 = mem[_102]
            require mem[_102] == mem[_102 + 12 len 20]
            require Mask(112, 0, 1000 * _79) + (997 * arg2)
            if 997 * arg2 * Mask(112, 0, _84) / Mask(112, 0, 1000 * _79) + (997 * arg2) < arg3:
                revert with 0, 'EM'
            if not bool(u):
                idx = idx + 1
                s = 997 * arg2 * Mask(112, 0, _84) / Mask(112, 0, 1000 * _79) + (997 * arg2)
                t = mem[_102]
                u = Mask(254, 0, u) * 0.25
                continue 
            mem[160] = Mask(112, 0, _79)
            mem[192] = Mask(112, 0, _84)
            idx = idx + 1
            s = s
            t = _112
            u = Mask(254, 0, u) * 0.25
            continue 
        require ext_code.size(address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        staticcall address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if Mask(1, 1, u):
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _80 = mem[_74]
            require mem[_74] == mem[_74 + 18 len 14]
            _85 = mem[_74 + 32]
            require mem[_74 + 32] == mem[_74 + 50 len 14]
            require mem[_74 + 64] == mem[_74 + 92 len 4]
            if bool(u):
                require Mask(112, 0, 1000 * mem[_74 + 32]) + (997 * arg1)
                if 997 * arg1 * mem[_74 + 18 len 14] / Mask(112, 0, 1000 * mem[_74 + 32]) + (997 * arg1) < arg2:
                    revert with 0, 'EM'
                if not bool(u):
                    idx = idx + 1
                    s = 997 * arg1 * mem[_74 + 18 len 14] / Mask(112, 0, 1000 * mem[_74 + 32]) + (997 * arg1)
                    t = t
                    u = Mask(254, 0, u) * 0.25
                    continue 
                mem[160] = mem[_74 + 50 len 14]
                mem[192] = Mask(112, 0, _80)
                idx = idx + 1
                s = s
                t = t
                u = Mask(254, 0, u) * 0.25
                continue 
            require ext_code.size(address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
            staticcall address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_103]
            require mem[_103] == mem[_103 + 12 len 20]
            require Mask(112, 0, 1000 * _85) + (997 * arg1)
            if 997 * arg1 * Mask(112, 0, _80) / Mask(112, 0, 1000 * _85) + (997 * arg1) < arg2:
                revert with 0, 'EM'
            if not bool(u):
                idx = idx + 1
                s = 997 * arg1 * Mask(112, 0, _80) / Mask(112, 0, 1000 * _85) + (997 * arg1)
                t = mem[_103]
                u = Mask(254, 0, u) * 0.25
                continue 
            mem[160] = Mask(112, 0, _85)
            mem[192] = Mask(112, 0, _80)
            idx = idx + 1
            s = s
            t = _113
            u = Mask(254, 0, u) * 0.25
            continue 
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _81 = mem[_75]
        require mem[_75] == mem[_75 + 18 len 14]
        _86 = mem[_75 + 32]
        require mem[_75 + 32] == mem[_75 + 50 len 14]
        require mem[_75 + 64] == mem[_75 + 92 len 4]
        if bool(u):
            require Mask(112, 0, 1000 * mem[_75]) + (997 * arg1)
            if 997 * arg1 * mem[_75 + 50 len 14] / Mask(112, 0, 1000 * mem[_75]) + (997 * arg1) < arg2:
                revert with 0, 'EM'
            if not bool(u):
                idx = idx + 1
                s = 997 * arg1 * mem[_75 + 50 len 14] / Mask(112, 0, 1000 * mem[_75]) + (997 * arg1)
                t = t
                u = Mask(254, 0, u) * 0.25
                continue 
            mem[160] = mem[_75 + 18 len 14]
            mem[192] = Mask(112, 0, _86)
            idx = idx + 1
            s = s
            t = t
            u = Mask(254, 0, u) * 0.25
            continue 
        require ext_code.size(address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
        staticcall address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _114 = mem[_104]
        require mem[_104] == mem[_104 + 12 len 20]
        require Mask(112, 0, 1000 * _81) + (997 * arg1)
        if 997 * arg1 * Mask(112, 0, _86) / Mask(112, 0, 1000 * _81) + (997 * arg1) < arg2:
            revert with 0, 'EM'
        if not bool(u):
            idx = idx + 1
            s = 997 * arg1 * Mask(112, 0, _86) / Mask(112, 0, 1000 * _81) + (997 * arg1)
            t = mem[_104]
            u = Mask(254, 0, u) * 0.25
            continue 
        mem[160] = Mask(112, 0, _81)
        mem[192] = Mask(112, 0, _86)
        idx = idx + 1
        s = s
        t = _114
        u = Mask(254, 0, u) * 0.25
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(t))
    staticcall address(t).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_77]
    require mem[_77] == mem[_77]
    mem[mem[64] + 4] = address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae)
    mem[mem[64] + 36] = arg1
    require ext_code.size(address(t))
    call address(t).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    mem[_105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if mem[96]:
        mem[_105 + 36] = s
        mem[_105 + 68] = 0
        mem[_105 + 100] = uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96
        mem[_105 + 132] = 128
        mem[_105 + 164] = mem[_105]
        mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
        if ceil32(mem[_105]) <= mem[_105]:
            require ext_code.size(address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
            call address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args s, 0, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 192, 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[192]
            _325 = mem[160]
            require (1000 * mem[160]) + (997 * s)
            mem[_105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[128]:
                mem[_105 + 36] = 997 * s * _323 / (1000 * _325) + (997 * s)
                mem[_105 + 68] = 0
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * _323 / (1000 * _325) + (997 * s), 0, address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            else:
                mem[_105 + 36] = 0
                mem[_105 + 68] = 997 * s * _323 / (1000 * _325) + (997 * s)
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * _323 / (1000 * _325) + (997 * s), address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(t))
            staticcall address(t).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] != _82 - arg1:
                revert with 0, 'IN'
            if 997 * s * _323 / (1000 * _325) + (997 * s) < arg3:
                revert with 0, 'OU'
        else:
            mem[_105 + mem[_105] + 196] = 0
            require ext_code.size(address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
            call address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args s, 0, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 192, 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[192]
            _329 = mem[160]
            require (1000 * mem[160]) + (997 * s)
            mem[_105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[128]:
                mem[_105 + 36] = 997 * s * _326 / (1000 * _329) + (997 * s)
                mem[_105 + 68] = 0
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * _326 / (1000 * _329) + (997 * s), 0, address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            else:
                mem[_105 + 36] = 0
                mem[_105 + 68] = 997 * s * _326 / (1000 * _329) + (997 * s)
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * _326 / (1000 * _329) + (997 * s), address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(t))
            staticcall address(t).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] != _82 - arg1:
                revert with 0, 'IN'
            if 997 * s * _326 / (1000 * _329) + (997 * s) < arg3:
                revert with 0, 'OU'
    else:
        mem[_105 + 36] = 0
        mem[_105 + 68] = s
        mem[_105 + 100] = uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96
        mem[_105 + 132] = 128
        mem[_105 + 164] = mem[_105]
        mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
        if ceil32(mem[_105]) <= mem[_105]:
            require ext_code.size(address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
            call address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, s, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 192, 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[192]
            _327 = mem[160]
            require (1000 * mem[160]) + (997 * s)
            mem[_105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[128]:
                mem[_105 + 36] = 997 * s * _324 / (1000 * _327) + (997 * s)
                mem[_105 + 68] = 0
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * _324 / (1000 * _327) + (997 * s), 0, address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            else:
                mem[_105 + 36] = 0
                mem[_105 + 68] = 997 * s * _324 / (1000 * _327) + (997 * s)
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * _324 / (1000 * _327) + (997 * s), address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(t))
            staticcall address(t).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] != _82 - arg1:
                revert with 0, 'IN'
            if 997 * s * _324 / (1000 * _327) + (997 * s) < arg3:
                revert with 0, 'OU'
        else:
            mem[_105 + mem[_105] + 196] = 0
            require ext_code.size(address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae))
            call address(arg4 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, s, arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae << 192, 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _328 = mem[192]
            _330 = mem[160]
            require (1000 * mem[160]) + (997 * s)
            mem[_105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[128]:
                mem[_105 + 36] = 997 * s * _328 / (1000 * _330) + (997 * s)
                mem[_105 + 68] = 0
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * s * _328 / (1000 * _330) + (997 * s), 0, address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            else:
                mem[_105 + 36] = 0
                mem[_105 + 68] = 997 * s * _328 / (1000 * _330) + (997 * s)
                mem[_105 + 100] = this.address
                mem[_105 + 132] = 128
                mem[_105 + 164] = mem[_105]
                mem[_105 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
                if ceil32(mem[_105]) > mem[_105]:
                    mem[_105 + mem[_105] + 196] = 0
                require ext_code.size(uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96)
                call uint64(arg5 xor 0xdcb4b9b4f0e5c76d704d882dcd051f2138f5915b19c3d15730eb99f0aaae) << 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * s * _328 / (1000 * _330) + (997 * s), address(this.address), 128, mem[_105], mem[_105 + 196 len ceil32(mem[_105])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(t))
            staticcall address(t).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] != _82 - arg1:
                revert with 0, 'IN'
            if 997 * s * _328 / (1000 * _330) + (997 * s) < arg3:
                revert with 0, 'OU'
}



}
