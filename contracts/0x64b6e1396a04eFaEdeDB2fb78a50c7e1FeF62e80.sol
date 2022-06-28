contract main {




// =====================  Runtime code  =====================


array of uint256 sub_cedb8a81;
address stor2;

function sub_cedb8a81(?) {
    return sub_cedb8a81[0 len sub_cedb8a81.length]
}

function _fallback() payable {
    revert
}

function startArbitrage(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            mem[196] = stor2
            mem[228] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                revert with 0, '0'
            s = 0
            idx = arg3
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[192] = s
            mem[64] = ceil32(s) + 224
            if not arg2:
                if not arg2:
                    if not s:
                        t = s
                        idx = arg3
                        while idx:
                            require t - 1 < mem[192]
                            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _880 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[192]
                        _882 = mem[192]
                        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if not _882 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _882 + 32]
                        mem[floor32(_882) + mem[64] + 68] = mem[floor32(_882) + mem[64] + -(_882 % 32) + 100 len _882 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_882) + _880 + -mem[64] + 100
                    mem[224 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg3
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _883 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _885 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _885 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _885 + 32]
                    mem[floor32(_885) + mem[64] + 68] = mem[floor32(_885) + mem[64] + -(_885 % 32) + 100 len _885 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_885) + _883 + -mem[64] + 100
                if not s:
                    t = s
                    idx = arg3
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _888 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _888 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _888 + 32]
                    mem[floor32(_888) + mem[64] + 68] = mem[floor32(_888) + mem[64] + -(_888 % 32) + 100 len _888 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_888) + 64]
                mem[224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _889 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _891 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _891 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _891 + 32]
                mem[floor32(_891) + mem[64] + 68] = mem[floor32(_891) + mem[64] + -(_891 % 32) + 100 len _891 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_891) + _889 + -mem[64] + 100
            if not arg2:
                if not s:
                    t = s
                    idx = arg3
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _892 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _894 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _894 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _894 + 32]
                    mem[floor32(_894) + mem[64] + 68] = mem[floor32(_894) + mem[64] + -(_894 % 32) + 100 len _894 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_894) + _892 + -mem[64] + 100
                mem[224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _897 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _897 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _897 + 32]
                mem[floor32(_897) + mem[64] + 68] = mem[floor32(_897) + mem[64] + -(_897 % 32) + 100 len _897 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_897) + 64]
            if not s:
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _900 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _900 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _900 + 32]
                mem[floor32(_900) + mem[64] + 68] = mem[floor32(_900) + mem[64] + -(_900 % 32) + 100 len _900 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_900) + 64]
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg3
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _901 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _903 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _903 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _903 + 32]
            mem[floor32(_903) + mem[64] + 68] = mem[floor32(_903) + mem[64] + -(_903 % 32) + 100 len _903 % 32]
            revert with memory
              from mem[64]
               len floor32(_903) + _901 + -mem[64] + 100
        if arg3:
            revert with 0, 'One amount need to be 0!'
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            mem[196] = stor2
            mem[228] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                revert with 0, '0'
            s = 0
            idx = arg3
            while idx:
                s = s + 1
                idx = idx / 10
                continue 
            require s <= test266151307()
            mem[192] = s
            mem[64] = ceil32(s) + 224
            if not arg2:
                if arg2:
                    if not s:
                        t = s
                        idx = arg3
                        while idx:
                            require t - 1 < mem[192]
                            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[192]
                        _912 = mem[192]
                        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if not _912 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _912 + 32]
                        mem[floor32(_912) + mem[64] + 68] = mem[floor32(_912) + mem[64] + -(_912 % 32) + 100 len _912 % 32]
                        revert with 0, 32, mem[mem[64] + 36 len floor32(_912) + 64]
                    mem[224 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg3
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _915 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _915 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _915 + 32]
                    mem[floor32(_915) + mem[64] + 68] = mem[floor32(_915) + mem[64] + -(_915 % 32) + 100 len _915 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_915) + 64]
                if not s:
                    t = s
                    idx = arg3
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _904 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _906 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _906 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _906 + 32]
                    mem[floor32(_906) + mem[64] + 68] = mem[floor32(_906) + mem[64] + -(_906 % 32) + 100 len _906 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_906) + _904 + -mem[64] + 100
                mem[224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _907 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _909 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _909 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _909 + 32]
                mem[floor32(_909) + mem[64] + 68] = mem[floor32(_909) + mem[64] + -(_909 % 32) + 100 len _909 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_909) + _907 + -mem[64] + 100
            if not arg2:
                if not s:
                    t = s
                    idx = arg3
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _918 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _918 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _918 + 32]
                    mem[floor32(_918) + mem[64] + 68] = mem[floor32(_918) + mem[64] + -(_918 % 32) + 100 len _918 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_918) + 64]
                mem[224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _919 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _921 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _921 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _921 + 32]
                mem[floor32(_921) + mem[64] + 68] = mem[floor32(_921) + mem[64] + -(_921 % 32) + 100 len _921 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_921) + _919 + -mem[64] + 100
            if not s:
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _924 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _924 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _924 + 32]
                mem[floor32(_924) + mem[64] + 68] = mem[floor32(_924) + mem[64] + -(_924 % 32) + 100 len _924 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_924) + 64]
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg3
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _925 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _927 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _927 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _927 + 32]
            mem[floor32(_927) + mem[64] + 68] = mem[floor32(_927) + mem[64] + -(_927 % 32) + 100 len _927 % 32]
            revert with memory
              from mem[64]
               len floor32(_927) + _925 + -mem[64] + 100
        mem[128] = address(ext_call.return_data[0])
        mem[160] = address(ext_call.return_data[0])
        mem[196] = stor2
        mem[228] = arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            revert with 0, '0'
        s = 0
        idx = arg3
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[192] = s
        mem[64] = ceil32(s) + 224
        if not arg2:
            if arg2:
                if not s:
                    t = s
                    idx = arg3
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _936 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _936 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _936 + 32]
                    mem[floor32(_936) + mem[64] + 68] = mem[floor32(_936) + mem[64] + -(_936 % 32) + 100 len _936 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_936) + 64]
                mem[224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _939 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _939 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _939 + 32]
                mem[floor32(_939) + mem[64] + 68] = mem[floor32(_939) + mem[64] + -(_939 % 32) + 100 len _939 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_939) + 64]
            if not s:
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _928 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _930 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _930 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _930 + 32]
                mem[floor32(_930) + mem[64] + 68] = mem[floor32(_930) + mem[64] + -(_930 % 32) + 100 len _930 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_930) + _928 + -mem[64] + 100
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg3
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _931 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _933 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _933 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _933 + 32]
            mem[floor32(_933) + mem[64] + 68] = mem[floor32(_933) + mem[64] + -(_933 % 32) + 100 len _933 % 32]
            revert with memory
              from mem[64]
               len floor32(_933) + _931 + -mem[64] + 100
        if not arg2:
            if not s:
                t = s
                idx = arg3
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _940 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _942 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _942 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _942 + 32]
                mem[floor32(_942) + mem[64] + 68] = mem[floor32(_942) + mem[64] + -(_942 % 32) + 100 len _942 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_942) + _940 + -mem[64] + 100
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg3
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _945 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _945 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _945 + 32]
            mem[floor32(_945) + mem[64] + 68] = mem[floor32(_945) + mem[64] + -(_945 % 32) + 100 len _945 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_945) + 64]
        if not s:
            t = s
            idx = arg3
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _946 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _948 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _948 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _948 + 32]
            mem[floor32(_948) + mem[64] + 68] = mem[floor32(_948) + mem[64] + -(_948 % 32) + 100 len _948 % 32]
            revert with memory
              from mem[64]
               len floor32(_948) + _946 + -mem[64] + 100
        mem[224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg3
        while idx:
            require t - 1 < mem[192]
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _949 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[192]
        _951 = mem[192]
        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if not _951 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _951 + 32]
        mem[floor32(_951) + mem[64] + 68] = mem[floor32(_951) + mem[64] + -(_951 % 32) + 100 len _951 % 32]
        revert with memory
          from mem[64]
           len floor32(_951) + _949 + -mem[64] + 100
    if not arg2:
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = address(ext_call.return_data[0])
        mem[196] = stor2
        mem[228] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            revert with 0, '0'
        s = 0
        idx = arg2
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[192] = s
        mem[64] = ceil32(s) + 224
        if not arg2:
            if not arg2:
                if not s:
                    t = s
                    idx = arg2
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _954 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _954 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _954 + 32]
                    mem[floor32(_954) + mem[64] + 68] = mem[floor32(_954) + mem[64] + -(_954 % 32) + 100 len _954 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_954) + 64]
                mem[224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg2
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _955 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _957 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _957 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _957 + 32]
                mem[floor32(_957) + mem[64] + 68] = mem[floor32(_957) + mem[64] + -(_957 % 32) + 100 len _957 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_957) + _955 + -mem[64] + 100
            if not s:
                t = s
                idx = arg2
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _958 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _960 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _960 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _960 + 32]
                mem[floor32(_960) + mem[64] + 68] = mem[floor32(_960) + mem[64] + -(_960 % 32) + 100 len _960 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_960) + _958 + -mem[64] + 100
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _961 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _963 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _963 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _963 + 32]
            mem[floor32(_963) + mem[64] + 68] = mem[floor32(_963) + mem[64] + -(_963 % 32) + 100 len _963 % 32]
            revert with memory
              from mem[64]
               len floor32(_963) + _961 + -mem[64] + 100
        if not arg2:
            if not s:
                t = s
                idx = arg2
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _966 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _966 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _966 + 32]
                mem[floor32(_966) + mem[64] + 68] = mem[floor32(_966) + mem[64] + -(_966 % 32) + 100 len _966 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_966) + _964 + -mem[64] + 100
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _967 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _969 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _969 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _969 + 32]
            mem[floor32(_969) + mem[64] + 68] = mem[floor32(_969) + mem[64] + -(_969 % 32) + 100 len _969 % 32]
            revert with memory
              from mem[64]
               len floor32(_969) + _967 + -mem[64] + 100
        if not s:
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _970 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _972 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _972 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _972 + 32]
            mem[floor32(_972) + mem[64] + 68] = mem[floor32(_972) + mem[64] + -(_972 % 32) + 100 len _972 % 32]
            revert with memory
              from mem[64]
               len floor32(_972) + _970 + -mem[64] + 100
        mem[224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg2
        while idx:
            require t - 1 < mem[192]
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _973 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[192]
        _975 = mem[192]
        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if not _975 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _975 + 32]
        mem[floor32(_975) + mem[64] + 68] = mem[floor32(_975) + mem[64] + -(_975 % 32) + 100 len _975 % 32]
        revert with memory
          from mem[64]
           len floor32(_975) + _973 + -mem[64] + 100
    if arg3:
        revert with 0, 'One amount need to be 0!'
    if not arg2:
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = address(ext_call.return_data[0])
        mem[196] = stor2
        mem[228] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            revert with 0, '0'
        s = 0
        idx = arg2
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[192] = s
        mem[64] = ceil32(s) + 224
        if not arg2:
            if arg2:
                if not s:
                    t = s
                    idx = arg2
                    while idx:
                        require t - 1 < mem[192]
                        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[192]
                    _984 = mem[192]
                    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if not _984 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _984 + 32]
                    mem[floor32(_984) + mem[64] + 68] = mem[floor32(_984) + mem[64] + -(_984 % 32) + 100 len _984 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_984) + 64]
                mem[224 len s] = call.data[calldata.size len s]
                t = s
                idx = arg2
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _987 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _987 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _987 + 32]
                mem[floor32(_987) + mem[64] + 68] = mem[floor32(_987) + mem[64] + -(_987 % 32) + 100 len _987 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_987) + 64]
            if not s:
                t = s
                idx = arg2
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _976 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _978 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _978 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _978 + 32]
                mem[floor32(_978) + mem[64] + 68] = mem[floor32(_978) + mem[64] + -(_978 % 32) + 100 len _978 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_978) + _976 + -mem[64] + 100
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _979 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _981 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _981 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _981 + 32]
            mem[floor32(_981) + mem[64] + 68] = mem[floor32(_981) + mem[64] + -(_981 % 32) + 100 len _981 % 32]
            revert with memory
              from mem[64]
               len floor32(_981) + _979 + -mem[64] + 100
        if not arg2:
            if not s:
                t = s
                idx = arg2
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _988 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _990 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _990 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _990 + 32]
                mem[floor32(_990) + mem[64] + 68] = mem[floor32(_990) + mem[64] + -(_990 % 32) + 100 len _990 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_990) + _988 + -mem[64] + 100
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _991 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _993 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _993 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _993 + 32]
            mem[floor32(_993) + mem[64] + 68] = mem[floor32(_993) + mem[64] + -(_993 % 32) + 100 len _993 % 32]
            revert with memory
              from mem[64]
               len floor32(_993) + _991 + -mem[64] + 100
        if not s:
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _994 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _996 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _996 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _996 + 32]
            mem[floor32(_996) + mem[64] + 68] = mem[floor32(_996) + mem[64] + -(_996 % 32) + 100 len _996 % 32]
            revert with memory
              from mem[64]
               len floor32(_996) + _994 + -mem[64] + 100
        mem[224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg2
        while idx:
            require t - 1 < mem[192]
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _997 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[192]
        _999 = mem[192]
        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if not _999 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _999 + 32]
        mem[floor32(_999) + mem[64] + 68] = mem[floor32(_999) + mem[64] + -(_999 % 32) + 100 len _999 % 32]
        revert with memory
          from mem[64]
           len floor32(_999) + _997 + -mem[64] + 100
    mem[128] = address(ext_call.return_data[0])
    mem[160] = address(ext_call.return_data[0])
    mem[196] = stor2
    mem[228] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        revert with 0, '0'
    s = 0
    idx = arg2
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not arg2:
        if not arg2:
            if not s:
                t = s
                idx = arg2
                while idx:
                    require t - 1 < mem[192]
                    mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1000 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[192]
                _1002 = mem[192]
                mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if not _1002 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _1002 + 32]
                mem[floor32(_1002) + mem[64] + 68] = mem[floor32(_1002) + mem[64] + -(_1002 % 32) + 100 len _1002 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1002) + _1000 + -mem[64] + 100
            mem[224 len s] = call.data[calldata.size len s]
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1003 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _1005 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _1005 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1005 + 32]
            mem[floor32(_1005) + mem[64] + 68] = mem[floor32(_1005) + mem[64] + -(_1005 % 32) + 100 len _1005 % 32]
            revert with memory
              from mem[64]
               len floor32(_1005) + _1003 + -mem[64] + 100
        if not s:
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1006 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _1008 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _1008 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1008 + 32]
            mem[floor32(_1008) + mem[64] + 68] = mem[floor32(_1008) + mem[64] + -(_1008 % 32) + 100 len _1008 % 32]
            revert with memory
              from mem[64]
               len floor32(_1008) + _1006 + -mem[64] + 100
        mem[224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg2
        while idx:
            require t - 1 < mem[192]
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1009 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[192]
        _1011 = mem[192]
        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if not _1011 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1011 + 32]
        mem[floor32(_1011) + mem[64] + 68] = mem[floor32(_1011) + mem[64] + -(_1011 % 32) + 100 len _1011 % 32]
        revert with memory
          from mem[64]
           len floor32(_1011) + _1009 + -mem[64] + 100
    if not arg2:
        if not s:
            t = s
            idx = arg2
            while idx:
                require t - 1 < mem[192]
                mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1012 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[192]
            _1014 = mem[192]
            mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if not _1014 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1014 + 32]
            mem[floor32(_1014) + mem[64] + 68] = mem[floor32(_1014) + mem[64] + -(_1014 % 32) + 100 len _1014 % 32]
            revert with memory
              from mem[64]
               len floor32(_1014) + _1012 + -mem[64] + 100
        mem[224 len s] = call.data[calldata.size len s]
        t = s
        idx = arg2
        while idx:
            require t - 1 < mem[192]
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1015 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[192]
        _1017 = mem[192]
        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if not _1017 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1017 + 32]
        mem[floor32(_1017) + mem[64] + 68] = mem[floor32(_1017) + mem[64] + -(_1017 % 32) + 100 len _1017 % 32]
        revert with memory
          from mem[64]
           len floor32(_1017) + _1015 + -mem[64] + 100
    if not s:
        t = s
        idx = arg2
        while idx:
            require t - 1 < mem[192]
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[192]
        _1020 = mem[192]
        mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if not _1020 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1020 + 32]
        mem[floor32(_1020) + mem[64] + 68] = mem[floor32(_1020) + mem[64] + -(_1020 % 32) + 100 len _1020 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1020) + 64]
    mem[224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg2
    while idx:
        require t - 1 < mem[192]
        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1021 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[192]
    _1023 = mem[192]
    mem[mem[64] + 68 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
    if not _1023 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _1023 + 32]
    mem[floor32(_1023) + mem[64] + 68] = mem[floor32(_1023) + mem[64] + -(_1023 % 32) + 100 len _1023 % 32]
    revert with memory
      from mem[64]
       len floor32(_1023) + _1021 + -mem[64] + 100
}



}
