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
    call arg1.0xa9059cbb with:
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

function sub_457f064c(?) {
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[msg.sender]
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



}
