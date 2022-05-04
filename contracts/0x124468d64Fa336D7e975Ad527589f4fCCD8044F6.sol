contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address UNISWAP_V2_ROUTERAddress;
uint256 sub_8e2d4601;
uint256 sub_a00496b9;
uint256 sub_3d865e0d;
uint256 sub_01c5f4af;
address sub_9d28f6f5Address;
address sub_73a58210Address;

function sub_01c5f4af(?) {
    return sub_01c5f4af
}

function sub_3d865e0d(?) {
    return sub_3d865e0d
}

function sub_73a58210(?) {
    return sub_73a58210Address
}

function sub_8e2d4601(?) {
    return sub_8e2d4601
}

function sub_9d28f6f5(?) {
    return sub_9d28f6f5Address
}

function sub_a00496b9(?) {
    return sub_a00496b9
}

function UNISWAP_V2_ROUTER() {
    return UNISWAP_V2_ROUTERAddress
}

function _fallback() payable {
  stop
}

function sub_e48967a7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor1[address(arg1)] = 0
}

function sub_fc077622(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor1[address(arg1)] = 1
}

function sub_85711c33(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_6318423d(?) {
    require calldata.size - 4 >= 224
    require msg.sender == stor0
    sub_8e2d4601 = arg1
    sub_a00496b9 = arg2
    sub_3d865e0d = arg3
    sub_01c5f4af = arg4
    sub_9d28f6f5Address = arg5
    sub_73a58210Address = arg6
    UNISWAP_V2_ROUTERAddress = arg7
}

function sub_ffe20279(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(UNISWAP_V2_ROUTERAddress)
    staticcall UNISWAP_V2_ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _26) + ceil32(return_data.size) + 224
       len 32
}

