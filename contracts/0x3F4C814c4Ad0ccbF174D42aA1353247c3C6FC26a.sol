contract main {




// =====================  Runtime code  =====================


#
#  - sub_25ec8c5f(?)
#  - sub_ec298dfe(?)
#
function sub_46e5c437(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg1, address(this.address), 128, 1, uint8(call.data[calldata.size len 1]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    mem[calldata.size + 128] = 0
    mem[calldata.size + 128 len ceil32(calldata.size)] = 0, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    if ceil32(calldata.size) <= calldata.size:
        delegate this.address with:
           funct (Mask(32, -(8 * ceil32(calldata.size) - calldata.size) + 224, 0, call.data[4 len calldata.size - 4]) >> -(8 * ceil32(calldata.size) - calldata.size) + 224)
             gas gas_remaining wei
            args (Mask(8 * calldata.size - 4, -(8 * calldata.size) + 256, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256) << (8 * calldata.size) - 256)
    else:
        mem[(2 * calldata.size) + 128] = 0
        delegate this.address.mem[calldata.size + 128 len 4] with:
             gas gas_remaining wei
            args mem[calldata.size + 132 len calldata.size - 4]
    if not delegate.return_code:
        revert with 0, 'uniswapV2Call failed'
    return 0, call.data[4 len calldata.size - 4]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[100] = 0x5c5db43db72b6e73702eeb1e5b62a03a343732a
    mem[132] = arg3
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5c5db43db72b6e73702eeb1e5b62a03a343732a, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = 2
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = block.timestamp
    require ext_code.size(0x5c5db43db72b6e73702eeb1e5b62a03a343732a)
    call 0x05c5db43db72b6e73702eeb1e5b62a03a343732a.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 2, 0, arg3, 0, block.timestamp
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
    staticcall 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
    call 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.exchangeOldForCanonical(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98, ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 96] = 2
    mem[(7 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(7 * ceil32(return_data.size)) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = arg3
    mem[(7 * ceil32(return_data.size)) + 228] = 64
    mem[(7 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = (7 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _632 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
    _633 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(8 * ceil32(return_data.size)) + 192] = _633
    require (32 * _633) + _632 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 224 len ceil32(32 * _633)] = mem[(7 * ceil32(return_data.size)) + _632 + 224 len ceil32(32 * _633)]
    if 0 >= _633:
        revert with 'NH{q', 50
    _1234 = mem[(8 * ceil32(return_data.size)) + 224]
    mem[(7 * ceil32(return_data.size)) + 128] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
    mem[(7 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1241 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1242 = mem[_1241]
    mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[mem[64] + 36] = _1242
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _1242
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1247 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1247] == bool(mem[_1247])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1242
    mem[mem[64] + 36] = _1234
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _1242, _1234, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1831 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1832 = mem[_1831]
    require mem[_1831] <= test266151307()
    require _1831 + mem[_1831] + 31 < _1831 + return_data.size
    _1833 = mem[_1831 + mem[_1831]]
    if mem[_1831 + mem[_1831]] > test266151307():
        revert with 'NH{q', 65
    if _1831 + ceil32(return_data.size) + ceil32(32 * mem[_1831 + mem[_1831]]) + 1 > test266151307() or ceil32(32 * mem[_1831 + mem[_1831]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1831 + ceil32(return_data.size) + ceil32(32 * mem[_1831 + mem[_1831]]) + 1
    mem[_1831 + ceil32(return_data.size)] = _1833
    require (32 * _1833) + _1832 + 32 <= return_data.size
    mem[_1831 + ceil32(return_data.size) + 32 len ceil32(32 * _1833)] = mem[_1831 + _1832 + 32 len ceil32(32 * _1833)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2410 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2411 = mem[_2410]
    _2412 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _1234
    _2413 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_2412 + 100] = 32
    mem[_2412 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
        revert with 0, 'Address: call to non-contract'
    _2420 = mem[_2413]
    mem[_2412 + 164 len ceil32(mem[_2413])] = mem[_2413 + 32 len ceil32(mem[_2413])]
    if ceil32(_2420) > _2420:
        mem[_2412 + _2420 + 164] = 0
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
         gas gas_remaining wei
        args mem[_2412 + 168 len _2420 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
            if not 0, Mask(224, 32, arg3) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if _2411 < _1234:
            revert with 'NH{q', 17
        mem[_2412 + 200] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[_2412 + 232] = _2411 - _1234
        mem[_2412 + 164] = 68
        mem[_2412 + 196 len 4] = unknown_0xa9059cbb(?????)
        mem[_2412 + 264] = 32
        mem[_2412 + 296] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[_2412 + 328 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0
        mem[_2412 + 396] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2412 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_2412 + 360] == bool(mem[_2412 + 360])
                if not mem[_2412 + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_2412 + 164] = return_data.size
        mem[_2412 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_2412 + 196] == bool(mem[_2412 + 196])
            if not mem[_2412 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if _2411 < _1234:
            revert with 'NH{q', 17
        mem[_2412 + ceil32(return_data.size) + 201] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[_2412 + ceil32(return_data.size) + 233] = _2411 - _1234
        mem[_2412 + ceil32(return_data.size) + 165] = 68
        mem[_2412 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_2412 + ceil32(return_data.size) + 265] = 32
        mem[_2412 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[_2412 + ceil32(return_data.size) + 329 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0
        mem[_2412 + ceil32(return_data.size) + 397] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2412 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[_2412 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[_2412 + ceil32(return_data.size) + 361] == bool(mem[_2412 + ceil32(return_data.size) + 361])
                if not mem[_2412 + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[_2412 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[100] = 0x5c5db43db72b6e73702eeb1e5b62a03a343732a
    mem[132] = arg3
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5c5db43db72b6e73702eeb1e5b62a03a343732a, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = 2
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = block.timestamp
    require ext_code.size(0x5c5db43db72b6e73702eeb1e5b62a03a343732a)
    call 0x05c5db43db72b6e73702eeb1e5b62a03a343732a.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 2, 0, arg3, 0, block.timestamp
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
    staticcall 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
    call 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.exchangeOldForCanonical(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98, ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 96] = 2
    mem[(7 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(7 * ceil32(return_data.size)) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = arg3
    mem[(7 * ceil32(return_data.size)) + 228] = 64
    mem[(7 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = (7 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _632 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
    _633 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(8 * ceil32(return_data.size)) + 192] = _633
    require (32 * _633) + _632 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 224 len ceil32(32 * _633)] = mem[(7 * ceil32(return_data.size)) + _632 + 224 len ceil32(32 * _633)]
    if 0 >= _633:
        revert with 'NH{q', 50
    _1234 = mem[(8 * ceil32(return_data.size)) + 224]
    mem[(7 * ceil32(return_data.size)) + 128] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
    mem[(7 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1241 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1242 = mem[_1241]
    mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[mem[64] + 36] = _1242
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _1242
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1247 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1247] == bool(mem[_1247])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1242
    mem[mem[64] + 36] = _1234
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _1242, _1234, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1831 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1832 = mem[_1831]
    require mem[_1831] <= test266151307()
    require _1831 + mem[_1831] + 31 < _1831 + return_data.size
    _1833 = mem[_1831 + mem[_1831]]
    if mem[_1831 + mem[_1831]] > test266151307():
        revert with 'NH{q', 65
    if _1831 + ceil32(return_data.size) + ceil32(32 * mem[_1831 + mem[_1831]]) + 1 > test266151307() or ceil32(32 * mem[_1831 + mem[_1831]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1831 + ceil32(return_data.size) + ceil32(32 * mem[_1831 + mem[_1831]]) + 1
    mem[_1831 + ceil32(return_data.size)] = _1833
    require (32 * _1833) + _1832 + 32 <= return_data.size
    mem[_1831 + ceil32(return_data.size) + 32 len ceil32(32 * _1833)] = mem[_1831 + _1832 + 32 len ceil32(32 * _1833)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2410 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2411 = mem[_2410]
    _2412 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _1234
    _2413 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_2412 + 100] = 32
    mem[_2412 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
        revert with 0, 'Address: call to non-contract'
    _2420 = mem[_2413]
    mem[_2412 + 164 len ceil32(mem[_2413])] = mem[_2413 + 32 len ceil32(mem[_2413])]
    if ceil32(_2420) > _2420:
        mem[_2412 + _2420 + 164] = 0
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
         gas gas_remaining wei
        args mem[_2412 + 168 len _2420 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
            if not 0, Mask(224, 32, arg3) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if _2411 < _1234:
            revert with 'NH{q', 17
        mem[_2412 + 200] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[_2412 + 232] = _2411 - _1234
        mem[_2412 + 164] = 68
        mem[_2412 + 196 len 4] = unknown_0xa9059cbb(?????)
        mem[_2412 + 264] = 32
        mem[_2412 + 296] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[_2412 + 328 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0
        mem[_2412 + 396] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2412 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_2412 + 360] == bool(mem[_2412 + 360])
                if not mem[_2412 + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_2412 + 164] = return_data.size
        mem[_2412 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_2412 + 196] == bool(mem[_2412 + 196])
            if not mem[_2412 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if _2411 < _1234:
            revert with 'NH{q', 17
        mem[_2412 + ceil32(return_data.size) + 201] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[_2412 + ceil32(return_data.size) + 233] = _2411 - _1234
        mem[_2412 + ceil32(return_data.size) + 165] = 68
        mem[_2412 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_2412 + ceil32(return_data.size) + 265] = 32
        mem[_2412 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[_2412 + ceil32(return_data.size) + 329 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0
        mem[_2412 + ceil32(return_data.size) + 397] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2412 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[_2412 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[_2412 + ceil32(return_data.size) + 361] == bool(mem[_2412 + ceil32(return_data.size) + 361])
                if not mem[_2412 + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[_2412 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[100] = 0x5c5db43db72b6e73702eeb1e5b62a03a343732a
    mem[132] = arg3
    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
    call 0xc7198437980c041c805a1edcba50c1ce5db95118.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5c5db43db72b6e73702eeb1e5b62a03a343732a, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = 2
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = block.timestamp
    require ext_code.size(0x5c5db43db72b6e73702eeb1e5b62a03a343732a)
    call 0x05c5db43db72b6e73702eeb1e5b62a03a343732a.swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 2, 0, arg3, 0, block.timestamp
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
    staticcall 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98)
    call 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.exchangeOldForCanonical(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xdc42728b0ea910349ed3c6e1c9dc06b5fb591f98, ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 96] = 2
    mem[(7 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(7 * ceil32(return_data.size)) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = arg3
    mem[(7 * ceil32(return_data.size)) + 228] = 64
    mem[(7 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = (7 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _632 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
    _633 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(8 * ceil32(return_data.size)) + 192] = _633
    require (32 * _633) + _632 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 224 len ceil32(32 * _633)] = mem[(7 * ceil32(return_data.size)) + _632 + 224 len ceil32(32 * _633)]
    if 0 >= _633:
        revert with 'NH{q', 50
    _1234 = mem[(8 * ceil32(return_data.size)) + 224]
    mem[(7 * ceil32(return_data.size)) + 128] = 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64
    mem[(7 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    staticcall 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1241 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1242 = mem[_1241]
    mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[mem[64] + 36] = _1242
    require ext_code.size(0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64)
    call 0xd24c2ad096400b6fbcd2ad8b24e7acbc21a1da64.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _1242
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1247 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1247] == bool(mem[_1247])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1242
    mem[mem[64] + 36] = _1234
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _1242, _1234, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1831 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1832 = mem[_1831]
    require mem[_1831] <= test266151307()
    require _1831 + mem[_1831] + 31 < _1831 + return_data.size
    _1833 = mem[_1831 + mem[_1831]]
    if mem[_1831 + mem[_1831]] > test266151307():
        revert with 'NH{q', 65
    if _1831 + ceil32(return_data.size) + ceil32(32 * mem[_1831 + mem[_1831]]) + 1 > test266151307() or ceil32(32 * mem[_1831 + mem[_1831]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1831 + ceil32(return_data.size) + ceil32(32 * mem[_1831 + mem[_1831]]) + 1
    mem[_1831 + ceil32(return_data.size)] = _1833
    require (32 * _1833) + _1832 + 32 <= return_data.size
    mem[_1831 + ceil32(return_data.size) + 32 len ceil32(32 * _1833)] = mem[_1831 + _1832 + 32 len ceil32(32 * _1833)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2410 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2411 = mem[_2410]
    _2412 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _1234
    _2413 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_2412 + 100] = 32
    mem[_2412 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
        revert with 0, 'Address: call to non-contract'
    _2420 = mem[_2413]
    mem[_2412 + 164 len ceil32(mem[_2413])] = mem[_2413 + 32 len ceil32(mem[_2413])]
    if ceil32(_2420) > _2420:
        mem[_2412 + _2420 + 164] = 0
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
         gas gas_remaining wei
        args mem[_2412 + 168 len _2420 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
            if not 0, Mask(224, 32, arg3) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if _2411 < _1234:
            revert with 'NH{q', 17
        mem[_2412 + 200] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[_2412 + 232] = _2411 - _1234
        mem[_2412 + 164] = 68
        mem[_2412 + 196 len 4] = unknown_0xa9059cbb(?????)
        mem[_2412 + 264] = 32
        mem[_2412 + 296] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[_2412 + 328 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0
        mem[_2412 + 396] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2412 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_2412 + 360] == bool(mem[_2412 + 360])
                if not mem[_2412 + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_2412 + 164] = return_data.size
        mem[_2412 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_2412 + 196] == bool(mem[_2412 + 196])
            if not mem[_2412 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if _2411 < _1234:
            revert with 'NH{q', 17
        mem[_2412 + ceil32(return_data.size) + 201] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
        mem[_2412 + ceil32(return_data.size) + 233] = _2411 - _1234
        mem[_2412 + ceil32(return_data.size) + 165] = 68
        mem[_2412 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_2412 + ceil32(return_data.size) + 265] = 32
        mem[_2412 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[_2412 + ceil32(return_data.size) + 329 len 96] = 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0
        mem[_2412 + ceil32(return_data.size) + 397] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x585845b853f6a37b159bd8dc98bd92f732c84716, _2411 - _1234, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
                if not 0, Mask(224, 32, arg3) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2412 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[_2412 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[_2412 + ceil32(return_data.size) + 361] == bool(mem[_2412 + ceil32(return_data.size) + 361])
                if not mem[_2412 + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[_2412 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
