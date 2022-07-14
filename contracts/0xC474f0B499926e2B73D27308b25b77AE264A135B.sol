contract main {




// =====================  Runtime code  =====================


#
#  - sub_4f8b6f5b(?)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
mapping of uint256 wards;
address owner;

function owner() payable {
    return owner
}

function wards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return wards[arg1]
}

function _fallback() payable {
    revert
}

function rely(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if wards[msg.sender] != 1:
        revert with 0, 'not auth'
    wards[address(arg1)] = 1
}

function deny(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if wards[msg.sender] != 1:
        revert with 0, 'not auth'
    wards[address(arg1)] = 0
}

function sub_3a129a30(?) payable {
    require calldata.size - 4 >= 192
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if wards[msg.sender] != 1:
        revert with 0, 'not auth'
    if arg6 < block.timestamp:
        revert with 0, 'UniswapV2Router: EXPIRED'
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(arg4) <= address(arg5):
        if not arg1:
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 1000 * ext_call.return_data[18 len 14] > -1:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 18
            if 0 / 1000 * ext_call.return_data[18 len 14] < arg2:
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 132] = address(arg3)
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg4)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg4) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg3))
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if arg1 and 997 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 997 * arg1 / arg1 != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 997 * arg1:
                if not ext_call.return_data[18 len 14]:
                    if 0 > !(997 * arg1):
                        revert with 0, 17
                    if 997 * arg1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg1:
                        revert with 0, 18
                    if 0 / 997 * arg1 < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 997 * arg1, address(this.address), 128, 0
                else:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * arg1):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
            else:
                if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
                    revert with 0, 17
                if not 997 * arg1:
                    revert with 0, 18
                if 997 * arg1 * ext_call.return_data[50 len 14] / 997 * arg1 != ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[18 len 14]:
                    if 0 > !(997 * arg1):
                        revert with 0, 17
                    if 997 * arg1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg1:
                        revert with 0, 18
                    if 997 * arg1 * ext_call.return_data[50 len 14] / 997 * arg1 < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1, address(this.address), 128, 0
                else:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * arg1):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                        revert with 0, 18
                    if 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
    else:
        if not arg1:
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 1000 * ext_call.return_data[50 len 14] > -1:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 18
            if 0 / 1000 * ext_call.return_data[50 len 14] < arg2:
                revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 132] = address(arg3)
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg4)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg4) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg3))
            call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0
        else:
            if arg1 and 997 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 997 * arg1 / arg1 != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 997 * arg1:
                if not ext_call.return_data[50 len 14]:
                    if 0 > !(997 * arg1):
                        revert with 0, 17
                    if 997 * arg1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg1:
                        revert with 0, 18
                    if 0 / 997 * arg1 < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 997 * arg1, 0, address(this.address), 128, 0
                else:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * arg1):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
            else:
                if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
                    revert with 0, 17
                if not 997 * arg1:
                    revert with 0, 18
                if 997 * arg1 * ext_call.return_data[18 len 14] / 997 * arg1 != ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[50 len 14]:
                    if 0 > !(997 * arg1):
                        revert with 0, 17
                    if 997 * arg1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg1:
                        revert with 0, 18
                    if 997 * arg1 * ext_call.return_data[18 len 14] / 997 * arg1 < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1, 0, address(this.address), 128, 0
                else:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * arg1):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                        revert with 0, 18
                    if 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < arg2:
                        revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[ceil32(return_data.size) + 132] = address(arg3)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(arg4)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call address(arg4) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg1, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg3))
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
