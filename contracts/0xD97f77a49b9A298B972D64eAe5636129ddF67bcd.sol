contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_df9aee68(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
address sub_70e842a1Address;

function sub_29a41196(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'AUTHFAPPR'
    return bool(stor1[address(arg1)])
}

function sub_6b9a04e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_70e842a1(?) payable {
    return sub_70e842a1Address
}

function sub_aa23425e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_06c9e225(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'AUTHRR'
    stor2[address(arg1)] = 1
}

function sub_37700dd8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor0 != msg.sender:
        revert with 0, 'AUTHFAPPR'
    stor1[address(arg1)] = uint8(bool(arg2))
}

function sub_7e7412cb(?) payable {
    if stor0 != msg.sender:
        revert with 0, 'AUTHFAPPR'
    if eth.balance(this.address) <= 0:
        revert with 0, 'EMPTY'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function emmergencyWithdrawTkn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'AUTHFAPPR'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'NO TOKENS'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_0fe079d8(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == address(arg9)
    require ext_code.size(address(arg4))
    call address(arg4).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg6), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg6))
    if arg7 == 3:
        if arg8:
            call address(arg6).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('param', 'arg2')), ('signextend', 15, ('param', 'arg3')), arg1, 0
        else:
            call address(arg6).exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args arg2, arg3, arg1, 0
    else:
        if arg7 != 4:
            call address(arg6).swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2 << 248, arg3 << 248, arg1, 0, block.timestamp + 10^11
        else:
            if arg8:
                call address(arg6).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('param', 'arg2')), ('signextend', 15, ('param', 'arg3')), arg1, 0
            else:
                call address(arg6).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args arg2, arg3, arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg9) != this.address:
        require ext_code.size(address(arg5))
        call address(arg5).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg9), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_552a2133(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (192 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0, 'AUTH'
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    s = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size + (-192 * idx) + -cd[4] - 36 >= 192
        _1109 = mem[64]
        require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
        mem[64] = mem[64] + 192
        require cd[((192 * idx) + cd[4] + 36)] == cd[((192 * idx) + cd[4] + 36)]
        mem[_1109] = cd[((192 * idx) + cd[4] + 36)]
        require cd[((192 * idx) + cd[4] + 68)] == cd[((192 * idx) + cd[4] + 68)]
        mem[_1109 + 32] = cd[((192 * idx) + cd[4] + 68)]
        require cd[((192 * idx) + cd[4] + 100)] == cd[((192 * idx) + cd[4] + 100)]
        mem[_1109 + 64] = cd[((192 * idx) + cd[4] + 100)]
        require cd[((192 * idx) + cd[4] + 132)] == cd[((192 * idx) + cd[4] + 132)]
        mem[_1109 + 96] = cd[((192 * idx) + cd[4] + 132)]
        require cd[((192 * idx) + cd[4] + 164)] == cd[((192 * idx) + cd[4] + 164)]
        mem[_1109 + 128] = cd[((192 * idx) + cd[4] + 164)]
        require cd[((192 * idx) + cd[4] + 196)] == address(cd[((192 * idx) + cd[4] + 196)])
        mem[_1109 + 160] = cd[((192 * idx) + cd[4] + 196)]
        mem[s] = _1109
        s = s + 32
        idx = idx + 1
        continue 
    _1105 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_1105] = ('cd', 36).length
    mem[_1105 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[_1105 + (32 * ('cd', 36).length) + 32] = 0
    _1106 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_1106] = ('cd', 68).length
    s = _1106 + 32
    idx = 0
    while idx < ('cd', 68).length:
        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
        _2229 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + cd[68] + 36)] == cd[((64 * idx) + cd[68] + 36)]
        mem[_2229] = cd[((64 * idx) + cd[68] + 36)]
        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
        mem[_2229 + 32] = cd[((64 * idx) + cd[68] + 68)]
        mem[s] = _2229
        s = s + 32
        idx = idx + 1
        continue 
    _2225 = mem[_1105]
    require mem[_1105] <= test266151307()
    _2226 = mem[64]
    mem[mem[64]] = mem[_1105]
    mem[64] = mem[64] + (32 * _2225) + 32
    if not _2225:
        require 0 < mem[_2226]
        mem[_2226 + 32] = cd[100]
        _3342 = mem[96]
        idx = 0
        while idx < _3342:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 32] < 1:
                revert with 0, 'INV PAIR TYPE'
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 32] > 10:
                revert with 0, 'INV PAIR TYPE'
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 32] == 1:
                require idx < mem[_1105]
                _3395 = mem[(32 * idx) + _1105 + 32]
                require idx + 1 < mem[_1105]
                _3405 = mem[(32 * idx + 1) + _1105 + 32]
                require idx < mem[96]
                if mem[(32 * idx) + _1105 + 44 len 20] == mem[(32 * idx + 1) + _1105 + 44 len 20]:
                    revert with 0, 'SAMEADDR'
                if mem[(32 * idx) + _1105 + 44 len 20] < mem[(32 * idx + 1) + _1105 + 44 len 20]:
                    if not mem[(32 * idx) + _1105 + 44 len 20]:
                        revert with 0, 'ZER'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 172 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3513] == mem[_3513 + 18 len 14]
                    require mem[_3513 + 32] == mem[_3513 + 50 len 14]
                    require mem[_3513 + 64] == mem[_3513 + 92 len 4]
                    require idx < mem[_2226]
                    require idx < mem[96]
                    if mem[(32 * idx) + _2226 + 32] <= 0:
                        revert with 0, 'WTB: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_3395) == address(_3395):
                        if mem[_3513 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3513 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3513 + 50 len 14]:
                                require mem[_3513 + 50 len 14]
                                if 0 / mem[_3513 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3513 + 18 len 14] / 10000 != mem[_3513 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3513 + 18 len 14] < 10000 * mem[_3513 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3513 + 18 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3513 + 18 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3513 + 50 len 14]:
                                if 10000 * mem[_3513 + 18 len 14] / 10000 != mem[_3513 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3513 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3513 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3513 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3513 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3513 + 50 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3513 + 50 len 14] / mem[_3513 + 50 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3513 + 18 len 14] / 10000 != mem[_3513 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3513 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3513 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3513 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3513 + 50 len 14] / (10000 * mem[_3513 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                    else:
                        if mem[_3513 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3513 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3513 + 18 len 14]:
                                require mem[_3513 + 18 len 14]
                                if 0 / mem[_3513 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3513 + 50 len 14] / 10000 != mem[_3513 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3513 + 50 len 14] < 10000 * mem[_3513 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3513 + 50 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3513 + 50 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3513 + 18 len 14]:
                                if 10000 * mem[_3513 + 50 len 14] / 10000 != mem[_3513 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3513 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3513 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3513 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3513 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3513 + 18 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3513 + 18 len 14] / mem[_3513 + 18 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3513 + 50 len 14] / 10000 != mem[_3513 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3513 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3513 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3513 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3513 + 18 len 14] / (10000 * mem[_3513 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                else:
                    if not mem[(32 * idx + 1) + _1105 + 44 len 20]:
                        revert with 0, 'ZER'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 172 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3514] == mem[_3514 + 18 len 14]
                    require mem[_3514 + 32] == mem[_3514 + 50 len 14]
                    require mem[_3514 + 64] == mem[_3514 + 92 len 4]
                    require idx < mem[_2226]
                    require idx < mem[96]
                    if mem[(32 * idx) + _2226 + 32] <= 0:
                        revert with 0, 'WTB: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_3395) == address(_3405):
                        if mem[_3514 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3514 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3514 + 50 len 14]:
                                require mem[_3514 + 50 len 14]
                                if 0 / mem[_3514 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3514 + 18 len 14] / 10000 != mem[_3514 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3514 + 18 len 14] < 10000 * mem[_3514 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3514 + 18 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3514 + 18 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3514 + 50 len 14]:
                                if 10000 * mem[_3514 + 18 len 14] / 10000 != mem[_3514 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3514 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3514 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3514 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3514 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3514 + 50 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3514 + 50 len 14] / mem[_3514 + 50 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3514 + 18 len 14] / 10000 != mem[_3514 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3514 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3514 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3514 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3514 + 50 len 14] / (10000 * mem[_3514 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                    else:
                        if mem[_3514 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3514 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3514 + 18 len 14]:
                                require mem[_3514 + 18 len 14]
                                if 0 / mem[_3514 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3514 + 50 len 14] / 10000 != mem[_3514 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3514 + 50 len 14] < 10000 * mem[_3514 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3514 + 50 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3514 + 50 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3514 + 18 len 14]:
                                if 10000 * mem[_3514 + 50 len 14] / 10000 != mem[_3514 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3514 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3514 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3514 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3514 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3514 + 18 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3514 + 18 len 14] / mem[_3514 + 18 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3514 + 50 len 14] / 10000 != mem[_3514 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3514 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3514 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3514 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3514 + 18 len 14] / (10000 * mem[_3514 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
            else:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 32] != 2:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32] >= 3:
                        require idx < mem[_2226]
                        _3438 = mem[(32 * idx) + _2226 + 32]
                        require idx < mem[_1106]
                        require idx < mem[_1106]
                        _3466 = mem[mem[(32 * idx) + _1106 + 32] + 32]
                        require idx < mem[96]
                        _3477 = mem[mem[(32 * idx) + 128] + 160]
                        require idx < mem[96]
                        require idx < mem[96]
                        if mem[mem[(32 * idx) + 128] + 32] == 3:
                            if mem[mem[(32 * idx) + 128] + 64]:
                                mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_1106')), 32)), 32)))
                                mem[mem[64] + 36] = ('signextend', 15, ('var', '_3466'))
                                mem[mem[64] + 68] = _3438
                                require ext_code.size(address(_3477))
                                staticcall address(_3477).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], ('signextend', 15, ('var', '_3466')), _3438
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3699] == mem[_3699]
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[_3699]
                            else:
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1106 + 32]]
                                mem[mem[64] + 36] = _3466
                                mem[mem[64] + 68] = _3438
                                require ext_code.size(address(_3477))
                                staticcall address(_3477).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], _3466, _3438
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3700 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3700] == mem[_3700]
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[_3700]
                        else:
                            if mem[mem[(32 * idx) + 128] + 32] != 4:
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1106 + 32] + 31 len 1]
                                mem[mem[64] + 36] = uint8(_3466)
                                mem[mem[64] + 68] = _3438
                                require ext_code.size(address(_3477))
                                staticcall address(_3477).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], _3466 << 248, _3438
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3698 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3698] == mem[_3698]
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[_3698]
                            else:
                                if mem[mem[(32 * idx) + 128] + 64]:
                                    mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_1106')), 32)), 32)))
                                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_3466'))
                                    mem[mem[64] + 68] = _3438
                                    require ext_code.size(address(_3477))
                                    staticcall address(_3477).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], ('signextend', 15, ('var', '_3466')), _3438
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3710 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3710] == mem[_3710]
                                    require idx + 1 < mem[_2226]
                                    mem[(32 * idx + 1) + _2226 + 32] = mem[_3710]
                                else:
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _1106 + 32]]
                                    mem[mem[64] + 36] = _3466
                                    mem[mem[64] + 68] = 0
                                    require ext_code.size(address(_3477))
                                    staticcall address(_3477).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], _3466, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3711 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3711] == mem[_3711]
                                    require idx + 1 < mem[_2226]
                                    mem[(32 * idx + 1) + _2226 + 32] = mem[_3711]
                else:
                    require idx < mem[_2226]
                    _3417 = mem[(32 * idx) + _2226 + 32]
                    require idx < mem[_1105]
                    _3431 = mem[(32 * idx) + _1105 + 32]
                    require idx + 1 < mem[_1105]
                    _3440 = mem[(32 * idx + 1) + _1105 + 32]
                    require idx < mem[96]
                    _3452 = mem[mem[(32 * idx) + 128] + 96]
                    _3479 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_3479 + 256] = 96
                    mem[_3479] = 0
                    mem[_3479 + 32] = address(_3431)
                    mem[_3479 + 64] = address(_3440)
                    mem[_3479 + 96] = _3417
                    mem[_3479 + 128] = _3452
                    mem[_3479 + 160] = 0
                    mem[_3479 + 192] = this.address
                    mem[_3479 + 224] = this.address
                    mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3452
                    require ext_code.size(sub_70e842a1Address)
                    staticcall sub_70e842a1Address.getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _3452
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3608 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3636 = mem[_3608]
                    require mem[_3608] <= test266151307()
                    require _3608 + mem[_3608] + 31 < _3608 + return_data.size
                    _3668 = mem[_3608 + mem[_3608]]
                    require mem[_3608 + mem[_3608]] <= test266151307()
                    require _3608 + ceil32(return_data.size) + (32 * mem[_3608 + mem[_3608]]) + 32 <= test266151307() and (32 * mem[_3608 + mem[_3608]]) + 32 >= 0
                    mem[64] = _3608 + ceil32(return_data.size) + (32 * mem[_3608 + mem[_3608]]) + 32
                    mem[_3608 + ceil32(return_data.size)] = _3668
                    require _3636 + (32 * _3668) + 32 <= return_data.size
                    s = 0
                    t = _3608 + _3636 + 32
                    u = _3608 + ceil32(return_data.size) + 32
                    while s < _3668:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        _3342 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _4458 = mem[_3608 + 32]
                    require mem[_3608 + 32] <= test266151307()
                    require _3608 + mem[_3608 + 32] + 31 < _3608 + return_data.size
                    _4469 = mem[_3608 + mem[_3608 + 32]]
                    require mem[_3608 + mem[_3608 + 32]] <= test266151307()
                    _4482 = mem[64]
                    require mem[64] + (32 * mem[_3608 + mem[_3608 + 32]]) + 32 <= test266151307() and mem[64] + (32 * mem[_3608 + mem[_3608 + 32]]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[_3608 + mem[_3608 + 32]]) + 32
                    mem[_4482] = _4469
                    require _4458 + (32 * _4469) + 32 <= return_data.size
                    s = 0
                    t = _3608 + _4458 + 32
                    u = _4482 + 32
                    while s < _4469:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _3342 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require mem[_3608 + 64] == mem[_3608 + 64]
                    require ext_code.size(sub_70e842a1Address)
                    staticcall sub_70e842a1Address.getPool(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _3452
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5184 = mem[_5156]
                    require mem[_5156] == mem[_5156 + 12 len 20]
                    require mem[_5156 + 32] < 3
                    s = 0
                    t = 0
                    u = 0
                    while s < mem[_3608 + ceil32(return_data.size)]:
                        require s < mem[_3608 + ceil32(return_data.size)]
                        if mem[(32 * s) + _3608 + ceil32(return_data.size) + 44 len 20] != address(_3431):
                            require s < mem[_3608 + ceil32(return_data.size)]
                            if mem[(32 * s) + _3608 + ceil32(return_data.size) + 44 len 20] != address(_3440):
                                _3342 = mem[96]
                                s = s + 1
                                t = t
                                u = u
                                continue 
                            require s < _4469
                            _3342 = mem[96]
                            s = s + 1
                            t = mem[(32 * s) + _4482 + 32]
                            u = u
                            continue 
                        require s < _4469
                        require s < mem[_3608 + ceil32(return_data.size)]
                        if mem[(32 * s) + _3608 + ceil32(return_data.size) + 44 len 20] != address(_3440):
                            _3342 = mem[96]
                            s = s + 1
                            t = t
                            u = mem[(32 * s) + _4482 + 32]
                            continue 
                        require s < _4469
                        _3342 = mem[96]
                        s = s + 1
                        t = mem[(32 * s) + _4482 + 32]
                        u = mem[(32 * s) + _4482 + 32]
                        continue 
                    mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    require mem[_3479] < 2
                    mem[mem[64] + 100] = mem[_3479]
                    mem[mem[64] + 132] = mem[_3479 + 44 len 20]
                    mem[mem[64] + 164] = mem[_3479 + 76 len 20]
                    mem[mem[64] + 196] = mem[_3479 + 96]
                    mem[mem[64] + 228] = mem[_3479 + 128]
                    mem[mem[64] + 260] = mem[_3479 + 160]
                    mem[mem[64] + 292] = mem[_3479 + 204 len 20]
                    mem[mem[64] + 324] = mem[_3479 + 236 len 20]
                    _5924 = mem[_3479 + 256]
                    mem[mem[64] + 356] = 288
                    _5926 = mem[_5924]
                    mem[mem[64] + 388] = mem[_5924]
                    s = 0
                    while s < _5926:
                        mem[mem[64] + s + 420] = mem[_5924 + s + 32]
                        _3342 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5926) <= _5926:
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = t
                        require ext_code.size(address(_5184))
                        staticcall address(_5184).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                gas gas_remaining wei
                               args 96, u, t, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5926) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6112 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6112] == mem[_6112]
                        require idx + 1 < mem[_2226]
                        mem[(32 * idx + 1) + _2226 + 32] = mem[_6112]
                    else:
                        mem[mem[64] + _5926 + 420] = 0
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = t
                        require ext_code.size(address(_5184))
                        staticcall address(_5184).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                gas gas_remaining wei
                               args 96, u, t, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5926) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6114 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6114] == mem[_6114]
                        require idx + 1 < mem[_2226]
                        mem[(32 * idx + 1) + _2226 + 32] = mem[_6114]
            _3342 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_2226]
        require mem[_2226] - 1 < mem[_2226]
        if mem[(32 * mem[_2226] - 1) + _2226 + 32] < cd[164] + mem[_2226 + 32]:
            revert with 0, 'STOP'
        require 0 < mem[_2226]
        require mem[_2226] - 1 < mem[_2226]
        if mem[(32 * mem[_2226] - 1) + _2226 + 32] >= cd[164] + mem[_2226 + 32]:
            _3392 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
            mem[_3392] = ('cd', 4).length
            s = _3392 + 32
            idx = 0
            while idx < ('cd', 4).length:
                require calldata.size + (-192 * idx) + -cd[4] - 36 >= 192
                _4475 = mem[64]
                require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
                mem[64] = mem[64] + 192
                require cd[((192 * idx) + cd[4] + 36)] == cd[((192 * idx) + cd[4] + 36)]
                mem[_4475] = cd[((192 * idx) + cd[4] + 36)]
                require cd[((192 * idx) + cd[4] + 68)] == cd[((192 * idx) + cd[4] + 68)]
                mem[_4475 + 32] = cd[((192 * idx) + cd[4] + 68)]
                require cd[((192 * idx) + cd[4] + 100)] == cd[((192 * idx) + cd[4] + 100)]
                mem[_4475 + 64] = cd[((192 * idx) + cd[4] + 100)]
                require cd[((192 * idx) + cd[4] + 132)] == cd[((192 * idx) + cd[4] + 132)]
                mem[_4475 + 96] = cd[((192 * idx) + cd[4] + 132)]
                require cd[((192 * idx) + cd[4] + 164)] == cd[((192 * idx) + cd[4] + 164)]
                mem[_4475 + 128] = cd[((192 * idx) + cd[4] + 164)]
                require cd[((192 * idx) + cd[4] + 196)] == address(cd[((192 * idx) + cd[4] + 196)])
                mem[_4475 + 160] = cd[((192 * idx) + cd[4] + 196)]
                mem[s] = _4475
                s = s + 32
                idx = idx + 1
                continue 
            _4454 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_4454] = ('cd', 36).length
            mem[_4454 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_4454 + (32 * ('cd', 36).length) + 32] = 0
            _4455 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_4455] = ('cd', 68).length
            s = _4455 + 32
            idx = 0
            while idx < ('cd', 68).length:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _5055 = mem[64]
                require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == cd[((64 * idx) + cd[68] + 36)]
                mem[_5055] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_5055 + 32] = cd[((64 * idx) + cd[68] + 68)]
                mem[s] = _5055
                s = s + 32
                idx = idx + 1
                continue 
            require mem[_4454] - 2 < mem[_4454]
            require mem[_4454] - 1 < mem[_4454]
            if mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20] == mem[(32 * mem[_4454] - 1) + _4454 + 44 len 20]:
                revert with 0, 'SAMEADDR'
            if mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20] < mem[(32 * mem[_4454] - 1) + _4454 + 44 len 20]:
                if not mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20]:
                    revert with 0, 'ZER'
                require mem[_3392] - 1 < mem[_3392]
                _5073 = mem[mem[(32 * mem[_3392] - 1) + _3392 + 32] + 160]
                if not mem[mem[(32 * mem[_3392] - 1) + _3392 + 32] + 172 len 20]:
                    revert with 0, 'no pool'
                require mem[_4454] - 2 < mem[_4454]
                if mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20] == mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20]:
                    require mem[_4454] - 2 < mem[_4454]
                    if mem[(32 * mem[_4454] - 1) + _4454 + 44 len 20] == mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20]:
                        _5166 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5188 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5188:
                            _5610 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5610 + 32]
                            mem[t + 64] = mem[_5610 + 64]
                            mem[t + 96] = mem[_5610 + 96]
                            mem[t + 128] = mem[_5610 + 128]
                            mem[t + 160] = mem[_5610 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5166 + 64] = (192 * _5188) + 192
                        _5654 = mem[_4454]
                        mem[_5166 + (192 * _5188) + 224] = mem[_4454]
                        s = 0
                        s = _4454 + 32
                        s = _5166 + (192 * _5188) + 256
                        while _3392 + (32 * ('cd', 4).length) + 32 < _5654:
                            mem[s] = mem[('cd', 4).length + 12 len 20]
                            s = _3392 + (32 * ('cd', 4).length) + 33
                            s = ('cd', 4).length + 32
                            s = s + 32
                            continue 
                        mem[_5166 + 96] = s + -_5166 - 32
                        _6028 = mem[_4455]
                        mem[s] = mem[_4455]
                        idx = 0
                        t = _4455 + 32
                        u = s + 32
                        while idx < _6028:
                            _6236 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6236 + 32]
                            idx = idx + 1
                            t = t + 32
                            u = u + 64
                            continue 
                        mem[_5166 + 128] = s + (64 * _6028) - _5166
                        _6268 = mem[_2226]
                        mem[s + (64 * _6028) + 32] = mem[_2226]
                        mem[s + (64 * _6028) + 64 len 32 * _6268] = mem[_2226 + 32 len 32 * _6268]
                        mem[_5166 + 160] = address(cd[132])
                        _6428 = mem[64]
                        mem[64] = s + (64 * _6028) + (32 * _6268) + 64
                        mem[s + (64 * _6028) + (32 * _6268) + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[s + (64 * _6028) + (32 * _6268) + 68] = 0
                        mem[s + (64 * _6028) + (32 * _6268) + 100] = 0
                        mem[s + (64 * _6028) + (32 * _6268) + 132] = this.address
                        mem[s + (64 * _6028) + (32 * _6268) + 164] = 128
                        _6460 = mem[_6428]
                        mem[s + (64 * _6028) + (32 * _6268) + 196] = mem[_6428]
                        mem[s + (64 * _6028) + (32 * _6268) + 228 len ceil32(_6460)] = mem[_6428 + 32 len ceil32(_6460)]
                        if ceil32(_6460) > _6460:
                            mem[s + (64 * _6028) + (32 * _6268) + _6460 + 228] = 0
                        require ext_code.size(address(_5073))
                        call address(_5073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[s + (64 * _6028) + (32 * _6268) + 196 len ceil32(_6460) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5148 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5174 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5192 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5192:
                            _5611 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5611 + 32]
                            mem[t + 64] = mem[_5611 + 64]
                            mem[t + 96] = mem[_5611 + 96]
                            mem[t + 128] = mem[_5611 + 128]
                            mem[t + 160] = mem[_5611 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5174 + 64] = (192 * _5192) + 192
                        _5655 = mem[_4454]
                        mem[_5174 + (192 * _5192) + 224] = mem[_4454]
                        idx = 0
                        s = _4454 + 32
                        t = _5174 + (192 * _5192) + 256
                        while idx < _5655:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5174 + 96] = (192 * _5192) + (32 * _5655) + 224
                        _6029 = mem[_4455]
                        mem[_5174 + (192 * _5192) + (32 * _5655) + 256] = mem[_4455]
                        idx = 0
                        s = _4455 + 32
                        t = _5174 + (192 * _5192) + (32 * _5655) + 288
                        while idx < _6029:
                            _6237 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6237 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5174 + 128] = (192 * _5192) + (32 * _5655) + (64 * _6029) + 256
                        _6269 = mem[_2226]
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + 288] = mem[_2226]
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + 320 len 32 * _6269] = mem[_2226 + 32 len 32 * _6269]
                        mem[_5174 + 160] = address(cd[132])
                        _6429 = mem[64]
                        mem[64] = _5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 320
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 324] = 0
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 356] = _5148
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 388] = this.address
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 420] = 128
                        _6461 = mem[_6429]
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 452] = mem[_6429]
                        mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 484 len ceil32(_6461)] = mem[_6429 + 32 len ceil32(_6461)]
                        if ceil32(_6461) > _6461:
                            mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + _6461 + 484] = 0
                        require ext_code.size(address(_5073))
                        call address(_5073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5148, address(this.address), 128, mem[_5174 + (192 * _5192) + (32 * _5655) + (64 * _6029) + (32 * _6269) + 452 len ceil32(_6461) + 32]
                else:
                    require mem[_2226] - 1 < mem[_2226]
                    _5108 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                    require mem[_4454] - 2 < mem[_4454]
                    if mem[(32 * mem[_4454] - 1) + _4454 + 44 len 20] == mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20]:
                        _5175 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5193 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5193:
                            _5612 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5612 + 32]
                            mem[t + 64] = mem[_5612 + 64]
                            mem[t + 96] = mem[_5612 + 96]
                            mem[t + 128] = mem[_5612 + 128]
                            mem[t + 160] = mem[_5612 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5175 + 64] = (192 * _5193) + 192
                        _5656 = mem[_4454]
                        mem[_5175 + (192 * _5193) + 224] = mem[_4454]
                        idx = 0
                        s = _4454 + 32
                        t = _5175 + (192 * _5193) + 256
                        while idx < _5656:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5175 + 96] = (192 * _5193) + (32 * _5656) + 224
                        _6030 = mem[_4455]
                        mem[_5175 + (192 * _5193) + (32 * _5656) + 256] = mem[_4455]
                        idx = 0
                        s = _4455 + 32
                        t = _5175 + (192 * _5193) + (32 * _5656) + 288
                        while idx < _6030:
                            _6238 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6238 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5175 + 128] = (192 * _5193) + (32 * _5656) + (64 * _6030) + 256
                        _6270 = mem[_2226]
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + 288] = mem[_2226]
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + 320 len 32 * _6270] = mem[_2226 + 32 len 32 * _6270]
                        mem[_5175 + 160] = address(cd[132])
                        _6430 = mem[64]
                        mem[64] = _5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 320
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 324] = _5108
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 356] = 0
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 388] = this.address
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 420] = 128
                        _6462 = mem[_6430]
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 452] = mem[_6430]
                        mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 484 len ceil32(_6462)] = mem[_6430 + 32 len ceil32(_6462)]
                        if ceil32(_6462) > _6462:
                            mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + _6462 + 484] = 0
                        require ext_code.size(address(_5073))
                        call address(_5073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5108, 0, address(this.address), 128, mem[_5175 + (192 * _5193) + (32 * _5656) + (64 * _6030) + (32 * _6270) + 452 len ceil32(_6462) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5167 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5182 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5200 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5200:
                            _5613 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5613 + 32]
                            mem[t + 64] = mem[_5613 + 64]
                            mem[t + 96] = mem[_5613 + 96]
                            mem[t + 128] = mem[_5613 + 128]
                            mem[t + 160] = mem[_5613 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5182 + 64] = (192 * _5200) + 192
                        _5657 = mem[_4454]
                        mem[_5182 + (192 * _5200) + 224] = mem[_4454]
                        idx = 0
                        s = _4454 + 32
                        t = _5182 + (192 * _5200) + 256
                        while idx < _5657:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5182 + 96] = (192 * _5200) + (32 * _5657) + 224
                        _6031 = mem[_4455]
                        mem[_5182 + (192 * _5200) + (32 * _5657) + 256] = mem[_4455]
                        idx = 0
                        s = _4455 + 32
                        t = _5182 + (192 * _5200) + (32 * _5657) + 288
                        while idx < _6031:
                            _6239 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6239 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5182 + 128] = (192 * _5200) + (32 * _5657) + (64 * _6031) + 256
                        _6271 = mem[_2226]
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + 288] = mem[_2226]
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + 320 len 32 * _6271] = mem[_2226 + 32 len 32 * _6271]
                        mem[_5182 + 160] = address(cd[132])
                        _6431 = mem[64]
                        mem[64] = _5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 320
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 324] = _5108
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 356] = _5167
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 388] = this.address
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 420] = 128
                        _6463 = mem[_6431]
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 452] = mem[_6431]
                        mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 484 len ceil32(_6463)] = mem[_6431 + 32 len ceil32(_6463)]
                        if ceil32(_6463) > _6463:
                            mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + _6463 + 484] = 0
                        require ext_code.size(address(_5073))
                        call address(_5073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5108, _5167, address(this.address), 128, mem[_5182 + (192 * _5200) + (32 * _5657) + (64 * _6031) + (32 * _6271) + 452 len ceil32(_6463) + 32]
            else:
                if not mem[(32 * mem[_4454] - 1) + _4454 + 44 len 20]:
                    revert with 0, 'ZER'
                require mem[_3392] - 1 < mem[_3392]
                _5075 = mem[mem[(32 * mem[_3392] - 1) + _3392 + 32] + 160]
                if not mem[mem[(32 * mem[_3392] - 1) + _3392 + 32] + 172 len 20]:
                    revert with 0, 'no pool'
                require mem[_4454] - 2 < mem[_4454]
                if mem[(32 * mem[_4454] - 1) + _4454 + 44 len 20] == mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20]:
                    require mem[_4454] - 2 < mem[_4454]
                    if mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20] == mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20]:
                        _5168 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5189 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5189:
                            _5614 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5614 + 32]
                            mem[t + 64] = mem[_5614 + 64]
                            mem[t + 96] = mem[_5614 + 96]
                            mem[t + 128] = mem[_5614 + 128]
                            mem[t + 160] = mem[_5614 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5168 + 64] = (192 * _5189) + 192
                        _5658 = mem[_4454]
                        mem[_5168 + (192 * _5189) + 224] = mem[_4454]
                        s = 0
                        s = _4454 + 32
                        s = _5168 + (192 * _5189) + 256
                        while _3392 + (32 * ('cd', 4).length) + 32 < _5658:
                            mem[s] = mem[('cd', 4).length + 12 len 20]
                            s = _3392 + (32 * ('cd', 4).length) + 33
                            s = ('cd', 4).length + 32
                            s = s + 32
                            continue 
                        mem[_5168 + 96] = s + -_5168 - 32
                        _6032 = mem[_4455]
                        mem[s] = mem[_4455]
                        idx = 0
                        t = _4455 + 32
                        u = s + 32
                        while idx < _6032:
                            _6240 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6240 + 32]
                            idx = idx + 1
                            t = t + 32
                            u = u + 64
                            continue 
                        mem[_5168 + 128] = s + (64 * _6032) - _5168
                        _6272 = mem[_2226]
                        mem[s + (64 * _6032) + 32] = mem[_2226]
                        mem[s + (64 * _6032) + 64 len 32 * _6272] = mem[_2226 + 32 len 32 * _6272]
                        mem[_5168 + 160] = address(cd[132])
                        _6432 = mem[64]
                        mem[64] = s + (64 * _6032) + (32 * _6272) + 64
                        mem[s + (64 * _6032) + (32 * _6272) + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[s + (64 * _6032) + (32 * _6272) + 68] = 0
                        mem[s + (64 * _6032) + (32 * _6272) + 100] = 0
                        mem[s + (64 * _6032) + (32 * _6272) + 132] = this.address
                        mem[s + (64 * _6032) + (32 * _6272) + 164] = 128
                        _6464 = mem[_6432]
                        mem[s + (64 * _6032) + (32 * _6272) + 196] = mem[_6432]
                        mem[s + (64 * _6032) + (32 * _6272) + 228 len ceil32(_6464)] = mem[_6432 + 32 len ceil32(_6464)]
                        if ceil32(_6464) > _6464:
                            mem[s + (64 * _6032) + (32 * _6272) + _6464 + 228] = 0
                        require ext_code.size(address(_5075))
                        call address(_5075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[s + (64 * _6032) + (32 * _6272) + 196 len ceil32(_6464) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5152 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5176 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5194 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5194:
                            _5615 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5615 + 32]
                            mem[t + 64] = mem[_5615 + 64]
                            mem[t + 96] = mem[_5615 + 96]
                            mem[t + 128] = mem[_5615 + 128]
                            mem[t + 160] = mem[_5615 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5176 + 64] = (192 * _5194) + 192
                        _5659 = mem[_4454]
                        mem[_5176 + (192 * _5194) + 224] = mem[_4454]
                        idx = 0
                        s = _4454 + 32
                        t = _5176 + (192 * _5194) + 256
                        while idx < _5659:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5176 + 96] = (192 * _5194) + (32 * _5659) + 224
                        _6033 = mem[_4455]
                        mem[_5176 + (192 * _5194) + (32 * _5659) + 256] = mem[_4455]
                        idx = 0
                        s = _4455 + 32
                        t = _5176 + (192 * _5194) + (32 * _5659) + 288
                        while idx < _6033:
                            _6241 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6241 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5176 + 128] = (192 * _5194) + (32 * _5659) + (64 * _6033) + 256
                        _6273 = mem[_2226]
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + 288] = mem[_2226]
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + 320 len 32 * _6273] = mem[_2226 + 32 len 32 * _6273]
                        mem[_5176 + 160] = address(cd[132])
                        _6433 = mem[64]
                        mem[64] = _5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 320
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 324] = 0
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 356] = _5152
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 388] = this.address
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 420] = 128
                        _6465 = mem[_6433]
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 452] = mem[_6433]
                        mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 484 len ceil32(_6465)] = mem[_6433 + 32 len ceil32(_6465)]
                        if ceil32(_6465) > _6465:
                            mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + _6465 + 484] = 0
                        require ext_code.size(address(_5075))
                        call address(_5075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5152, address(this.address), 128, mem[_5176 + (192 * _5194) + (32 * _5659) + (64 * _6033) + (32 * _6273) + 452 len ceil32(_6465) + 32]
                else:
                    require mem[_2226] - 1 < mem[_2226]
                    _5112 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                    require mem[_4454] - 2 < mem[_4454]
                    if mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20] == mem[(32 * mem[_4454] - 2) + _4454 + 44 len 20]:
                        _5177 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5195 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5195:
                            _5616 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5616 + 32]
                            mem[t + 64] = mem[_5616 + 64]
                            mem[t + 96] = mem[_5616 + 96]
                            mem[t + 128] = mem[_5616 + 128]
                            mem[t + 160] = mem[_5616 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5177 + 64] = (192 * _5195) + 192
                        _5660 = mem[_4454]
                        mem[_5177 + (192 * _5195) + 224] = mem[_4454]
                        idx = 0
                        s = _4454 + 32
                        t = _5177 + (192 * _5195) + 256
                        while idx < _5660:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5177 + 96] = (192 * _5195) + (32 * _5660) + 224
                        _6034 = mem[_4455]
                        mem[_5177 + (192 * _5195) + (32 * _5660) + 256] = mem[_4455]
                        idx = 0
                        s = _4455 + 32
                        t = _5177 + (192 * _5195) + (32 * _5660) + 288
                        while idx < _6034:
                            _6242 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6242 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5177 + 128] = (192 * _5195) + (32 * _5660) + (64 * _6034) + 256
                        _6274 = mem[_2226]
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + 288] = mem[_2226]
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + 320 len 32 * _6274] = mem[_2226 + 32 len 32 * _6274]
                        mem[_5177 + 160] = address(cd[132])
                        _6434 = mem[64]
                        mem[64] = _5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 320
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 324] = _5112
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 356] = 0
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 388] = this.address
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 420] = 128
                        _6466 = mem[_6434]
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 452] = mem[_6434]
                        mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 484 len ceil32(_6466)] = mem[_6434 + 32 len ceil32(_6466)]
                        if ceil32(_6466) > _6466:
                            mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + _6466 + 484] = 0
                        require ext_code.size(address(_5075))
                        call address(_5075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5112, 0, address(this.address), 128, mem[_5177 + (192 * _5195) + (32 * _5660) + (64 * _6034) + (32 * _6274) + 452 len ceil32(_6466) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5169 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5183 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5201 = mem[_3392]
                        mem[mem[64] + 192] = mem[_3392]
                        idx = 0
                        s = _3392 + 32
                        t = mem[64] + 224
                        while idx < _5201:
                            _5617 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5617 + 32]
                            mem[t + 64] = mem[_5617 + 64]
                            mem[t + 96] = mem[_5617 + 96]
                            mem[t + 128] = mem[_5617 + 128]
                            mem[t + 160] = mem[_5617 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5183 + 64] = (192 * _5201) + 192
                        _5661 = mem[_4454]
                        mem[_5183 + (192 * _5201) + 224] = mem[_4454]
                        idx = 0
                        s = _4454 + 32
                        t = _5183 + (192 * _5201) + 256
                        while idx < _5661:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5183 + 96] = (192 * _5201) + (32 * _5661) + 224
                        _6035 = mem[_4455]
                        mem[_5183 + (192 * _5201) + (32 * _5661) + 256] = mem[_4455]
                        idx = 0
                        s = _4455 + 32
                        t = _5183 + (192 * _5201) + (32 * _5661) + 288
                        while idx < _6035:
                            _6243 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6243 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5183 + 128] = (192 * _5201) + (32 * _5661) + (64 * _6035) + 256
                        _6275 = mem[_2226]
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + 288] = mem[_2226]
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + 320 len 32 * _6275] = mem[_2226 + 32 len 32 * _6275]
                        mem[_5183 + 160] = address(cd[132])
                        _6435 = mem[64]
                        mem[64] = _5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 320
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 324] = _5112
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 356] = _5169
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 388] = this.address
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 420] = 128
                        _6467 = mem[_6435]
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 452] = mem[_6435]
                        mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 484 len ceil32(_6467)] = mem[_6435 + 32 len ceil32(_6467)]
                        if ceil32(_6467) > _6467:
                            mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + _6467 + 484] = 0
                        require ext_code.size(address(_5075))
                        call address(_5075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5112, _5169, address(this.address), 128, mem[_5183 + (192 * _5201) + (32 * _5661) + (64 * _6035) + (32 * _6275) + 452 len ceil32(_6467) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[_2226 + 32 len 32 * _2225] = call.data[calldata.size len 32 * _2225]
        require 0 < mem[_2226]
        mem[_2226 + 32] = cd[100]
        _3343 = mem[96]
        idx = 0
        while idx < _3343:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 32] < 1:
                revert with 0, 'INV PAIR TYPE'
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 32] > 10:
                revert with 0, 'INV PAIR TYPE'
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 32] == 1:
                require idx < mem[_1105]
                _3400 = mem[(32 * idx) + _1105 + 32]
                require idx + 1 < mem[_1105]
                _3410 = mem[(32 * idx + 1) + _1105 + 32]
                require idx < mem[96]
                if mem[(32 * idx) + _1105 + 44 len 20] == mem[(32 * idx + 1) + _1105 + 44 len 20]:
                    revert with 0, 'SAMEADDR'
                if mem[(32 * idx) + _1105 + 44 len 20] < mem[(32 * idx + 1) + _1105 + 44 len 20]:
                    if not mem[(32 * idx) + _1105 + 44 len 20]:
                        revert with 0, 'ZER'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 172 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3517] == mem[_3517 + 18 len 14]
                    require mem[_3517 + 32] == mem[_3517 + 50 len 14]
                    require mem[_3517 + 64] == mem[_3517 + 92 len 4]
                    require idx < mem[_2226]
                    require idx < mem[96]
                    if mem[(32 * idx) + _2226 + 32] <= 0:
                        revert with 0, 'WTB: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_3400) == address(_3400):
                        if mem[_3517 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3517 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3517 + 50 len 14]:
                                require mem[_3517 + 50 len 14]
                                if 0 / mem[_3517 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3517 + 18 len 14] / 10000 != mem[_3517 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3517 + 18 len 14] < 10000 * mem[_3517 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3517 + 18 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3517 + 18 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3517 + 50 len 14]:
                                if 10000 * mem[_3517 + 18 len 14] / 10000 != mem[_3517 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3517 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3517 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3517 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3517 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3517 + 50 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3517 + 50 len 14] / mem[_3517 + 50 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3517 + 18 len 14] / 10000 != mem[_3517 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3517 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3517 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3517 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3517 + 50 len 14] / (10000 * mem[_3517 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                    else:
                        if mem[_3517 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3517 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3517 + 18 len 14]:
                                require mem[_3517 + 18 len 14]
                                if 0 / mem[_3517 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3517 + 50 len 14] / 10000 != mem[_3517 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3517 + 50 len 14] < 10000 * mem[_3517 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3517 + 50 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3517 + 50 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3517 + 18 len 14]:
                                if 10000 * mem[_3517 + 50 len 14] / 10000 != mem[_3517 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3517 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3517 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3517 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3517 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3517 + 18 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3517 + 18 len 14] / mem[_3517 + 18 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3517 + 50 len 14] / 10000 != mem[_3517 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3517 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3517 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3517 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3517 + 18 len 14] / (10000 * mem[_3517 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                else:
                    if not mem[(32 * idx + 1) + _1105 + 44 len 20]:
                        revert with 0, 'ZER'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 172 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3518] == mem[_3518 + 18 len 14]
                    require mem[_3518 + 32] == mem[_3518 + 50 len 14]
                    require mem[_3518 + 64] == mem[_3518 + 92 len 4]
                    require idx < mem[_2226]
                    require idx < mem[96]
                    if mem[(32 * idx) + _2226 + 32] <= 0:
                        revert with 0, 'WTB: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_3400) == address(_3410):
                        if mem[_3518 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3518 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3518 + 50 len 14]:
                                require mem[_3518 + 50 len 14]
                                if 0 / mem[_3518 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3518 + 18 len 14] / 10000 != mem[_3518 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3518 + 18 len 14] < 10000 * mem[_3518 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3518 + 18 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3518 + 18 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3518 + 50 len 14]:
                                if 10000 * mem[_3518 + 18 len 14] / 10000 != mem[_3518 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3518 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3518 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3518 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3518 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3518 + 50 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3518 + 50 len 14] / mem[_3518 + 50 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3518 + 18 len 14] / 10000 != mem[_3518 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3518 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3518 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3518 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3518 + 50 len 14] / (10000 * mem[_3518 + 18 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                    else:
                        if mem[_3518 + 50 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if mem[_3518 + 18 len 14] <= 0:
                            revert with 0, 'WTB: INSUFFICIENT_LIQUIDITY'
                        if not mem[mem[(32 * idx) + 128]]:
                            if mem[_3518 + 18 len 14]:
                                require mem[_3518 + 18 len 14]
                                if 0 / mem[_3518 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3518 + 50 len 14] / 10000 != mem[_3518 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_3518 + 50 len 14] < 10000 * mem[_3518 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_3518 + 50 len 14]
                            require idx + 1 < mem[_2226]
                            mem[(32 * idx + 1) + _2226 + 32] = 0 / 10000 * mem[_3518 + 50 len 14]
                        else:
                            require mem[mem[(32 * idx) + 128]]
                            if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] / mem[mem[(32 * idx) + 128]] != mem[(32 * idx) + _2226 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_3518 + 18 len 14]:
                                if 10000 * mem[_3518 + 50 len 14] / 10000 != mem[_3518 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3518 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3518 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3518 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = 0 / (10000 * mem[_3518 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                            else:
                                require mem[_3518 + 18 len 14]
                                if mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3518 + 18 len 14] / mem[_3518 + 18 len 14] != mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_3518 + 50 len 14] / 10000 != mem[_3518 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_3518 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]]) < 10000 * mem[_3518 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_3518 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]] * mem[_3518 + 18 len 14] / (10000 * mem[_3518 + 50 len 14]) + (mem[(32 * idx) + _2226 + 32] * mem[mem[(32 * idx) + 128]])
            else:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 32] != 2:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128] + 32] >= 3:
                        require idx < mem[_2226]
                        _3442 = mem[(32 * idx) + _2226 + 32]
                        require idx < mem[_1106]
                        require idx < mem[_1106]
                        _3472 = mem[mem[(32 * idx) + _1106 + 32] + 32]
                        require idx < mem[96]
                        _3483 = mem[mem[(32 * idx) + 128] + 160]
                        require idx < mem[96]
                        require idx < mem[96]
                        if mem[mem[(32 * idx) + 128] + 32] == 3:
                            if mem[mem[(32 * idx) + 128] + 64]:
                                mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_1106')), 32)), 32)))
                                mem[mem[64] + 36] = ('signextend', 15, ('var', '_3472'))
                                mem[mem[64] + 68] = _3442
                                require ext_code.size(address(_3483))
                                staticcall address(_3483).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], ('signextend', 15, ('var', '_3472')), _3442
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3705 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3705] == mem[_3705]
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[_3705]
                            else:
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1106 + 32]]
                                mem[mem[64] + 36] = _3472
                                mem[mem[64] + 68] = _3442
                                require ext_code.size(address(_3483))
                                staticcall address(_3483).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], _3472, _3442
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3706 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3706] == mem[_3706]
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[_3706]
                        else:
                            if mem[mem[(32 * idx) + 128] + 32] != 4:
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + _1106 + 32] + 31 len 1]
                                mem[mem[64] + 36] = uint8(_3472)
                                mem[mem[64] + 68] = _3442
                                require ext_code.size(address(_3483))
                                staticcall address(_3483).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], _3472 << 248, _3442
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3704 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3704] == mem[_3704]
                                require idx + 1 < mem[_2226]
                                mem[(32 * idx + 1) + _2226 + 32] = mem[_3704]
                            else:
                                if mem[mem[(32 * idx) + 128] + 64]:
                                    mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_1106')), 32)), 32)))
                                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_3472'))
                                    mem[mem[64] + 68] = _3442
                                    require ext_code.size(address(_3483))
                                    staticcall address(_3483).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], ('signextend', 15, ('var', '_3472')), _3442
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3712 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3712] == mem[_3712]
                                    require idx + 1 < mem[_2226]
                                    mem[(32 * idx + 1) + _2226 + 32] = mem[_3712]
                                else:
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _1106 + 32]]
                                    mem[mem[64] + 36] = _3472
                                    mem[mem[64] + 68] = 0
                                    require ext_code.size(address(_3483))
                                    staticcall address(_3483).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], _3472, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3713 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3713] == mem[_3713]
                                    require idx + 1 < mem[_2226]
                                    mem[(32 * idx + 1) + _2226 + 32] = mem[_3713]
                else:
                    require idx < mem[_2226]
                    _3426 = mem[(32 * idx) + _2226 + 32]
                    require idx < mem[_1105]
                    _3435 = mem[(32 * idx) + _1105 + 32]
                    require idx + 1 < mem[_1105]
                    _3444 = mem[(32 * idx + 1) + _1105 + 32]
                    require idx < mem[96]
                    _3460 = mem[mem[(32 * idx) + 128] + 96]
                    _3485 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_3485 + 256] = 96
                    mem[_3485] = 0
                    mem[_3485 + 32] = address(_3435)
                    mem[_3485 + 64] = address(_3444)
                    mem[_3485 + 96] = _3426
                    mem[_3485 + 128] = _3460
                    mem[_3485 + 160] = 0
                    mem[_3485 + 192] = this.address
                    mem[_3485 + 224] = this.address
                    mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3460
                    require ext_code.size(sub_70e842a1Address)
                    staticcall sub_70e842a1Address.getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _3460
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3615 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3647 = mem[_3615]
                    require mem[_3615] <= test266151307()
                    require _3615 + mem[_3615] + 31 < _3615 + return_data.size
                    _3671 = mem[_3615 + mem[_3615]]
                    require mem[_3615 + mem[_3615]] <= test266151307()
                    require _3615 + ceil32(return_data.size) + (32 * mem[_3615 + mem[_3615]]) + 32 <= test266151307() and (32 * mem[_3615 + mem[_3615]]) + 32 >= 0
                    mem[64] = _3615 + ceil32(return_data.size) + (32 * mem[_3615 + mem[_3615]]) + 32
                    mem[_3615 + ceil32(return_data.size)] = _3671
                    require _3647 + (32 * _3671) + 32 <= return_data.size
                    s = 0
                    t = _3615 + _3647 + 32
                    u = _3615 + ceil32(return_data.size) + 32
                    while s < _3671:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        _3343 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _4460 = mem[_3615 + 32]
                    require mem[_3615 + 32] <= test266151307()
                    require _3615 + mem[_3615 + 32] + 31 < _3615 + return_data.size
                    _4473 = mem[_3615 + mem[_3615 + 32]]
                    require mem[_3615 + mem[_3615 + 32]] <= test266151307()
                    _4483 = mem[64]
                    require mem[64] + (32 * mem[_3615 + mem[_3615 + 32]]) + 32 <= test266151307() and mem[64] + (32 * mem[_3615 + mem[_3615 + 32]]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[_3615 + mem[_3615 + 32]]) + 32
                    mem[_4483] = _4473
                    require _4460 + (32 * _4473) + 32 <= return_data.size
                    s = 0
                    t = _3615 + _4460 + 32
                    u = _4483 + 32
                    while s < _4473:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _3343 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require mem[_3615 + 64] == mem[_3615 + 64]
                    require ext_code.size(sub_70e842a1Address)
                    staticcall sub_70e842a1Address.getPool(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _3460
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5187 = mem[_5165]
                    require mem[_5165] == mem[_5165 + 12 len 20]
                    require mem[_5165 + 32] < 3
                    s = 0
                    t = 0
                    u = 0
                    while s < mem[_3615 + ceil32(return_data.size)]:
                        require s < mem[_3615 + ceil32(return_data.size)]
                        if mem[(32 * s) + _3615 + ceil32(return_data.size) + 44 len 20] != address(_3435):
                            require s < mem[_3615 + ceil32(return_data.size)]
                            if mem[(32 * s) + _3615 + ceil32(return_data.size) + 44 len 20] != address(_3444):
                                _3343 = mem[96]
                                s = s + 1
                                t = t
                                u = u
                                continue 
                            require s < _4473
                            _3343 = mem[96]
                            s = s + 1
                            t = mem[(32 * s) + _4483 + 32]
                            u = u
                            continue 
                        require s < _4473
                        require s < mem[_3615 + ceil32(return_data.size)]
                        if mem[(32 * s) + _3615 + ceil32(return_data.size) + 44 len 20] != address(_3444):
                            _3343 = mem[96]
                            s = s + 1
                            t = t
                            u = mem[(32 * s) + _4483 + 32]
                            continue 
                        require s < _4473
                        _3343 = mem[96]
                        s = s + 1
                        t = mem[(32 * s) + _4483 + 32]
                        u = mem[(32 * s) + _4483 + 32]
                        continue 
                    mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    require mem[_3485] < 2
                    mem[mem[64] + 100] = mem[_3485]
                    mem[mem[64] + 132] = mem[_3485 + 44 len 20]
                    mem[mem[64] + 164] = mem[_3485 + 76 len 20]
                    mem[mem[64] + 196] = mem[_3485 + 96]
                    mem[mem[64] + 228] = mem[_3485 + 128]
                    mem[mem[64] + 260] = mem[_3485 + 160]
                    mem[mem[64] + 292] = mem[_3485 + 204 len 20]
                    mem[mem[64] + 324] = mem[_3485 + 236 len 20]
                    _5925 = mem[_3485 + 256]
                    mem[mem[64] + 356] = 288
                    _5927 = mem[_5925]
                    mem[mem[64] + 388] = mem[_5925]
                    s = 0
                    while s < _5927:
                        mem[mem[64] + s + 420] = mem[_5925 + s + 32]
                        _3343 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5927) <= _5927:
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = t
                        require ext_code.size(address(_5187))
                        staticcall address(_5187).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                gas gas_remaining wei
                               args 96, u, t, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5927) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6113] == mem[_6113]
                        require idx + 1 < mem[_2226]
                        mem[(32 * idx + 1) + _2226 + 32] = mem[_6113]
                    else:
                        mem[mem[64] + _5927 + 420] = 0
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = t
                        require ext_code.size(address(_5187))
                        staticcall address(_5187).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                gas gas_remaining wei
                               args 96, u, t, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5927) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6115] == mem[_6115]
                        require idx + 1 < mem[_2226]
                        mem[(32 * idx + 1) + _2226 + 32] = mem[_6115]
            _3343 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_2226]
        require mem[_2226] - 1 < mem[_2226]
        if mem[(32 * mem[_2226] - 1) + _2226 + 32] < cd[164] + mem[_2226 + 32]:
            revert with 0, 'STOP'
        require 0 < mem[_2226]
        require mem[_2226] - 1 < mem[_2226]
        if mem[(32 * mem[_2226] - 1) + _2226 + 32] >= cd[164] + mem[_2226 + 32]:
            _3397 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
            mem[_3397] = ('cd', 4).length
            s = _3397 + 32
            idx = 0
            while idx < ('cd', 4).length:
                require calldata.size + (-192 * idx) + -cd[4] - 36 >= 192
                _4477 = mem[64]
                require mem[64] + 192 <= test266151307() and mem[64] + 192 >= mem[64]
                mem[64] = mem[64] + 192
                require cd[((192 * idx) + cd[4] + 36)] == cd[((192 * idx) + cd[4] + 36)]
                mem[_4477] = cd[((192 * idx) + cd[4] + 36)]
                require cd[((192 * idx) + cd[4] + 68)] == cd[((192 * idx) + cd[4] + 68)]
                mem[_4477 + 32] = cd[((192 * idx) + cd[4] + 68)]
                require cd[((192 * idx) + cd[4] + 100)] == cd[((192 * idx) + cd[4] + 100)]
                mem[_4477 + 64] = cd[((192 * idx) + cd[4] + 100)]
                require cd[((192 * idx) + cd[4] + 132)] == cd[((192 * idx) + cd[4] + 132)]
                mem[_4477 + 96] = cd[((192 * idx) + cd[4] + 132)]
                require cd[((192 * idx) + cd[4] + 164)] == cd[((192 * idx) + cd[4] + 164)]
                mem[_4477 + 128] = cd[((192 * idx) + cd[4] + 164)]
                require cd[((192 * idx) + cd[4] + 196)] == address(cd[((192 * idx) + cd[4] + 196)])
                mem[_4477 + 160] = cd[((192 * idx) + cd[4] + 196)]
                mem[s] = _4477
                s = s + 32
                idx = idx + 1
                continue 
            _4456 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_4456] = ('cd', 36).length
            mem[_4456 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_4456 + (32 * ('cd', 36).length) + 32] = 0
            _4457 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_4457] = ('cd', 68).length
            s = _4457 + 32
            idx = 0
            while idx < ('cd', 68).length:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _5057 = mem[64]
                require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == cd[((64 * idx) + cd[68] + 36)]
                mem[_5057] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_5057 + 32] = cd[((64 * idx) + cd[68] + 68)]
                mem[s] = _5057
                s = s + 32
                idx = idx + 1
                continue 
            require mem[_4456] - 2 < mem[_4456]
            require mem[_4456] - 1 < mem[_4456]
            if mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20] == mem[(32 * mem[_4456] - 1) + _4456 + 44 len 20]:
                revert with 0, 'SAMEADDR'
            if mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20] < mem[(32 * mem[_4456] - 1) + _4456 + 44 len 20]:
                if not mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20]:
                    revert with 0, 'ZER'
                require mem[_3397] - 1 < mem[_3397]
                _5077 = mem[mem[(32 * mem[_3397] - 1) + _3397 + 32] + 160]
                if not mem[mem[(32 * mem[_3397] - 1) + _3397 + 32] + 172 len 20]:
                    revert with 0, 'no pool'
                require mem[_4456] - 2 < mem[_4456]
                if mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20] == mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20]:
                    require mem[_4456] - 2 < mem[_4456]
                    if mem[(32 * mem[_4456] - 1) + _4456 + 44 len 20] == mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20]:
                        _5170 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5190 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5190:
                            _5620 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5620 + 32]
                            mem[t + 64] = mem[_5620 + 64]
                            mem[t + 96] = mem[_5620 + 96]
                            mem[t + 128] = mem[_5620 + 128]
                            mem[t + 160] = mem[_5620 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5170 + 64] = (192 * _5190) + 192
                        _5664 = mem[_4456]
                        mem[_5170 + (192 * _5190) + 224] = mem[_4456]
                        s = 0
                        s = _4456 + 32
                        s = _5170 + (192 * _5190) + 256
                        while _3397 + (32 * ('cd', 4).length) + 32 < _5664:
                            mem[s] = mem[('cd', 4).length + 12 len 20]
                            s = _3397 + (32 * ('cd', 4).length) + 33
                            s = ('cd', 4).length + 32
                            s = s + 32
                            continue 
                        mem[_5170 + 96] = s + -_5170 - 32
                        _6036 = mem[_4457]
                        mem[s] = mem[_4457]
                        idx = 0
                        t = _4457 + 32
                        u = s + 32
                        while idx < _6036:
                            _6244 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6244 + 32]
                            idx = idx + 1
                            t = t + 32
                            u = u + 64
                            continue 
                        mem[_5170 + 128] = s + (64 * _6036) - _5170
                        _6276 = mem[_2226]
                        mem[s + (64 * _6036) + 32] = mem[_2226]
                        mem[s + (64 * _6036) + 64 len 32 * _6276] = mem[_2226 + 32 len 32 * _6276]
                        mem[_5170 + 160] = address(cd[132])
                        _6436 = mem[64]
                        mem[64] = s + (64 * _6036) + (32 * _6276) + 64
                        mem[s + (64 * _6036) + (32 * _6276) + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[s + (64 * _6036) + (32 * _6276) + 68] = 0
                        mem[s + (64 * _6036) + (32 * _6276) + 100] = 0
                        mem[s + (64 * _6036) + (32 * _6276) + 132] = this.address
                        mem[s + (64 * _6036) + (32 * _6276) + 164] = 128
                        _6468 = mem[_6436]
                        mem[s + (64 * _6036) + (32 * _6276) + 196] = mem[_6436]
                        mem[s + (64 * _6036) + (32 * _6276) + 228 len ceil32(_6468)] = mem[_6436 + 32 len ceil32(_6468)]
                        if ceil32(_6468) > _6468:
                            mem[s + (64 * _6036) + (32 * _6276) + _6468 + 228] = 0
                        require ext_code.size(address(_5077))
                        call address(_5077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[s + (64 * _6036) + (32 * _6276) + 196 len ceil32(_6468) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5157 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5178 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5196 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5196:
                            _5621 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5621 + 32]
                            mem[t + 64] = mem[_5621 + 64]
                            mem[t + 96] = mem[_5621 + 96]
                            mem[t + 128] = mem[_5621 + 128]
                            mem[t + 160] = mem[_5621 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5178 + 64] = (192 * _5196) + 192
                        _5665 = mem[_4456]
                        mem[_5178 + (192 * _5196) + 224] = mem[_4456]
                        idx = 0
                        s = _4456 + 32
                        t = _5178 + (192 * _5196) + 256
                        while idx < _5665:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5178 + 96] = (192 * _5196) + (32 * _5665) + 224
                        _6037 = mem[_4457]
                        mem[_5178 + (192 * _5196) + (32 * _5665) + 256] = mem[_4457]
                        idx = 0
                        s = _4457 + 32
                        t = _5178 + (192 * _5196) + (32 * _5665) + 288
                        while idx < _6037:
                            _6245 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6245 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5178 + 128] = (192 * _5196) + (32 * _5665) + (64 * _6037) + 256
                        _6277 = mem[_2226]
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + 288] = mem[_2226]
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + 320 len 32 * _6277] = mem[_2226 + 32 len 32 * _6277]
                        mem[_5178 + 160] = address(cd[132])
                        _6437 = mem[64]
                        mem[64] = _5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 320
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 324] = 0
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 356] = _5157
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 388] = this.address
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 420] = 128
                        _6469 = mem[_6437]
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 452] = mem[_6437]
                        mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 484 len ceil32(_6469)] = mem[_6437 + 32 len ceil32(_6469)]
                        if ceil32(_6469) > _6469:
                            mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + _6469 + 484] = 0
                        require ext_code.size(address(_5077))
                        call address(_5077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5157, address(this.address), 128, mem[_5178 + (192 * _5196) + (32 * _5665) + (64 * _6037) + (32 * _6277) + 452 len ceil32(_6469) + 32]
                else:
                    require mem[_2226] - 1 < mem[_2226]
                    _5116 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                    require mem[_4456] - 2 < mem[_4456]
                    if mem[(32 * mem[_4456] - 1) + _4456 + 44 len 20] == mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20]:
                        _5179 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5197 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5197:
                            _5622 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5622 + 32]
                            mem[t + 64] = mem[_5622 + 64]
                            mem[t + 96] = mem[_5622 + 96]
                            mem[t + 128] = mem[_5622 + 128]
                            mem[t + 160] = mem[_5622 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5179 + 64] = (192 * _5197) + 192
                        _5666 = mem[_4456]
                        mem[_5179 + (192 * _5197) + 224] = mem[_4456]
                        idx = 0
                        s = _4456 + 32
                        t = _5179 + (192 * _5197) + 256
                        while idx < _5666:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5179 + 96] = (192 * _5197) + (32 * _5666) + 224
                        _6038 = mem[_4457]
                        mem[_5179 + (192 * _5197) + (32 * _5666) + 256] = mem[_4457]
                        idx = 0
                        s = _4457 + 32
                        t = _5179 + (192 * _5197) + (32 * _5666) + 288
                        while idx < _6038:
                            _6246 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6246 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5179 + 128] = (192 * _5197) + (32 * _5666) + (64 * _6038) + 256
                        _6278 = mem[_2226]
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + 288] = mem[_2226]
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + 320 len 32 * _6278] = mem[_2226 + 32 len 32 * _6278]
                        mem[_5179 + 160] = address(cd[132])
                        _6438 = mem[64]
                        mem[64] = _5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 320
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 324] = _5116
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 356] = 0
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 388] = this.address
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 420] = 128
                        _6470 = mem[_6438]
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 452] = mem[_6438]
                        mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 484 len ceil32(_6470)] = mem[_6438 + 32 len ceil32(_6470)]
                        if ceil32(_6470) > _6470:
                            mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + _6470 + 484] = 0
                        require ext_code.size(address(_5077))
                        call address(_5077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5116, 0, address(this.address), 128, mem[_5179 + (192 * _5197) + (32 * _5666) + (64 * _6038) + (32 * _6278) + 452 len ceil32(_6470) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5171 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5185 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5202 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5202:
                            _5623 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5623 + 32]
                            mem[t + 64] = mem[_5623 + 64]
                            mem[t + 96] = mem[_5623 + 96]
                            mem[t + 128] = mem[_5623 + 128]
                            mem[t + 160] = mem[_5623 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5185 + 64] = (192 * _5202) + 192
                        _5667 = mem[_4456]
                        mem[_5185 + (192 * _5202) + 224] = mem[_4456]
                        idx = 0
                        s = _4456 + 32
                        t = _5185 + (192 * _5202) + 256
                        while idx < _5667:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5185 + 96] = (192 * _5202) + (32 * _5667) + 224
                        _6039 = mem[_4457]
                        mem[_5185 + (192 * _5202) + (32 * _5667) + 256] = mem[_4457]
                        idx = 0
                        s = _4457 + 32
                        t = _5185 + (192 * _5202) + (32 * _5667) + 288
                        while idx < _6039:
                            _6247 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6247 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5185 + 128] = (192 * _5202) + (32 * _5667) + (64 * _6039) + 256
                        _6279 = mem[_2226]
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + 288] = mem[_2226]
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + 320 len 32 * _6279] = mem[_2226 + 32 len 32 * _6279]
                        mem[_5185 + 160] = address(cd[132])
                        _6439 = mem[64]
                        mem[64] = _5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 320
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 324] = _5116
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 356] = _5171
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 388] = this.address
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 420] = 128
                        _6471 = mem[_6439]
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 452] = mem[_6439]
                        mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 484 len ceil32(_6471)] = mem[_6439 + 32 len ceil32(_6471)]
                        if ceil32(_6471) > _6471:
                            mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + _6471 + 484] = 0
                        require ext_code.size(address(_5077))
                        call address(_5077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5116, _5171, address(this.address), 128, mem[_5185 + (192 * _5202) + (32 * _5667) + (64 * _6039) + (32 * _6279) + 452 len ceil32(_6471) + 32]
            else:
                if not mem[(32 * mem[_4456] - 1) + _4456 + 44 len 20]:
                    revert with 0, 'ZER'
                require mem[_3397] - 1 < mem[_3397]
                _5079 = mem[mem[(32 * mem[_3397] - 1) + _3397 + 32] + 160]
                if not mem[mem[(32 * mem[_3397] - 1) + _3397 + 32] + 172 len 20]:
                    revert with 0, 'no pool'
                require mem[_4456] - 2 < mem[_4456]
                if mem[(32 * mem[_4456] - 1) + _4456 + 44 len 20] == mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20]:
                    require mem[_4456] - 2 < mem[_4456]
                    if mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20] == mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20]:
                        _5172 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5191 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5191:
                            _5624 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5624 + 32]
                            mem[t + 64] = mem[_5624 + 64]
                            mem[t + 96] = mem[_5624 + 96]
                            mem[t + 128] = mem[_5624 + 128]
                            mem[t + 160] = mem[_5624 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5172 + 64] = (192 * _5191) + 192
                        _5668 = mem[_4456]
                        mem[_5172 + (192 * _5191) + 224] = mem[_4456]
                        s = 0
                        s = _4456 + 32
                        s = _5172 + (192 * _5191) + 256
                        while _3397 + (32 * ('cd', 4).length) + 32 < _5668:
                            mem[s] = mem[('cd', 4).length + 12 len 20]
                            s = _3397 + (32 * ('cd', 4).length) + 33
                            s = ('cd', 4).length + 32
                            s = s + 32
                            continue 
                        mem[_5172 + 96] = s + -_5172 - 32
                        _6040 = mem[_4457]
                        mem[s] = mem[_4457]
                        idx = 0
                        t = _4457 + 32
                        u = s + 32
                        while idx < _6040:
                            _6248 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6248 + 32]
                            idx = idx + 1
                            t = t + 32
                            u = u + 64
                            continue 
                        mem[_5172 + 128] = s + (64 * _6040) - _5172
                        _6280 = mem[_2226]
                        mem[s + (64 * _6040) + 32] = mem[_2226]
                        mem[s + (64 * _6040) + 64 len 32 * _6280] = mem[_2226 + 32 len 32 * _6280]
                        mem[_5172 + 160] = address(cd[132])
                        _6440 = mem[64]
                        mem[64] = s + (64 * _6040) + (32 * _6280) + 64
                        mem[s + (64 * _6040) + (32 * _6280) + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[s + (64 * _6040) + (32 * _6280) + 68] = 0
                        mem[s + (64 * _6040) + (32 * _6280) + 100] = 0
                        mem[s + (64 * _6040) + (32 * _6280) + 132] = this.address
                        mem[s + (64 * _6040) + (32 * _6280) + 164] = 128
                        _6472 = mem[_6440]
                        mem[s + (64 * _6040) + (32 * _6280) + 196] = mem[_6440]
                        mem[s + (64 * _6040) + (32 * _6280) + 228 len ceil32(_6472)] = mem[_6440 + 32 len ceil32(_6472)]
                        if ceil32(_6472) > _6472:
                            mem[s + (64 * _6040) + (32 * _6280) + _6472 + 228] = 0
                        require ext_code.size(address(_5079))
                        call address(_5079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, mem[s + (64 * _6040) + (32 * _6280) + 196 len ceil32(_6472) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5161 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5180 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5198 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5198:
                            _5625 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5625 + 32]
                            mem[t + 64] = mem[_5625 + 64]
                            mem[t + 96] = mem[_5625 + 96]
                            mem[t + 128] = mem[_5625 + 128]
                            mem[t + 160] = mem[_5625 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5180 + 64] = (192 * _5198) + 192
                        _5669 = mem[_4456]
                        mem[_5180 + (192 * _5198) + 224] = mem[_4456]
                        idx = 0
                        s = _4456 + 32
                        t = _5180 + (192 * _5198) + 256
                        while idx < _5669:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5180 + 96] = (192 * _5198) + (32 * _5669) + 224
                        _6041 = mem[_4457]
                        mem[_5180 + (192 * _5198) + (32 * _5669) + 256] = mem[_4457]
                        idx = 0
                        s = _4457 + 32
                        t = _5180 + (192 * _5198) + (32 * _5669) + 288
                        while idx < _6041:
                            _6249 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6249 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5180 + 128] = (192 * _5198) + (32 * _5669) + (64 * _6041) + 256
                        _6281 = mem[_2226]
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + 288] = mem[_2226]
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + 320 len 32 * _6281] = mem[_2226 + 32 len 32 * _6281]
                        mem[_5180 + 160] = address(cd[132])
                        _6441 = mem[64]
                        mem[64] = _5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 320
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 324] = 0
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 356] = _5161
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 388] = this.address
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 420] = 128
                        _6473 = mem[_6441]
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 452] = mem[_6441]
                        mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 484 len ceil32(_6473)] = mem[_6441 + 32 len ceil32(_6473)]
                        if ceil32(_6473) > _6473:
                            mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + _6473 + 484] = 0
                        require ext_code.size(address(_5079))
                        call address(_5079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5161, address(this.address), 128, mem[_5180 + (192 * _5198) + (32 * _5669) + (64 * _6041) + (32 * _6281) + 452 len ceil32(_6473) + 32]
                else:
                    require mem[_2226] - 1 < mem[_2226]
                    _5120 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                    require mem[_4456] - 2 < mem[_4456]
                    if mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20] == mem[(32 * mem[_4456] - 2) + _4456 + 44 len 20]:
                        _5181 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5199 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5199:
                            _5626 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5626 + 32]
                            mem[t + 64] = mem[_5626 + 64]
                            mem[t + 96] = mem[_5626 + 96]
                            mem[t + 128] = mem[_5626 + 128]
                            mem[t + 160] = mem[_5626 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5181 + 64] = (192 * _5199) + 192
                        _5670 = mem[_4456]
                        mem[_5181 + (192 * _5199) + 224] = mem[_4456]
                        idx = 0
                        s = _4456 + 32
                        t = _5181 + (192 * _5199) + 256
                        while idx < _5670:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5181 + 96] = (192 * _5199) + (32 * _5670) + 224
                        _6042 = mem[_4457]
                        mem[_5181 + (192 * _5199) + (32 * _5670) + 256] = mem[_4457]
                        idx = 0
                        s = _4457 + 32
                        t = _5181 + (192 * _5199) + (32 * _5670) + 288
                        while idx < _6042:
                            _6250 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6250 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5181 + 128] = (192 * _5199) + (32 * _5670) + (64 * _6042) + 256
                        _6282 = mem[_2226]
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + 288] = mem[_2226]
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + 320 len 32 * _6282] = mem[_2226 + 32 len 32 * _6282]
                        mem[_5181 + 160] = address(cd[132])
                        _6442 = mem[64]
                        mem[64] = _5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 320
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 324] = _5120
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 356] = 0
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 388] = this.address
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 420] = 128
                        _6474 = mem[_6442]
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 452] = mem[_6442]
                        mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 484 len ceil32(_6474)] = mem[_6442 + 32 len ceil32(_6474)]
                        if ceil32(_6474) > _6474:
                            mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + _6474 + 484] = 0
                        require ext_code.size(address(_5079))
                        call address(_5079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5120, 0, address(this.address), 128, mem[_5181 + (192 * _5199) + (32 * _5670) + (64 * _6042) + (32 * _6282) + 452 len ceil32(_6474) + 32]
                    else:
                        require mem[_2226] - 1 < mem[_2226]
                        _5173 = mem[(32 * mem[_2226] - 1) + _2226 + 32]
                        _5186 = mem[64]
                        mem[mem[64] + 32] = 160
                        _5203 = mem[_3397]
                        mem[mem[64] + 192] = mem[_3397]
                        idx = 0
                        s = _3397 + 32
                        t = mem[64] + 224
                        while idx < _5203:
                            _5627 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_5627 + 32]
                            mem[t + 64] = mem[_5627 + 64]
                            mem[t + 96] = mem[_5627 + 96]
                            mem[t + 128] = mem[_5627 + 128]
                            mem[t + 160] = mem[_5627 + 172 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 192
                            continue 
                        mem[_5186 + 64] = (192 * _5203) + 192
                        _5671 = mem[_4456]
                        mem[_5186 + (192 * _5203) + 224] = mem[_4456]
                        idx = 0
                        s = _4456 + 32
                        t = _5186 + (192 * _5203) + 256
                        while idx < _5671:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5186 + 96] = (192 * _5203) + (32 * _5671) + 224
                        _6043 = mem[_4457]
                        mem[_5186 + (192 * _5203) + (32 * _5671) + 256] = mem[_4457]
                        idx = 0
                        s = _4457 + 32
                        t = _5186 + (192 * _5203) + (32 * _5671) + 288
                        while idx < _6043:
                            _6251 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6251 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        mem[_5186 + 128] = (192 * _5203) + (32 * _5671) + (64 * _6043) + 256
                        _6283 = mem[_2226]
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + 288] = mem[_2226]
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + 320 len 32 * _6283] = mem[_2226 + 32 len 32 * _6283]
                        mem[_5186 + 160] = address(cd[132])
                        _6443 = mem[64]
                        mem[64] = _5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 320
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 324] = _5120
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 356] = _5173
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 388] = this.address
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 420] = 128
                        _6475 = mem[_6443]
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 452] = mem[_6443]
                        mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 484 len ceil32(_6475)] = mem[_6443 + 32 len ceil32(_6475)]
                        if ceil32(_6475) > _6475:
                            mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + _6475 + 484] = 0
                        require ext_code.size(address(_5079))
                        call address(_5079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5120, _5173, address(this.address), 128, mem[_5186 + (192 * _5203) + (32 * _5671) + (64 * _6043) + (32 * _6283) + 452 len ceil32(_6475) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