function sub_ce46ccd6(?) {
    require calldata.size - 4 >= 224
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[msg.sender]
    sub_8e2d4601 = arg1
    sub_a00496b9 = arg2
    sub_3d865e0d = arg3
    sub_01c5f4af = arg4
    sub_9d28f6f5Address = arg5
    sub_73a58210Address = arg6
    UNISWAP_V2_ROUTERAddress = arg7
    mem[96] = 2
    mem[64] = 192
    mem[128] = sub_73a58210Address
    mem[160] = sub_9d28f6f5Address
    if 1 == sub_3d865e0d:
        idx = 0
        while idx < sub_01c5f4af:
            _58 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_8e2d4601
            mem[mem[64] + 36] = sub_a00496b9
            mem[mem[64] + 100] = stor0
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(UNISWAP_V2_ROUTERAddress)
            call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _58 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _111 = mem[_104]
            require mem[_104] <= 4294967296
            require mem[_104] + 32 <= return_data.size
            require mem[_104 + mem[_104]] <= 4294967296 and mem[_104] + (32 * mem[_104 + mem[_104]]) + 32 <= return_data.size
            mem[_104 + ceil32(return_data.size)] = mem[_104 + mem[_104]]
            _120 = mem[_104 + _111]
            s = 0
            while s < 32 * _120:
                mem[s + _104 + ceil32(return_data.size) + 32] = mem[s + _104 + _111 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _120) + _104 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    else:
        if 2 == sub_3d865e0d:
            idx = 0
            while idx < sub_01c5f4af:
                _55 = mem[64]
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_a00496b9
                mem[mem[64] + 36] = sub_8e2d4601
                mem[mem[64] + 100] = stor0
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[s + mem[64] + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(UNISWAP_V2_ROUTERAddress)
                call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _55 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _103 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _109 = mem[_103]
                require mem[_103] <= 4294967296
                require mem[_103] + 32 <= return_data.size
                require mem[_103 + mem[_103]] <= 4294967296 and mem[_103] + (32 * mem[_103 + mem[_103]]) + 32 <= return_data.size
                mem[_103 + ceil32(return_data.size)] = mem[_103 + mem[_103]]
                _119 = mem[_103 + _109]
                s = 0
                while s < 32 * _119:
                    mem[s + _103 + ceil32(return_data.size) + 32] = mem[s + _103 + _109 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _119) + _103 + ceil32(return_data.size) + 32
                idx = idx + 1
                continue 
        else:
            if 3 == sub_3d865e0d:
                idx = 0
                while idx < sub_01c5f4af:
                    _52 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8e2d4601
                    mem[mem[64] + 36] = sub_a00496b9
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(UNISWAP_V2_ROUTERAddress)
                    call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _52 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _102 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _107 = mem[_102]
                    require mem[_102] <= 4294967296
                    require mem[_102] + 32 <= return_data.size
                    require mem[_102 + mem[_102]] <= 4294967296 and mem[_102] + (32 * mem[_102 + mem[_102]]) + 32 <= return_data.size
                    mem[_102 + ceil32(return_data.size)] = mem[_102 + mem[_102]]
                    _118 = mem[_102 + _107]
                    s = 0
                    while s < 32 * _118:
                        mem[s + _102 + ceil32(return_data.size) + 32] = mem[s + _102 + _107 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _118) + _102 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if 4 == sub_3d865e0d:
                    idx = 0
                    while idx < sub_01c5f4af:
                        _49 = mem[64]
                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_a00496b9
                        mem[mem[64] + 36] = sub_8e2d4601
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(UNISWAP_V2_ROUTERAddress)
                        call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _49 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _101 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _105 = mem[_101]
                        require mem[_101] <= 4294967296
                        require mem[_101] + 32 <= return_data.size
                        require mem[_101 + mem[_101]] <= 4294967296 and mem[_101] + (32 * mem[_101 + mem[_101]]) + 32 <= return_data.size
                        mem[_101 + ceil32(return_data.size)] = mem[_101 + mem[_101]]
                        _117 = mem[_101 + _105]
                        s = 0
                        while s < 32 * _117:
                            mem[s + _101 + ceil32(return_data.size) + 32] = mem[s + _101 + _105 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _117) + _101 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
}

function sub_457f064c(?) {
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[msg.sender]
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == sub_73a58210Address:
        mem[96] = 2
        mem[64] = 192
        mem[128] = sub_73a58210Address
        mem[160] = sub_9d28f6f5Address
        if 1 == sub_3d865e0d:
            idx = 0
            while idx < sub_01c5f4af:
                _153 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_8e2d4601
                mem[mem[64] + 36] = sub_a00496b9
                mem[mem[64] + 100] = stor0
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                while s < 32 * mem[96]:
                    mem[s + mem[64] + 196] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(UNISWAP_V2_ROUTERAddress)
                call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _153 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _318 = mem[_303]
                require mem[_303] <= 4294967296
                require mem[_303] + 32 <= return_data.size
                require mem[_303 + mem[_303]] <= 4294967296 and mem[_303] + (32 * mem[_303 + mem[_303]]) + 32 <= return_data.size
                mem[_303 + ceil32(return_data.size)] = mem[_303 + mem[_303]]
                _351 = mem[_303 + _318]
                s = 0
                while s < 32 * _351:
                    mem[s + _303 + ceil32(return_data.size) + 32] = mem[s + _303 + _318 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _351) + _303 + ceil32(return_data.size) + 32
                idx = idx + 1
                continue 
        else:
            if 2 == sub_3d865e0d:
                idx = 0
                while idx < sub_01c5f4af:
                    _150 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_a00496b9
                    mem[mem[64] + 36] = sub_8e2d4601
                    mem[mem[64] + 100] = stor0
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(UNISWAP_V2_ROUTERAddress)
                    call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _150 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _302 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _316 = mem[_302]
                    require mem[_302] <= 4294967296
                    require mem[_302] + 32 <= return_data.size
                    require mem[_302 + mem[_302]] <= 4294967296 and mem[_302] + (32 * mem[_302 + mem[_302]]) + 32 <= return_data.size
                    mem[_302 + ceil32(return_data.size)] = mem[_302 + mem[_302]]
                    _350 = mem[_302 + _316]
                    s = 0
                    while s < 32 * _350:
                        mem[s + _302 + ceil32(return_data.size) + 32] = mem[s + _302 + _316 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _350) + _302 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if 3 == sub_3d865e0d:
                    idx = 0
                    while idx < sub_01c5f4af:
                        _147 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_8e2d4601
                        mem[mem[64] + 36] = sub_a00496b9
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(UNISWAP_V2_ROUTERAddress)
                        call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _147 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _301 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _314 = mem[_301]
                        require mem[_301] <= 4294967296
                        require mem[_301] + 32 <= return_data.size
                        require mem[_301 + mem[_301]] <= 4294967296 and mem[_301] + (32 * mem[_301 + mem[_301]]) + 32 <= return_data.size
                        mem[_301 + ceil32(return_data.size)] = mem[_301 + mem[_301]]
                        _349 = mem[_301 + _314]
                        s = 0
                        while s < 32 * _349:
                            mem[s + _301 + ceil32(return_data.size) + 32] = mem[s + _301 + _314 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _349) + _301 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if 4 == sub_3d865e0d:
                        idx = 0
                        while idx < sub_01c5f4af:
                            _144 = mem[64]
                            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_a00496b9
                            mem[mem[64] + 36] = sub_8e2d4601
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(UNISWAP_V2_ROUTERAddress)
                            call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _144 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _300 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _312 = mem[_300]
                            require mem[_300] <= 4294967296
                            require mem[_300] + 32 <= return_data.size
                            require mem[_300 + mem[_300]] <= 4294967296 and mem[_300] + (32 * mem[_300 + mem[_300]]) + 32 <= return_data.size
                            mem[_300 + ceil32(return_data.size)] = mem[_300 + mem[_300]]
                            _348 = mem[_300 + _312]
                            s = 0
                            while s < 32 * _348:
                                mem[s + _300 + ceil32(return_data.size) + 32] = mem[s + _300 + _312 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _348) + _300 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == sub_9d28f6f5Address:
            mem[96] = 2
            mem[64] = 192
            mem[128] = sub_73a58210Address
            mem[160] = sub_9d28f6f5Address
            if 1 == sub_3d865e0d:
                idx = 0
                while idx < sub_01c5f4af:
                    _177 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8e2d4601
                    mem[mem[64] + 36] = sub_a00496b9
                    mem[mem[64] + 100] = stor0
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(UNISWAP_V2_ROUTERAddress)
                    call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _177 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _311 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _334 = mem[_311]
                    require mem[_311] <= 4294967296
                    require mem[_311] + 32 <= return_data.size
                    require mem[_311 + mem[_311]] <= 4294967296 and mem[_311] + (32 * mem[_311 + mem[_311]]) + 32 <= return_data.size
                    mem[_311 + ceil32(return_data.size)] = mem[_311 + mem[_311]]
                    _359 = mem[_311 + _334]
                    s = 0
                    while s < 32 * _359:
                        mem[s + _311 + ceil32(return_data.size) + 32] = mem[s + _311 + _334 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _359) + _311 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if 2 == sub_3d865e0d:
                    idx = 0
                    while idx < sub_01c5f4af:
                        _174 = mem[64]
                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_a00496b9
                        mem[mem[64] + 36] = sub_8e2d4601
                        mem[mem[64] + 100] = stor0
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(UNISWAP_V2_ROUTERAddress)
                        call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _174 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _310 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _332 = mem[_310]
                        require mem[_310] <= 4294967296
                        require mem[_310] + 32 <= return_data.size
                        require mem[_310 + mem[_310]] <= 4294967296 and mem[_310] + (32 * mem[_310 + mem[_310]]) + 32 <= return_data.size
                        mem[_310 + ceil32(return_data.size)] = mem[_310 + mem[_310]]
                        _358 = mem[_310 + _332]
                        s = 0
                        while s < 32 * _358:
                            mem[s + _310 + ceil32(return_data.size) + 32] = mem[s + _310 + _332 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _358) + _310 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if 3 == sub_3d865e0d:
                        idx = 0
                        while idx < sub_01c5f4af:
                            _171 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_8e2d4601
                            mem[mem[64] + 36] = sub_a00496b9
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(UNISWAP_V2_ROUTERAddress)
                            call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _171 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _309 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _330 = mem[_309]
                            require mem[_309] <= 4294967296
                            require mem[_309] + 32 <= return_data.size
                            require mem[_309 + mem[_309]] <= 4294967296 and mem[_309] + (32 * mem[_309 + mem[_309]]) + 32 <= return_data.size
                            mem[_309 + ceil32(return_data.size)] = mem[_309 + mem[_309]]
                            _357 = mem[_309 + _330]
                            s = 0
                            while s < 32 * _357:
                                mem[s + _309 + ceil32(return_data.size) + 32] = mem[s + _309 + _330 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _357) + _309 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        if 4 == sub_3d865e0d:
                            idx = 0
                            while idx < sub_01c5f4af:
                                _168 = mem[64]
                                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_a00496b9
                                mem[mem[64] + 36] = sub_8e2d4601
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + mem[64] + 196] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(UNISWAP_V2_ROUTERAddress)
                                call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (32 * mem[96]) + _168 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _308 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _328 = mem[_308]
                                require mem[_308] <= 4294967296
                                require mem[_308] + 32 <= return_data.size
                                require mem[_308 + mem[_308]] <= 4294967296 and mem[_308] + (32 * mem[_308 + mem[_308]]) + 32 <= return_data.size
                                mem[_308 + ceil32(return_data.size)] = mem[_308 + mem[_308]]
                                _356 = mem[_308 + _328]
                                s = 0
                                while s < 32 * _356:
                                    mem[s + _308 + ceil32(return_data.size) + 32] = mem[s + _308 + _328 + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _356) + _308 + ceil32(return_data.size) + 32
                                idx = idx + 1
                                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = sub_73a58210Address
            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[192] = sub_9d28f6f5Address
            if 1 == sub_3d865e0d:
                idx = 0
                while idx < sub_01c5f4af:
                    _165 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8e2d4601
                    mem[mem[64] + 36] = sub_a00496b9
                    mem[mem[64] + 100] = stor0
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    while s < 32 * mem[96]:
                        mem[s + mem[64] + 196] = mem[s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(UNISWAP_V2_ROUTERAddress)
                    call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _165 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _307 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _326 = mem[_307]
                    require mem[_307] <= 4294967296
                    require mem[_307] + 32 <= return_data.size
                    require mem[_307 + mem[_307]] <= 4294967296 and mem[_307] + (32 * mem[_307 + mem[_307]]) + 32 <= return_data.size
                    mem[_307 + ceil32(return_data.size)] = mem[_307 + mem[_307]]
                    _355 = mem[_307 + _326]
                    s = 0
                    while s < 32 * _355:
                        mem[s + _307 + ceil32(return_data.size) + 32] = mem[s + _307 + _326 + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _355) + _307 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    continue 
            else:
                if 2 == sub_3d865e0d:
                    idx = 0
                    while idx < sub_01c5f4af:
                        _162 = mem[64]
                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_a00496b9
                        mem[mem[64] + 36] = sub_8e2d4601
                        mem[mem[64] + 100] = stor0
                        mem[mem[64] + 132] = block.timestamp
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        s = 0
                        while s < 32 * mem[96]:
                            mem[s + mem[64] + 196] = mem[s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(UNISWAP_V2_ROUTERAddress)
                        call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * mem[96]) + _162 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _306 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _324 = mem[_306]
                        require mem[_306] <= 4294967296
                        require mem[_306] + 32 <= return_data.size
                        require mem[_306 + mem[_306]] <= 4294967296 and mem[_306] + (32 * mem[_306 + mem[_306]]) + 32 <= return_data.size
                        mem[_306 + ceil32(return_data.size)] = mem[_306 + mem[_306]]
                        _354 = mem[_306 + _324]
                        s = 0
                        while s < 32 * _354:
                            mem[s + _306 + ceil32(return_data.size) + 32] = mem[s + _306 + _324 + 32]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _354) + _306 + ceil32(return_data.size) + 32
                        idx = idx + 1
                        continue 
                else:
                    if 3 == sub_3d865e0d:
                        idx = 0
                        while idx < sub_01c5f4af:
                            _159 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_8e2d4601
                            mem[mem[64] + 36] = sub_a00496b9
                            mem[mem[64] + 100] = msg.sender
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            while s < 32 * mem[96]:
                                mem[s + mem[64] + 196] = mem[s + 128]
                                s = s + 32
                                continue 
                            require ext_code.size(UNISWAP_V2_ROUTERAddress)
                            call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _159 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _305 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _322 = mem[_305]
                            require mem[_305] <= 4294967296
                            require mem[_305] + 32 <= return_data.size
                            require mem[_305 + mem[_305]] <= 4294967296 and mem[_305] + (32 * mem[_305 + mem[_305]]) + 32 <= return_data.size
                            mem[_305 + ceil32(return_data.size)] = mem[_305 + mem[_305]]
                            _353 = mem[_305 + _322]
                            s = 0
                            while s < 32 * _353:
                                mem[s + _305 + ceil32(return_data.size) + 32] = mem[s + _305 + _322 + 32]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _353) + _305 + ceil32(return_data.size) + 32
                            idx = idx + 1
                            continue 
                    else:
                        if 4 == sub_3d865e0d:
                            idx = 0
                            while idx < sub_01c5f4af:
                                _156 = mem[64]
                                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_a00496b9
                                mem[mem[64] + 36] = sub_8e2d4601
                                mem[mem[64] + 100] = msg.sender
                                mem[mem[64] + 132] = block.timestamp
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                while s < 32 * mem[96]:
                                    mem[s + mem[64] + 196] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                require ext_code.size(UNISWAP_V2_ROUTERAddress)
                                call UNISWAP_V2_ROUTERAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (32 * mem[96]) + _156 + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _304 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _320 = mem[_304]
                                require mem[_304] <= 4294967296
                                require mem[_304] + 32 <= return_data.size
                                require mem[_304 + mem[_304]] <= 4294967296 and mem[_304] + (32 * mem[_304 + mem[_304]]) + 32 <= return_data.size
                                mem[_304 + ceil32(return_data.size)] = mem[_304 + mem[_304]]
                                _352 = mem[_304 + _320]
                                s = 0
                                while s < 32 * _352:
                                    mem[s + _304 + ceil32(return_data.size) + 32] = mem[s + _304 + _320 + 32]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _352) + _304 + ceil32(return_data.size) + 32
                                idx = idx + 1
                                continue 
}



}
