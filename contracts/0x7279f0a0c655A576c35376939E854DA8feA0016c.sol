contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
uint8 stor3;

function verbosity() payable {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function swapVerbosity() payable {
    if 0xbb88e840605eaf50f1af478c21b3a1e737585057 != msg.sender:
        revert with 0, 'Caller is not target owner'
    if not stor3:
        stor3 = 1
    else:
        stor3 = 0
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
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
    if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
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
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
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

function sub_75ce8b83(?) payable {
    require calldata.size - 4 >= 192
    stor0 = arg3
    mem[164] = arg4
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args 0xbb88e840605eaf50f1af478c21b3a1e737585057, address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[96] = 2
        mem[64] = 192
        mem[128] = arg1
        mem[160] = arg2
        require arg6
        idx = 0
        while idx < arg6:
            require idx < stor1.length
            mem[0] = 1
            if not stor3:
                _197 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4 / arg6
                mem[mem[64] + 36] = arg5
                mem[mem[64] + 100] = stor1[idx]
                mem[mem[64] + 132] = block.timestamp + 600
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _197 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _391 = mem[_385]
                require mem[_385] <= 4294967296
                require mem[_385] + 32 <= return_data.size
                require mem[mem[_385] + _385] <= 4294967296 and mem[_385] + (32 * mem[mem[_385] + _385]) + 32 <= return_data.size
                mem[_385 + ceil32(return_data.size)] = mem[mem[_385] + _385]
                _424 = mem[_391 + _385]
                s = 0
                while s < 32 * _424:
                    mem[_385 + ceil32(return_data.size) + s + 32] = mem[_391 + _385 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _424) + _385 + ceil32(return_data.size) + 32
                mem[(32 * _424) + _385 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _424) + _385 + ceil32(return_data.size) + 128] = 7
                mem[(32 * _424) + _385 + ceil32(return_data.size) + 160] = 'Success'
                mem[(32 * _424) + _385 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _424) + _385 + ceil32(return_data.size) + 192] = mem[_385 + ceil32(return_data.size)]
                s = 0
                while s < 32 * mem[_385 + ceil32(return_data.size)]:
                    mem[(32 * _424) + _385 + ceil32(return_data.size) + s + 224] = mem[_385 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                mem[(32 * _424) + _385 + ceil32(return_data.size) + 96] = (32 * mem[_385 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_385 + ceil32(return_data.size)]) + (32 * _424) + _385 + ceil32(return_data.size) + 224] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[(32 * mem[_385 + ceil32(return_data.size)]) + (32 * _424) + _385 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_385 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_385 + ceil32(return_data.size)], mem[(32 * _424) + _385 + ceil32(return_data.size) + 224 len (32 * mem[96]) + (32 * mem[_385 + ceil32(return_data.size)]) + 32]
                s = floor32(mem[96]) + 1
                continue 
            _201 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4 / arg6
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 100] = stor1[idx]
            mem[mem[64] + 132] = block.timestamp + 600
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _201 + -mem[64] + 192]
            if ext_call.success:
                _386 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _396 = mem[_386]
                require mem[_386] <= 4294967296
                require mem[_386] + 32 <= return_data.size
                require mem[mem[_386] + _386] <= 4294967296 and mem[_386] + (32 * mem[mem[_386] + _386]) + 32 <= return_data.size
                mem[_386 + ceil32(return_data.size)] = mem[mem[_386] + _386]
                _425 = mem[_396 + _386]
                s = 0
                while s < 32 * _425:
                    mem[_386 + ceil32(return_data.size) + s + 32] = mem[_396 + _386 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _425) + _386 + ceil32(return_data.size) + 32
                mem[(32 * _425) + _386 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _425) + _386 + ceil32(return_data.size) + 128] = 7
                mem[(32 * _425) + _386 + ceil32(return_data.size) + 160] = 'Success'
                mem[(32 * _425) + _386 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _425) + _386 + ceil32(return_data.size) + 192] = mem[_386 + ceil32(return_data.size)]
                s = 0
                while s < 32 * mem[_386 + ceil32(return_data.size)]:
                    mem[(32 * _425) + _386 + ceil32(return_data.size) + s + 224] = mem[_386 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                mem[(32 * _425) + _386 + ceil32(return_data.size) + 96] = (32 * mem[_386 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_386 + ceil32(return_data.size)]) + (32 * _425) + _386 + ceil32(return_data.size) + 224] = mem[96]
                _636 = mem[96]
                s = 0
                while s < 32 * _636:
                    mem[(32 * mem[_386 + ceil32(return_data.size)]) + (32 * _425) + _386 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_386 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_386 + ceil32(return_data.size)], mem[(32 * _425) + _386 + ceil32(return_data.size) + 224 len (32 * _636) + (32 * mem[_386 + ceil32(return_data.size)]) + 32]
                idx = idx + 1
                continue 
            _393 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4 / arg6
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _395 = mem[96]
            s = 0
            while s < 32 * _395:
                mem[mem[64] + s + 100] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(stor0)
            staticcall stor0.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _395) + _393 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _550 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _568 = mem[_550]
            require mem[_550] <= 4294967296
            require mem[_550] + 32 <= return_data.size
            require mem[mem[_550] + _550] <= 4294967296 and mem[_550] + (32 * mem[mem[_550] + _550]) + 32 <= return_data.size
            mem[_550 + ceil32(return_data.size)] = mem[mem[_550] + _550]
            _592 = mem[_568 + _550]
            s = 0
            while s < 32 * _592:
                mem[_550 + ceil32(return_data.size) + s + 32] = mem[_568 + _550 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _592) + _550 + ceil32(return_data.size) + 32
            mem[(32 * _592) + _550 + ceil32(return_data.size) + 32] = 96
            mem[(32 * _592) + _550 + ceil32(return_data.size) + 128] = 6
            mem[(32 * _592) + _550 + ceil32(return_data.size) + 160] = 'Failed'
            mem[(32 * _592) + _550 + ceil32(return_data.size) + 64] = 160
            mem[(32 * _592) + _550 + ceil32(return_data.size) + 192] = mem[_550 + ceil32(return_data.size)]
            idx = 0
            while idx < 32 * mem[_550 + ceil32(return_data.size)]:
                mem[(32 * _592) + _550 + ceil32(return_data.size) + idx + 224] = mem[_550 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            mem[(32 * _592) + _550 + ceil32(return_data.size) + 96] = (32 * mem[_550 + ceil32(return_data.size)]) + 192
            mem[(32 * mem[_550 + ceil32(return_data.size)]) + (32 * _592) + _550 + ceil32(return_data.size) + 224] = mem[96]
            _688 = mem[96]
            idx = 0
            while idx < 32 * _688:
                mem[(32 * mem[_550 + ceil32(return_data.size)]) + (32 * _592) + _550 + ceil32(return_data.size) + idx + 256] = mem[idx + 128]
                idx = idx + 32
                continue 
            emit 0x47286a0b: 96, 160, (32 * mem[_550 + ceil32(return_data.size)]) + 192, 6, 'Failed', mem[_550 + ceil32(return_data.size)], mem[(32 * _592) + _550 + ceil32(return_data.size) + 224 len (32 * _688) + (32 * mem[_550 + ceil32(return_data.size)]) + 32]
            s = floor32(_592) + 1
            continue 
    else:
        if arg2 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[96] = 2
            mem[64] = 192
            mem[128] = arg1
            mem[160] = arg2
            require arg6
            idx = 0
            while idx < arg6:
                require idx < stor1.length
                mem[0] = 1
                if not stor3:
                    _213 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg4 / arg6
                    mem[mem[64] + 36] = arg5
                    mem[mem[64] + 100] = stor1[idx]
                    mem[mem[64] + 132] = block.timestamp + 600
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _213 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _389 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _405 = mem[_389]
                    require mem[_389] <= 4294967296
                    require mem[_389] + 32 <= return_data.size
                    require mem[mem[_389] + _389] <= 4294967296 and mem[_389] + (32 * mem[mem[_389] + _389]) + 32 <= return_data.size
                    mem[_389 + ceil32(return_data.size)] = mem[mem[_389] + _389]
                    _428 = mem[_405 + _389]
                    s = 0
                    while s < 32 * _428:
                        mem[_389 + ceil32(return_data.size) + s + 32] = mem[_405 + _389 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _428) + _389 + ceil32(return_data.size) + 32
                    mem[(32 * _428) + _389 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _428) + _389 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _428) + _389 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _428) + _389 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _428) + _389 + ceil32(return_data.size) + 192] = mem[_389 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_389 + ceil32(return_data.size)]:
                        mem[(32 * _428) + _389 + ceil32(return_data.size) + s + 224] = mem[_389 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _428) + _389 + ceil32(return_data.size) + 96] = (32 * mem[_389 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_389 + ceil32(return_data.size)]) + (32 * _428) + _389 + ceil32(return_data.size) + 224] = mem[96]
                    _649 = mem[96]
                    s = 0
                    while s < 32 * _649:
                        mem[(32 * mem[_389 + ceil32(return_data.size)]) + (32 * _428) + _389 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_389 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_389 + ceil32(return_data.size)], mem[(32 * _428) + _389 + ceil32(return_data.size) + 224 len (32 * _649) + (32 * mem[_389 + ceil32(return_data.size)]) + 32]
                    s = floor32(_649) + 1
                    continue 
                _217 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4 / arg6
                mem[mem[64] + 36] = arg5
                mem[mem[64] + 100] = stor1[idx]
                mem[mem[64] + 132] = block.timestamp + 600
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _217 + -mem[64] + 192]
                if ext_call.success:
                    _390 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _410 = mem[_390]
                    require mem[_390] <= 4294967296
                    require mem[_390] + 32 <= return_data.size
                    require mem[mem[_390] + _390] <= 4294967296 and mem[_390] + (32 * mem[mem[_390] + _390]) + 32 <= return_data.size
                    mem[_390 + ceil32(return_data.size)] = mem[mem[_390] + _390]
                    _429 = mem[_410 + _390]
                    s = 0
                    while s < 32 * _429:
                        mem[_390 + ceil32(return_data.size) + s + 32] = mem[_410 + _390 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _429) + _390 + ceil32(return_data.size) + 32
                    mem[(32 * _429) + _390 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _429) + _390 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _429) + _390 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _429) + _390 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _429) + _390 + ceil32(return_data.size) + 192] = mem[_390 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_390 + ceil32(return_data.size)]:
                        mem[(32 * _429) + _390 + ceil32(return_data.size) + s + 224] = mem[_390 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _429) + _390 + ceil32(return_data.size) + 96] = (32 * mem[_390 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_390 + ceil32(return_data.size)]) + (32 * _429) + _390 + ceil32(return_data.size) + 224] = mem[96]
                    _656 = mem[96]
                    s = 0
                    while s < 32 * _656:
                        mem[(32 * mem[_390 + ceil32(return_data.size)]) + (32 * _429) + _390 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_390 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_390 + ceil32(return_data.size)], mem[(32 * _429) + _390 + ceil32(return_data.size) + 224 len (32 * _656) + (32 * mem[_390 + ceil32(return_data.size)]) + 32]
                    idx = idx + 1
                    continue 
                _407 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4 / arg6
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _409 = mem[96]
                s = 0
                while s < 32 * _409:
                    mem[mem[64] + s + 100] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor0)
                staticcall stor0.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _409) + _407 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _564 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _572 = mem[_564]
                require mem[_564] <= 4294967296
                require mem[_564] + 32 <= return_data.size
                require mem[mem[_564] + _564] <= 4294967296 and mem[_564] + (32 * mem[mem[_564] + _564]) + 32 <= return_data.size
                mem[_564 + ceil32(return_data.size)] = mem[mem[_564] + _564]
                _598 = mem[_572 + _564]
                s = 0
                while s < 32 * _598:
                    mem[_564 + ceil32(return_data.size) + s + 32] = mem[_572 + _564 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _598) + _564 + ceil32(return_data.size) + 32
                mem[(32 * _598) + _564 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _598) + _564 + ceil32(return_data.size) + 128] = 6
                mem[(32 * _598) + _564 + ceil32(return_data.size) + 160] = 'Failed'
                mem[(32 * _598) + _564 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _598) + _564 + ceil32(return_data.size) + 192] = mem[_564 + ceil32(return_data.size)]
                idx = 0
                while idx < 32 * mem[_564 + ceil32(return_data.size)]:
                    mem[(32 * _598) + _564 + ceil32(return_data.size) + idx + 224] = mem[_564 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                mem[(32 * _598) + _564 + ceil32(return_data.size) + 96] = (32 * mem[_564 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_564 + ceil32(return_data.size)]) + (32 * _598) + _564 + ceil32(return_data.size) + 224] = mem[96]
                _702 = mem[96]
                idx = 0
                while idx < 32 * _702:
                    mem[(32 * mem[_564 + ceil32(return_data.size)]) + (32 * _598) + _564 + ceil32(return_data.size) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_564 + ceil32(return_data.size)]) + 192, 6, 'Failed', mem[_564 + ceil32(return_data.size)], mem[(32 * _598) + _564 + ceil32(return_data.size) + 224 len (32 * _702) + (32 * mem[_564 + ceil32(return_data.size)]) + 32]
                s = floor32(_598) + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[160] = arg1
            mem[192] = arg2
            require arg6
            idx = 0
            while idx < arg6:
                require idx < stor1.length
                mem[0] = 1
                if not stor3:
                    _205 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg4 / arg6
                    mem[mem[64] + 36] = arg5
                    mem[mem[64] + 100] = stor1[idx]
                    mem[mem[64] + 132] = block.timestamp + 600
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[mem[64] + s + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(stor0)
                    call stor0.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _205 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _387 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _398 = mem[_387]
                    require mem[_387] <= 4294967296
                    require mem[_387] + 32 <= return_data.size
                    require mem[mem[_387] + _387] <= 4294967296 and mem[_387] + (32 * mem[mem[_387] + _387]) + 32 <= return_data.size
                    mem[_387 + ceil32(return_data.size)] = mem[mem[_387] + _387]
                    _426 = mem[_398 + _387]
                    s = 0
                    while s < 32 * _426:
                        mem[_387 + ceil32(return_data.size) + s + 32] = mem[_398 + _387 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _426) + _387 + ceil32(return_data.size) + 32
                    mem[(32 * _426) + _387 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _426) + _387 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _426) + _387 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _426) + _387 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _426) + _387 + ceil32(return_data.size) + 192] = mem[_387 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_387 + ceil32(return_data.size)]:
                        mem[(32 * _426) + _387 + ceil32(return_data.size) + s + 224] = mem[_387 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _426) + _387 + ceil32(return_data.size) + 96] = (32 * mem[_387 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_387 + ceil32(return_data.size)]) + (32 * _426) + _387 + ceil32(return_data.size) + 224] = mem[96]
                    _639 = mem[96]
                    s = 0
                    while s < 32 * _639:
                        mem[(32 * mem[_387 + ceil32(return_data.size)]) + (32 * _426) + _387 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_387 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_387 + ceil32(return_data.size)], mem[(32 * _426) + _387 + ceil32(return_data.size) + 224 len (32 * _639) + (32 * mem[_387 + ceil32(return_data.size)]) + 32]
                    s = floor32(_639) + 1
                    continue 
                _209 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4 / arg6
                mem[mem[64] + 36] = arg5
                mem[mem[64] + 100] = stor1[idx]
                mem[mem[64] + 132] = block.timestamp + 600
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[mem[64] + s + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _209 + -mem[64] + 192]
                if ext_call.success:
                    _388 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _403 = mem[_388]
                    require mem[_388] <= 4294967296
                    require mem[_388] + 32 <= return_data.size
                    require mem[mem[_388] + _388] <= 4294967296 and mem[_388] + (32 * mem[mem[_388] + _388]) + 32 <= return_data.size
                    mem[_388 + ceil32(return_data.size)] = mem[mem[_388] + _388]
                    _427 = mem[_403 + _388]
                    s = 0
                    while s < 32 * _427:
                        mem[_388 + ceil32(return_data.size) + s + 32] = mem[_403 + _388 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _427) + _388 + ceil32(return_data.size) + 32
                    mem[(32 * _427) + _388 + ceil32(return_data.size) + 32] = 96
                    mem[(32 * _427) + _388 + ceil32(return_data.size) + 128] = 7
                    mem[(32 * _427) + _388 + ceil32(return_data.size) + 160] = 'Success'
                    mem[(32 * _427) + _388 + ceil32(return_data.size) + 64] = 160
                    mem[(32 * _427) + _388 + ceil32(return_data.size) + 192] = mem[_388 + ceil32(return_data.size)]
                    s = 0
                    while s < 32 * mem[_388 + ceil32(return_data.size)]:
                        mem[(32 * _427) + _388 + ceil32(return_data.size) + s + 224] = mem[_388 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    mem[(32 * _427) + _388 + ceil32(return_data.size) + 96] = (32 * mem[_388 + ceil32(return_data.size)]) + 192
                    mem[(32 * mem[_388 + ceil32(return_data.size)]) + (32 * _427) + _388 + ceil32(return_data.size) + 224] = mem[96]
                    _646 = mem[96]
                    s = 0
                    while s < 32 * _646:
                        mem[(32 * mem[_388 + ceil32(return_data.size)]) + (32 * _427) + _388 + ceil32(return_data.size) + s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    emit 0x47286a0b: 96, 160, (32 * mem[_388 + ceil32(return_data.size)]) + 192, 7, 'Success', mem[_388 + ceil32(return_data.size)], mem[(32 * _427) + _388 + ceil32(return_data.size) + 224 len (32 * _646) + (32 * mem[_388 + ceil32(return_data.size)]) + 32]
                    idx = idx + 1
                    continue 
                _400 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4 / arg6
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _402 = mem[96]
                s = 0
                while s < 32 * _402:
                    mem[mem[64] + s + 100] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(stor0)
                staticcall stor0.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _402) + _400 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _557 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _570 = mem[_557]
                require mem[_557] <= 4294967296
                require mem[_557] + 32 <= return_data.size
                require mem[mem[_557] + _557] <= 4294967296 and mem[_557] + (32 * mem[mem[_557] + _557]) + 32 <= return_data.size
                mem[_557 + ceil32(return_data.size)] = mem[mem[_557] + _557]
                _595 = mem[_570 + _557]
                s = 0
                while s < 32 * _595:
                    mem[_557 + ceil32(return_data.size) + s + 32] = mem[_570 + _557 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _595) + _557 + ceil32(return_data.size) + 32
                mem[(32 * _595) + _557 + ceil32(return_data.size) + 32] = 96
                mem[(32 * _595) + _557 + ceil32(return_data.size) + 128] = 6
                mem[(32 * _595) + _557 + ceil32(return_data.size) + 160] = 'Failed'
                mem[(32 * _595) + _557 + ceil32(return_data.size) + 64] = 160
                mem[(32 * _595) + _557 + ceil32(return_data.size) + 192] = mem[_557 + ceil32(return_data.size)]
                idx = 0
                while idx < 32 * mem[_557 + ceil32(return_data.size)]:
                    mem[(32 * _595) + _557 + ceil32(return_data.size) + idx + 224] = mem[_557 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                mem[(32 * _595) + _557 + ceil32(return_data.size) + 96] = (32 * mem[_557 + ceil32(return_data.size)]) + 192
                mem[(32 * mem[_557 + ceil32(return_data.size)]) + (32 * _595) + _557 + ceil32(return_data.size) + 224] = mem[96]
                _695 = mem[96]
                idx = 0
                while idx < 32 * _695:
                    mem[(32 * mem[_557 + ceil32(return_data.size)]) + (32 * _595) + _557 + ceil32(return_data.size) + idx + 256] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit 0x47286a0b: 96, 160, (32 * mem[_557 + ceil32(return_data.size)]) + 192, 6, 'Failed', mem[_557 + ceil32(return_data.size)], mem[(32 * _595) + _557 + ceil32(return_data.size) + 224 len (32 * _695) + (32 * mem[_557 + ceil32(return_data.size)]) + 32]
                s = floor32(_595) + 1
                continue 
}



}
