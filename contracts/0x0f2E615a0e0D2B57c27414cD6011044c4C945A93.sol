contract main {




// =====================  Runtime code  =====================


uint8 stor0;

function verbosity() payable {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function swapVerbosity() payable {
    if 0xa289767f42b57c8fa95ccb8c120da9462b4eb4d5 != msg.sender:
        revert with 0, 'Caller is not target owner'
    if not stor0:
        stor0 = 1
    else:
        stor0 = 0
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
        staticcall 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _68 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _77 = mem[_68 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_68 + 192])] = mem[_68 + 224 len floor32(mem[_68 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _77) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _77) + ceil32(return_data.size) + 224
           len 32
    if arg2 != 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
        staticcall 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _70 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _78 = mem[_70 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_70 + 224])] = mem[_70 + 256 len floor32(mem[_70 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        mem[(32 * _78) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
        return memory
          from (32 * _78) + ceil32(return_data.size) + 256
           len 32
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
    staticcall 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _72 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _79 = mem[_72 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_72 + 192])] = mem[_72 + 224 len floor32(mem[_72 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _79) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _79) + ceil32(return_data.size) + 224
       len 32
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    mem[164] = 20 * arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 20 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff, 20 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270:
        mem[96] = 2
        mem[64] = 192
        mem[128] = arg1
        mem[160] = arg2
        idx = 0
        while idx < 20:
            if not stor0:
                _190 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 100] = 0xa289767f42b57c8fa95ccb8c120da9462b4eb4d5
                mem[mem[64] + 132] = block.timestamp + 600
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
                call 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _190 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _379 = mem[_373]
                require mem[_373] <= 4294967296
                require mem[_373] + 32 <= return_data.size
                require mem[mem[_373] + _373] <= 4294967296 and mem[_373] + (32 * mem[mem[_373] + _373]) + 32 <= return_data.size
                mem[_373 + ceil32(return_data.size)] = mem[mem[_373] + _373]
                _412 = mem[_379 + _373]
                s = 0
                while s < 32 * _412:
                    mem[_373 + ceil32(return_data.size) + s + 32] = mem[_379 + _373 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _412) + _373 + ceil32(return_data.size) + 32
                mem[(32 * _412) + _373 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _412) + _373 + ceil32(return_data.size) + 128] = 7
                mem[(32 * _412) + _373 + ceil32(return_data.size) + 160] = 'Success'
                mem[(32 * _412) + _373 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _412) + _373 + ceil32(return_data.size) + 192] = mem[_373 + ceil32(return_data.size)]
                s = 0
                while s < 32 * mem[_373 + ceil32(return_data.size)]:
                    mem[(32 * _412) + _373 + ceil32(return_data.size) + s + 224] = mem[_373 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                mem[(32 * _412) + _373 + ceil32(return_data.size) + 96] = (32 * mem[_373 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_373 + ceil32(return_data.size)]) + (32 * _412) + _373 + ceil32(return_data.size) + 224] = mem[96]
                _617 = mem[96]
                s = 0
                while s < 32 * _617:
                    mem[(32 * mem[_373 + ceil32(return_data.size)]) + (32 * _412) + _373 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_373 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_373 + ceil32(return_data.size)], mem[(32 * _412) + _373 + ceil32(return_data.size) + 224 len (32 * _617) + (32 * mem[_373 + ceil32(return_data.size)]) + 32]
                s = floor32(_617) + 1
                continue 
            _193 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = arg4
            mem[mem[64] + 100] = 0xa289767f42b57c8fa95ccb8c120da9462b4eb4d5
            mem[mem[64] + 132] = block.timestamp + 600
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
            call 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _193 + -mem[64] + 192]
            if ext_call.success:
                _374 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _384 = mem[_374]
                require mem[_374] <= 4294967296
                require mem[_374] + 32 <= return_data.size
                require mem[mem[_374] + _374] <= 4294967296 and mem[_374] + (32 * mem[mem[_374] + _374]) + 32 <= return_data.size
                mem[_374 + ceil32(return_data.size)] = mem[mem[_374] + _374]
                _413 = mem[_384 + _374]
                s = 0
                while s < 32 * _413:
                    mem[_374 + ceil32(return_data.size) + s + 32] = mem[_384 + _374 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _413) + _374 + ceil32(return_data.size) + 32
                mem[(32 * _413) + _374 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _413) + _374 + ceil32(return_data.size) + 128] = 7
                mem[(32 * _413) + _374 + ceil32(return_data.size) + 160] = 'Success'
                mem[(32 * _413) + _374 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _413) + _374 + ceil32(return_data.size) + 192] = mem[_374 + ceil32(return_data.size)]
                s = 0
                while s < 32 * mem[_374 + ceil32(return_data.size)]:
                    mem[(32 * _413) + _374 + ceil32(return_data.size) + s + 224] = mem[_374 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                mem[(32 * _413) + _374 + ceil32(return_data.size) + 96] = (32 * mem[_374 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_374 + ceil32(return_data.size)]) + (32 * _413) + _374 + ceil32(return_data.size) + 224] = mem[96]
                _624 = mem[96]
                s = 0
                while s < 32 * _624:
                    mem[(32 * mem[_374 + ceil32(return_data.size)]) + (32 * _413) + _374 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_374 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_374 + ceil32(return_data.size)], mem[(32 * _413) + _374 + ceil32(return_data.size) + 224 len (32 * _624) + (32 * mem[_374 + ceil32(return_data.size)]) + 32]
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _383 = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 100] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
            staticcall 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _383) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _556 = mem[_538]
            require mem[_538] <= 4294967296
            require mem[_538] + 32 <= return_data.size
            require mem[mem[_538] + _538] <= 4294967296 and mem[_538] + (32 * mem[mem[_538] + _538]) + 32 <= return_data.size
            mem[_538 + ceil32(return_data.size)] = mem[mem[_538] + _538]
            _580 = mem[_556 + _538]
            s = 0
            while s < 32 * _580:
                mem[_538 + ceil32(return_data.size) + s + 32] = mem[_556 + _538 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _580) + _538 + ceil32(return_data.size) + 32
            mem[(32 * _580) + _538 + ceil32(return_data.size) + 32] = 96
            mem[(32 * _580) + _538 + ceil32(return_data.size) + 128] = 6
            mem[(32 * _580) + _538 + ceil32(return_data.size) + 160] = 'Failed'
            mem[(32 * _580) + _538 + ceil32(return_data.size) + 64] = 160
            mem[(32 * _580) + _538 + ceil32(return_data.size) + 192] = mem[_538 + ceil32(return_data.size)]
            idx = 0
            while idx < 32 * mem[_538 + ceil32(return_data.size)]:
                mem[(32 * _580) + _538 + ceil32(return_data.size) + idx + 224] = mem[_538 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            mem[(32 * _580) + _538 + ceil32(return_data.size) + 96] = (32 * mem[_538 + ceil32(return_data.size)]) + 192
            mem[(32 * mem[_538 + ceil32(return_data.size)]) + (32 * _580) + _538 + ceil32(return_data.size) + 224] = mem[96]
            _676 = mem[96]
            idx = 0
            while idx < 32 * _676:
                mem[(32 * mem[_538 + ceil32(return_data.size)]) + (32 * _580) + _538 + ceil32(return_data.size) + idx + 256] = mem[idx + 128]
                idx = idx + 32
                continue 
            emit 0x47286a0b: 96, 160, (32 * mem[_538 + ceil32(return_data.size)]) + 192, 6, 'Failed', mem[_538 + ceil32(return_data.size)], mem[(32 * _580) + _538 + ceil32(return_data.size) + 224 len (32 * _676) + (32 * mem[_538 + ceil32(return_data.size)]) + 32]
            s = floor32(_580) + 1
            continue 
    else:
        if arg2 == 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270:
            mem[96] = 2
            mem[64] = 192
            mem[128] = arg1
            mem[160] = arg2
            idx = 0
            while idx < 20:
                if not stor0:
                    _202 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = arg4
                    mem[mem[64] + 100] = 0xa289767f42b57c8fa95ccb8c120da9462b4eb4d5
                    mem[mem[64] + 132] = block.timestamp + 600
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
                    call 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _202 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _377 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _393 = mem[_377]
                    require mem[_377] <= 4294967296
                    require mem[_377] + 32 <= return_data.size
                    require mem[mem[_377] + _377] <= 4294967296 and mem[_377] + (32 * mem[mem[_377] + _377]) + 32 <= return_data.size
                    mem[_377 + ceil32(return_data.size)] = mem[mem[_377] + _377]
                    _416 = mem[_393 + _377]
                    s = 0
                    while s < 32 * _416:
                        mem[_377 + ceil32(return_data.size) + s + 32] = mem[_393 + _377 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _416) + _377 + ceil32(return_data.size) + 32
                    mem[(32 * _416) + _377 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _416) + _377 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _416) + _377 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _416) + _377 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _416) + _377 + ceil32(return_data.size) + 192] = mem[_377 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_377 + ceil32(return_data.size)]:
                        mem[(32 * _416) + _377 + ceil32(return_data.size) + s + 224] = mem[_377 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _416) + _377 + ceil32(return_data.size) + 96] = (32 * mem[_377 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_377 + ceil32(return_data.size)]) + (32 * _416) + _377 + ceil32(return_data.size) + 224] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[(32 * mem[_377 + ceil32(return_data.size)]) + (32 * _416) + _377 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_377 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_377 + ceil32(return_data.size)], mem[(32 * _416) + _377 + ceil32(return_data.size) + 224 len (32 * mem[96]) + (32 * mem[_377 + ceil32(return_data.size)]) + 32]
                    s = floor32(mem[96]) + 1
                    continue 
                _205 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 100] = 0xa289767f42b57c8fa95ccb8c120da9462b4eb4d5
                mem[mem[64] + 132] = block.timestamp + 600
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
                call 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _205 + -mem[64] + 192]
                if ext_call.success:
                    _378 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _398 = mem[_378]
                    require mem[_378] <= 4294967296
                    require mem[_378] + 32 <= return_data.size
                    require mem[mem[_378] + _378] <= 4294967296 and mem[_378] + (32 * mem[mem[_378] + _378]) + 32 <= return_data.size
                    mem[_378 + ceil32(return_data.size)] = mem[mem[_378] + _378]
                    _417 = mem[_398 + _378]
                    s = 0
                    while s < 32 * _417:
                        mem[_378 + ceil32(return_data.size) + s + 32] = mem[_398 + _378 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _417) + _378 + ceil32(return_data.size) + 32
                    mem[(32 * _417) + _378 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _417) + _378 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _417) + _378 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _417) + _378 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _417) + _378 + ceil32(return_data.size) + 192] = mem[_378 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_378 + ceil32(return_data.size)]:
                        mem[(32 * _417) + _378 + ceil32(return_data.size) + s + 224] = mem[_378 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _417) + _378 + ceil32(return_data.size) + 96] = (32 * mem[_378 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_378 + ceil32(return_data.size)]) + (32 * _417) + _378 + ceil32(return_data.size) + 224] = mem[96]
                    _644 = mem[96]
                    s = 0
                    while s < 32 * _644:
                        mem[(32 * mem[_378 + ceil32(return_data.size)]) + (32 * _417) + _378 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_378 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_378 + ceil32(return_data.size)], mem[(32 * _417) + _378 + ceil32(return_data.size) + 224 len (32 * _644) + (32 * mem[_378 + ceil32(return_data.size)]) + 32]
                    idx = idx + 1
                    continue 
                _395 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _397 = mem[96]
                s = 0
                while s < 32 * _397:
                    mem[mem[64] + s + 100] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
                staticcall 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _397) + _395 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _560 = mem[_552]
                require mem[_552] <= 4294967296
                require mem[_552] + 32 <= return_data.size
                require mem[mem[_552] + _552] <= 4294967296 and mem[_552] + (32 * mem[mem[_552] + _552]) + 32 <= return_data.size
                mem[_552 + ceil32(return_data.size)] = mem[mem[_552] + _552]
                _586 = mem[_560 + _552]
                s = 0
                while s < 32 * _586:
                    mem[_552 + ceil32(return_data.size) + s + 32] = mem[_560 + _552 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _586) + _552 + ceil32(return_data.size) + 32
                mem[(32 * _586) + _552 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _586) + _552 + ceil32(return_data.size) + 128] = 6
                mem[(32 * _586) + _552 + ceil32(return_data.size) + 160] = 'Failed'
                mem[(32 * _586) + _552 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _586) + _552 + ceil32(return_data.size) + 192] = mem[_552 + ceil32(return_data.size)]
                idx = 0
                while idx < 32 * mem[_552 + ceil32(return_data.size)]:
                    mem[(32 * _586) + _552 + ceil32(return_data.size) + idx + 224] = mem[_552 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                mem[(32 * _586) + _552 + ceil32(return_data.size) + 96] = (32 * mem[_552 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_552 + ceil32(return_data.size)]) + (32 * _586) + _552 + ceil32(return_data.size) + 224] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * mem[_552 + ceil32(return_data.size)]) + (32 * _586) + _552 + ceil32(return_data.size) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_552 + ceil32(return_data.size)]) + 192, 6, 'Failed', mem[_552 + ceil32(return_data.size)], mem[(32 * _586) + _552 + ceil32(return_data.size) + 224 len (32 * mem[96]) + (32 * mem[_552 + ceil32(return_data.size)]) + 32]
                s = floor32(_586) + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = arg1
            mem[160] = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270
            mem[192] = arg2
            idx = 0
            while idx < 20:
                if not stor0:
                    _196 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = arg4
                    mem[mem[64] + 100] = 0xa289767f42b57c8fa95ccb8c120da9462b4eb4d5
                    mem[mem[64] + 132] = block.timestamp + 600
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
                    call 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _196 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _375 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _386 = mem[_375]
                    require mem[_375] <= 4294967296
                    require mem[_375] + 32 <= return_data.size
                    require mem[mem[_375] + _375] <= 4294967296 and mem[_375] + (32 * mem[mem[_375] + _375]) + 32 <= return_data.size
                    mem[_375 + ceil32(return_data.size)] = mem[mem[_375] + _375]
                    _414 = mem[_386 + _375]
                    s = 0
                    while s < 32 * _414:
                        mem[_375 + ceil32(return_data.size) + s + 32] = mem[_386 + _375 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _414) + _375 + ceil32(return_data.size) + 32
                    mem[(32 * _414) + _375 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _414) + _375 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _414) + _375 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _414) + _375 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _414) + _375 + ceil32(return_data.size) + 192] = mem[_375 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_375 + ceil32(return_data.size)]:
                        mem[(32 * _414) + _375 + ceil32(return_data.size) + s + 224] = mem[_375 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _414) + _375 + ceil32(return_data.size) + 96] = (32 * mem[_375 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_375 + ceil32(return_data.size)]) + (32 * _414) + _375 + ceil32(return_data.size) + 224] = mem[96]
                    _627 = mem[96]
                    s = 0
                    while s < 32 * _627:
                        mem[(32 * mem[_375 + ceil32(return_data.size)]) + (32 * _414) + _375 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_375 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_375 + ceil32(return_data.size)], mem[(32 * _414) + _375 + ceil32(return_data.size) + 224 len (32 * _627) + (32 * mem[_375 + ceil32(return_data.size)]) + 32]
                    s = floor32(_627) + 1
                    continue 
                _199 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 100] = 0xa289767f42b57c8fa95ccb8c120da9462b4eb4d5
                mem[mem[64] + 132] = block.timestamp + 600
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
                call 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _199 + -mem[64] + 192]
                if ext_call.success:
                    _376 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _391 = mem[_376]
                    require mem[_376] <= 4294967296
                    require mem[_376] + 32 <= return_data.size
                    require mem[mem[_376] + _376] <= 4294967296 and mem[_376] + (32 * mem[mem[_376] + _376]) + 32 <= return_data.size
                    mem[_376 + ceil32(return_data.size)] = mem[mem[_376] + _376]
                    _415 = mem[_391 + _376]
                    s = 0
                    while s < 32 * _415:
                        mem[_376 + ceil32(return_data.size) + s + 32] = mem[_391 + _376 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _415) + _376 + ceil32(return_data.size) + 32
                    mem[(32 * _415) + _376 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _415) + _376 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _415) + _376 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _415) + _376 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _415) + _376 + ceil32(return_data.size) + 192] = mem[_376 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_376 + ceil32(return_data.size)]:
                        mem[(32 * _415) + _376 + ceil32(return_data.size) + s + 224] = mem[_376 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _415) + _376 + ceil32(return_data.size) + 96] = (32 * mem[_376 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_376 + ceil32(return_data.size)]) + (32 * _415) + _376 + ceil32(return_data.size) + 224] = mem[96]
                    _634 = mem[96]
                    s = 0
                    while s < 32 * _634:
                        mem[(32 * mem[_376 + ceil32(return_data.size)]) + (32 * _415) + _376 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_376 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_376 + ceil32(return_data.size)], mem[(32 * _415) + _376 + ceil32(return_data.size) + 224 len (32 * _634) + (32 * mem[_376 + ceil32(return_data.size)]) + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _390 = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 100] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff)
                staticcall 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _390) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _545 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _558 = mem[_545]
                require mem[_545] <= 4294967296
                require mem[_545] + 32 <= return_data.size
                require mem[mem[_545] + _545] <= 4294967296 and mem[_545] + (32 * mem[mem[_545] + _545]) + 32 <= return_data.size
                mem[_545 + ceil32(return_data.size)] = mem[mem[_545] + _545]
                _583 = mem[_558 + _545]
                s = 0
                while s < 32 * _583:
                    mem[_545 + ceil32(return_data.size) + s + 32] = mem[_558 + _545 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _583) + _545 + ceil32(return_data.size) + 32
                mem[(32 * _583) + _545 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _583) + _545 + ceil32(return_data.size) + 128] = 6
                mem[(32 * _583) + _545 + ceil32(return_data.size) + 160] = 'Failed'
                mem[(32 * _583) + _545 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _583) + _545 + ceil32(return_data.size) + 192] = mem[_545 + ceil32(return_data.size)]
                idx = 0
                while idx < 32 * mem[_545 + ceil32(return_data.size)]:
                    mem[(32 * _583) + _545 + ceil32(return_data.size) + idx + 224] = mem[_545 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                mem[(32 * _583) + _545 + ceil32(return_data.size) + 96] = (32 * mem[_545 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_545 + ceil32(return_data.size)]) + (32 * _583) + _545 + ceil32(return_data.size) + 224] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[(32 * mem[_545 + ceil32(return_data.size)]) + (32 * _583) + _545 + ceil32(return_data.size) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_545 + ceil32(return_data.size)]) + 192, 6, 'Failed', mem[_545 + ceil32(return_data.size)], mem[(32 * _583) + _545 + ceil32(return_data.size) + 224 len (32 * mem[96]) + (32 * mem[_545 + ceil32(return_data.size)]) + 32]
                s = floor32(_583) + 1
                continue 
}



}
