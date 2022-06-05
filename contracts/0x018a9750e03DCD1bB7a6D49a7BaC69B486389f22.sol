contract main {




// =====================  Runtime code  =====================


uint32 stor6023;
address routerAddress;
uint256 stor6023;
address storC8FC;

function routerAddress() payable {
    return address(routerAddress)
}

function _fallback() payable {
    revert
}

function setRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    address(routerAddress) = arg1
}

function sub_cb9a10b0(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    mem[100] = this.address
    mem[132] = address(routerAddress)
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = address(routerAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] + arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor6023)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6023), uint32(stor6023), ext_call.return_data[0] + arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor6023), uint32(stor6023), ext_call.return_data[0] + arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor6023), uint32(stor6023), ext_call.return_data[0] + arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 260] = 2
            mem[ceil32(return_data.size) + 292] = address(arg1)
            mem[ceil32(return_data.size) + 324] = address(arg3)
            if 1 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 360] = arg2
            mem[ceil32(return_data.size) + 392] = arg4
            mem[ceil32(return_data.size) + 424] = 160
            mem[ceil32(return_data.size) + 520] = 2
            idx = 0
            s = ceil32(return_data.size) + 552
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 456] = address(arg5)
            mem[ceil32(return_data.size) + 488] = block.timestamp + 1
            call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 552 len 64]), address(arg5), block.timestamp + 1
            if ext_call.success:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _1171 = mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < ceil32(return_data.size) + return_data.size + 356
                _1187 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357
                mem[(2 * ceil32(return_data.size)) + 356] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                require _1171 + (32 * _1187) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 388 len ceil32(32 * _1187)] = mem[ceil32(return_data.size) + _1171 + 388 len ceil32(32 * _1187)]
                if _1187 < 1:
                    revert with 0, 17
                if _1187 - 1 >= _1187:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * _1187 - 1) + (2 * ceil32(return_data.size)) + 388]
                return memory
                  from mem[64]
                   len 32
            if return_data.size <= 3:
                revert with 0, 'swapExactTokensForTokens:undefined'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'swapExactTokensForTokens:undefined'
            if return_data.size < 68:
                revert with 0, 'swapExactTokensForTokens:undefined'
            mem[ceil32(return_data.size) + 356 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
                revert with 0, 'swapExactTokensForTokens:undefined'
            if mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                revert with 0, 'swapExactTokensForTokens:undefined'
            if 0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 32 > return_data.size - 4:
                revert with 0, 'swapExactTokensForTokens:undefined'
            if floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 < 356 or ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357
            if not ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356:
                revert with 0, 'swapExactTokensForTokens:undefined'
            _1343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1343] = 24
            mem[_1343 + 32] = 'swapExactTokensForTokens'
            _1363 = mem[64]
            mem[mem[64] + 32] = 'swapExactTokensForTokens'
            mem[mem[64] + 56] = 0
            _1632 = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356]
            mem[mem[64] + 56 len ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356])] = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 388 len ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356])]
            if ceil32(_1632) <= _1632:
                _1889 = mem[64]
                mem[mem[64]] = _1632 + 24
                mem[64] = _1632 + mem[64] + 56
                mem[_1632 + _1363 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1632 + _1363 + 60] = 32
                _1921 = mem[_1889]
                mem[_1632 + _1363 + 92] = mem[_1889]
                mem[_1632 + _1363 + 124 len ceil32(_1921)] = mem[_1889 + 32 len ceil32(_1921)]
                if ceil32(_1921) > _1921:
                    mem[_1921 + _1632 + _1363 + 124] = 0
                revert with 0, 32, mem[_1632 + _1363 + 92 len ceil32(_1921) + 32]
            mem[_1632 + mem[64] + 56] = 0
            _1890 = mem[64]
            mem[mem[64]] = _1632 + 24
            mem[64] = _1632 + mem[64] + 56
            mem[_1632 + _1363 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1632 + _1363 + 60] = 32
            _1922 = mem[_1890]
            mem[_1632 + _1363 + 92] = mem[_1890]
            mem[_1632 + _1363 + 124 len ceil32(_1922)] = mem[_1890 + 32 len ceil32(_1922)]
            if ceil32(_1922) > _1922:
                mem[_1922 + _1632 + _1363 + 124] = 0
            revert with 0, 32, mem[_1632 + _1363 + 92 len ceil32(_1922) + 32]
        require ext_call.return_data[0] >= 32
        require uint32(this.address), Mask(224, 0, stor6023) == bool(uint32(this.address), Mask(224, 0, stor6023))
        if not uint32(this.address), Mask(224, 0, stor6023):
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 260] = 2
        mem[ceil32(return_data.size) + 292] = address(arg1)
        mem[ceil32(return_data.size) + 324] = address(arg3)
        if 1 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(return_data.size) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 360] = arg2
        mem[ceil32(return_data.size) + 392] = arg4
        mem[ceil32(return_data.size) + 424] = 160
        mem[ceil32(return_data.size) + 520] = 2
        idx = 0
        s = ceil32(return_data.size) + 552
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 456] = address(arg5)
        mem[ceil32(return_data.size) + 488] = block.timestamp + 1
        call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 552 len 64]), address(arg5), block.timestamp + 1
        if ext_call.success:
            mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 356
            require return_data.size >= 32
            _1172 = mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < ceil32(return_data.size) + return_data.size + 356
            _1188 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357
            mem[(2 * ceil32(return_data.size)) + 356] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
            require _1172 + (32 * _1188) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 388 len ceil32(32 * _1188)] = mem[ceil32(return_data.size) + _1172 + 388 len ceil32(32 * _1188)]
            if _1188 < 1:
                revert with 0, 17
            if _1188 - 1 >= _1188:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * _1188 - 1) + (2 * ceil32(return_data.size)) + 388]
            return memory
              from mem[64]
               len 32
        if return_data.size <= 3:
            revert with 0, 'swapExactTokensForTokens:undefined'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'swapExactTokensForTokens:undefined'
        if return_data.size < 68:
            revert with 0, 'swapExactTokensForTokens:undefined'
        mem[ceil32(return_data.size) + 356 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
            revert with 0, 'swapExactTokensForTokens:undefined'
        if mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] > test266151307():
            revert with 0, 'swapExactTokensForTokens:undefined'
        if 0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 32 > return_data.size - 4:
            revert with 0, 'swapExactTokensForTokens:undefined'
        if floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 < 356 or ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357
        if not ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356:
            revert with 0, 'swapExactTokensForTokens:undefined'
        _1345 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1345] = 24
        mem[_1345 + 32] = 'swapExactTokensForTokens'
        _1366 = mem[64]
        mem[mem[64] + 32] = 'swapExactTokensForTokens'
        mem[mem[64] + 56] = 0
        _1634 = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356]
        mem[mem[64] + 56 len ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356])] = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 388 len ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 356])]
        if ceil32(_1634) <= _1634:
            _1893 = mem[64]
            mem[mem[64]] = _1634 + 24
            mem[64] = _1634 + mem[64] + 56
            mem[_1634 + _1366 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1634 + _1366 + 60] = 32
            _1925 = mem[_1893]
            mem[_1634 + _1366 + 92] = mem[_1893]
            mem[_1634 + _1366 + 124 len ceil32(_1925)] = mem[_1893 + 32 len ceil32(_1925)]
            if ceil32(_1925) > _1925:
                mem[_1925 + _1634 + _1366 + 124] = 0
            revert with 0, 32, mem[_1634 + _1366 + 92 len ceil32(_1925) + 32]
        mem[_1634 + mem[64] + 56] = 0
        _1894 = mem[64]
        mem[mem[64]] = _1634 + _1366 + -mem[64] + 24
        mem[64] = _1634 + _1366 + 56
        mem[_1634 + _1366 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_1634 + _1366 + 60] = 32
        _1926 = mem[_1894]
        mem[_1634 + _1366 + 92] = mem[_1894]
        mem[_1634 + _1366 + 124 len ceil32(_1926)] = mem[_1894 + 32 len ceil32(_1926)]
        if ceil32(_1926) > _1926:
            mem[_1926 + _1634 + _1366 + 124] = 0
        revert with 0, 32, mem[_1634 + _1366 + 92 len ceil32(_1926) + 32]
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 2
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 357
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = address(arg1)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = address(arg3)
        if 1 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg2
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg4
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 160
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = 2
        idx = 0
        s = ceil32(return_data.size) + ceil32(return_data.size) + 553
        t = ceil32(return_data.size) + ceil32(return_data.size) + 293
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = address(arg5)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = block.timestamp + 1
        call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg4, Array(len=2, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 553 len 64]), address(arg5), block.timestamp + 1
        if ext_call.success:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
            require return_data.size >= 32
            _1173 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32
            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
            _1189 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]
            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _1189
            require _1173 + (32 * _1189) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _1189)] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1173 + 389 len ceil32(32 * _1189)]
            if _1189 < 1:
                revert with 0, 17
            if _1189 - 1 >= _1189:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * _1189 - 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
            return memory
              from mem[64]
               len 32
        if return_data.size <= 3:
            revert with 0, 'swapExactTokensForTokens:undefined'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'swapExactTokensForTokens:undefined'
        if return_data.size < 68:
            revert with 0, 'swapExactTokensForTokens:undefined'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
            revert with 0, 'swapExactTokensForTokens:undefined'
        if mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] > test266151307():
            revert with 0, 'swapExactTokensForTokens:undefined'
        if 0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 32 > return_data.size - 4:
            revert with 0, 'swapExactTokensForTokens:undefined'
        if floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 < 357 or ceil32(return_data.size) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358
        if not ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357:
            revert with 0, 'swapExactTokensForTokens:undefined'
        _1347 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1347] = 24
        mem[_1347 + 32] = 'swapExactTokensForTokens'
        _1369 = mem[64]
        mem[mem[64] + 32] = 'swapExactTokensForTokens'
        mem[mem[64] + 56] = 0
        _1636 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357]
        mem[mem[64] + 56 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 389 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])]
        if ceil32(_1636) <= _1636:
            _1897 = mem[64]
            mem[mem[64]] = _1636 + 24
            mem[64] = _1636 + mem[64] + 56
            mem[_1636 + _1369 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1636 + _1369 + 60] = 32
            _1929 = mem[_1897]
            mem[_1636 + _1369 + 92] = mem[_1897]
            mem[_1636 + _1369 + 124 len ceil32(_1929)] = mem[_1897 + 32 len ceil32(_1929)]
            if ceil32(_1929) > _1929:
                mem[_1929 + _1636 + _1369 + 124] = 0
            revert with 0, 32, mem[_1636 + _1369 + 92 len ceil32(_1929) + 32]
        mem[_1636 + mem[64] + 56] = 0
        _1898 = mem[64]
        mem[mem[64]] = _1636 + 24
        mem[64] = _1636 + mem[64] + 56
        mem[_1636 + _1369 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_1636 + _1369 + 60] = 32
        _1930 = mem[_1898]
        mem[_1636 + _1369 + 92] = mem[_1898]
        mem[_1636 + _1369 + 124 len ceil32(_1930)] = mem[_1898 + 32 len ceil32(_1930)]
        if ceil32(_1930) > _1930:
            mem[_1930 + _1636 + _1369 + 124] = 0
        revert with 0, 32, mem[_1636 + _1369 + 92 len ceil32(_1930) + 32]
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
    if not mem[ceil32(return_data.size) + 292]:
        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 2
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 357
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = address(arg1)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = address(arg3)
    if 1 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg2
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg4
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 160
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = 2
    idx = 0
    s = ceil32(return_data.size) + ceil32(return_data.size) + 553
    t = ceil32(return_data.size) + ceil32(return_data.size) + 293
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = address(arg5)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = block.timestamp + 1
    call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg4, Array(len=2, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 553 len 64]), address(arg5), block.timestamp + 1
    if ext_call.success:
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
        require return_data.size >= 32
        _1174 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
        _1190 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]
        if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _1190
        require _1174 + (32 * _1190) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _1190)] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _1174 + 389 len ceil32(32 * _1190)]
        if _1190 < 1:
            revert with 0, 17
        if _1190 - 1 >= _1190:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * _1190 - 1) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
        return memory
          from mem[64]
           len 32
    if return_data.size <= 3:
        revert with 0, 'swapExactTokensForTokens:undefined'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'swapExactTokensForTokens:undefined'
    if return_data.size < 68:
        revert with 0, 'swapExactTokensForTokens:undefined'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
        revert with 0, 'swapExactTokensForTokens:undefined'
    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] > test266151307():
        revert with 0, 'swapExactTokensForTokens:undefined'
    if 0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 32 > return_data.size - 4:
        revert with 0, 'swapExactTokensForTokens:undefined'
    if floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 < 357 or ceil32(return_data.size) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358
    if not ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357:
        revert with 0, 'swapExactTokensForTokens:undefined'
    _1349 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1349] = 24
    mem[_1349 + 32] = 'swapExactTokensForTokens'
    _1372 = mem[64]
    mem[mem[64] + 32] = 'swapExactTokensForTokens'
    mem[mem[64] + 56] = 0
    _1638 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357]
    mem[mem[64] + 56 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 389 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])]
    if ceil32(_1638) <= _1638:
        _1901 = mem[64]
        mem[mem[64]] = _1638 + 24
        mem[64] = _1638 + mem[64] + 56
        mem[_1638 + _1372 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_1638 + _1372 + 60] = 32
        _1933 = mem[_1901]
        mem[_1638 + _1372 + 92] = mem[_1901]
        mem[_1638 + _1372 + 124 len ceil32(_1933)] = mem[_1901 + 32 len ceil32(_1933)]
        if ceil32(_1933) > _1933:
            mem[_1933 + _1638 + _1372 + 124] = 0
        revert with 0, 32, mem[_1638 + _1372 + 92 len ceil32(_1933) + 32]
    mem[_1638 + mem[64] + 56] = 0
    _1902 = mem[64]
    mem[mem[64]] = _1638 + _1372 + -mem[64] + 24
    mem[64] = _1638 + _1372 + 56
    mem[_1638 + _1372 + 56] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_1638 + _1372 + 60] = 32
    _1934 = mem[_1902]
    mem[_1638 + _1372 + 92] = mem[_1902]
    mem[_1638 + _1372 + 124 len ceil32(_1934)] = mem[_1902 + 32 len ceil32(_1934)]
    if ceil32(_1934) > _1934:
        mem[_1934 + _1638 + _1372 + 124] = 0
    revert with 0, 32, mem[_1638 + _1372 + 92 len ceil32(_1934) + 32]
}

function sub_ee011dbd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    mem[100] = this.address
    mem[132] = address(routerAddress)
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = address(routerAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] + arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor6023)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6023), uint32(stor6023), ext_call.return_data[0] + arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor6023), uint32(stor6023), ext_call.return_data[0] + arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor6023), uint32(stor6023), ext_call.return_data[0] + arg2, 0) << 288)
    if 43114 != chainid:
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                staticcall address(routerAddress).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 260] = 2
                mem[(2 * ceil32(return_data.size)) + 292] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[0])
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 356] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                mem[(2 * ceil32(return_data.size)) + 392] = arg3
                mem[(2 * ceil32(return_data.size)) + 424] = 160
                mem[(2 * ceil32(return_data.size)) + 520] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 552
                t = (2 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 456] = address(arg4)
                mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp + 1
                call address(routerAddress).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 552 len 64]), address(arg4), block.timestamp + 1
                if ext_call.success:
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 356
                    require return_data.size >= 32
                    _2463 = mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                    _2495 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357
                    mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                    require _2463 + (32 * _2495) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 388 len ceil32(32 * _2495)] = mem[(2 * ceil32(return_data.size)) + _2463 + 388 len ceil32(32 * _2495)]
                    if _2495 < 1:
                        revert with 0, 17
                    if _2495 - 1 >= _2495:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _2495 - 1) + (4 * ceil32(return_data.size)) + 388]
                    return memory
                      from mem[64]
                       len 32
                if return_data.size <= 3:
                    revert with 0, 'swapExactTokensForETH:undefined'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'swapExactTokensForETH:undefined'
                if return_data.size < 68:
                    revert with 0, 'swapExactTokensForETH:undefined'
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
                    revert with 0, 'swapExactTokensForETH:undefined'
                if mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                    revert with 0, 'swapExactTokensForETH:undefined'
                if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 32 > return_data.size - 4:
                    revert with 0, 'swapExactTokensForETH:undefined'
                if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 < 356 or (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357
                if not (2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356:
                    revert with 0, 'swapExactTokensForETH:undefined'
                _2803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2803] = 21
                mem[_2803 + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
                _2839 = mem[64]
                mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
                mem[mem[64] + 53] = 0
                _3380 = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356]
                mem[mem[64] + 53 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 388 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])]
                if ceil32(_3380) <= _3380:
                    _3885 = mem[64]
                    mem[mem[64]] = _3380 + 21
                    mem[64] = _3380 + mem[64] + 53
                    mem[_3380 + _2839 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3380 + _2839 + 57] = 32
                    _3949 = mem[_3885]
                    mem[_3380 + _2839 + 89] = mem[_3885]
                    mem[_3380 + _2839 + 121 len ceil32(_3949)] = mem[_3885 + 32 len ceil32(_3949)]
                    if ceil32(_3949) > _3949:
                        mem[_3949 + _3380 + _2839 + 121] = 0
                    revert with 0, 32, mem[_3380 + _2839 + 89 len ceil32(_3949) + 32]
                mem[_3380 + mem[64] + 53] = 0
                _3886 = mem[64]
                mem[mem[64]] = _3380 + _2839 + -mem[64] + 21
                mem[64] = _3380 + _2839 + 53
                mem[_3380 + _2839 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3380 + _2839 + 57] = 32
                _3950 = mem[_3886]
                mem[_3380 + _2839 + 89] = mem[_3886]
                mem[_3380 + _2839 + 121 len ceil32(_3950)] = mem[_3886 + 32 len ceil32(_3950)]
                if ceil32(_3950) > _3950:
                    mem[_3950 + _3380 + _2839 + 121] = 0
                revert with 0, 32, mem[_3380 + _2839 + 89 len ceil32(_3950) + 32]
            require ext_call.return_data[0] >= 32
            require uint32(this.address), Mask(224, 0, stor6023) == bool(uint32(this.address), Mask(224, 0, stor6023))
            if not uint32(this.address), Mask(224, 0, stor6023):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            staticcall address(routerAddress).WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 260] = 2
            mem[(2 * ceil32(return_data.size)) + 292] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[0])
            if 1 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 356] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 360] = arg2
            mem[(2 * ceil32(return_data.size)) + 392] = arg3
            mem[(2 * ceil32(return_data.size)) + 424] = 160
            mem[(2 * ceil32(return_data.size)) + 520] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 552
            t = (2 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 456] = address(arg4)
            mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp + 1
            call address(routerAddress).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 552 len 64]), address(arg4), block.timestamp + 1
            if ext_call.success:
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _2464 = mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32
                require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                _2496 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357
                mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                require _2464 + (32 * _2496) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 388 len ceil32(32 * _2496)] = mem[(2 * ceil32(return_data.size)) + _2464 + 388 len ceil32(32 * _2496)]
                if _2496 < 1:
                    revert with 0, 17
                if _2496 - 1 >= _2496:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * _2496 - 1) + (4 * ceil32(return_data.size)) + 388]
                return memory
                  from mem[64]
                   len 32
            if return_data.size <= 3:
                revert with 0, 'swapExactTokensForETH:undefined'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'swapExactTokensForETH:undefined'
            if return_data.size < 68:
                revert with 0, 'swapExactTokensForETH:undefined'
            mem[(2 * ceil32(return_data.size)) + 356 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
                revert with 0, 'swapExactTokensForETH:undefined'
            if mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                revert with 0, 'swapExactTokensForETH:undefined'
            if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 32 > return_data.size - 4:
                revert with 0, 'swapExactTokensForETH:undefined'
            if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 < 356 or (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357
            if not (2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356:
                revert with 0, 'swapExactTokensForETH:undefined'
            _2805 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2805] = 21
            mem[_2805 + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
            _2842 = mem[64]
            mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
            mem[mem[64] + 53] = 0
            _3382 = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356]
            mem[mem[64] + 53 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 388 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])]
            if ceil32(_3382) <= _3382:
                _3889 = mem[64]
                mem[mem[64]] = _3382 + 21
                mem[64] = _3382 + mem[64] + 53
                mem[_3382 + _2842 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3382 + _2842 + 57] = 32
                _3953 = mem[_3889]
                mem[_3382 + _2842 + 89] = mem[_3889]
                mem[_3382 + _2842 + 121 len ceil32(_3953)] = mem[_3889 + 32 len ceil32(_3953)]
                if ceil32(_3953) > _3953:
                    mem[_3953 + _3382 + _2842 + 121] = 0
                revert with 0, 32, mem[_3382 + _2842 + 89 len ceil32(_3953) + 32]
            mem[_3382 + mem[64] + 53] = 0
            _3890 = mem[64]
            mem[mem[64]] = _3382 + _2842 + -mem[64] + 21
            mem[64] = _3382 + _2842 + 53
            mem[_3382 + _2842 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3382 + _2842 + 57] = 32
            _3954 = mem[_3890]
            mem[_3382 + _2842 + 89] = mem[_3890]
            mem[_3382 + _2842 + 121 len ceil32(_3954)] = mem[_3890 + 32 len ceil32(_3954)]
            if ceil32(_3954) > _3954:
                mem[_3954 + _3382 + _2842 + 121] = 0
            revert with 0, 32, mem[_3382 + _2842 + 89 len ceil32(_3954) + 32]
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            staticcall address(routerAddress).WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
            if 1 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg3
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg4)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
            call address(routerAddress).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(arg4), block.timestamp + 1
            if ext_call.success:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _2465 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _2497 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _2497
                require _2465 + (32 * _2497) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _2497)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2465 + 389 len ceil32(32 * _2497)]
                if _2497 < 1:
                    revert with 0, 17
                if _2497 - 1 >= _2497:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * _2497 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
                return memory
                  from mem[64]
                   len 32
            if return_data.size <= 3:
                revert with 0, 'swapExactTokensForETH:undefined'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'swapExactTokensForETH:undefined'
            if return_data.size < 68:
                revert with 0, 'swapExactTokensForETH:undefined'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
                revert with 0, 'swapExactTokensForETH:undefined'
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                revert with 0, 'swapExactTokensForETH:undefined'
            if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 32 > return_data.size - 4:
                revert with 0, 'swapExactTokensForETH:undefined'
            if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 < 357 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358
            if not (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357:
                revert with 0, 'swapExactTokensForETH:undefined'
            _2807 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2807] = 21
            mem[_2807 + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
            _2845 = mem[64]
            mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
            mem[mem[64] + 53] = 0
            _3384 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357]
            mem[mem[64] + 53 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 389 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])]
            if ceil32(_3384) <= _3384:
                _3893 = mem[64]
                mem[mem[64]] = _3384 + 21
                mem[64] = _3384 + mem[64] + 53
                mem[_3384 + _2845 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3384 + _2845 + 57] = 32
                _3957 = mem[_3893]
                mem[_3384 + _2845 + 89] = mem[_3893]
                mem[_3384 + _2845 + 121 len ceil32(_3957)] = mem[_3893 + 32 len ceil32(_3957)]
                if ceil32(_3957) > _3957:
                    mem[_3957 + _3384 + _2845 + 121] = 0
                revert with 0, 32, mem[_3384 + _2845 + 89 len ceil32(_3957) + 32]
            mem[_3384 + mem[64] + 53] = 0
            _3894 = mem[64]
            mem[mem[64]] = _3384 + _2845 + -mem[64] + 21
            mem[64] = _3384 + _2845 + 53
            mem[_3384 + _2845 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3384 + _2845 + 57] = 32
            _3958 = mem[_3894]
            mem[_3384 + _2845 + 89] = mem[_3894]
            mem[_3384 + _2845 + 121 len ceil32(_3958)] = mem[_3894 + 32 len ceil32(_3958)]
            if ceil32(_3958) > _3958:
                mem[_3958 + _3384 + _2845 + 121] = 0
            revert with 0, 32, mem[_3384 + _2845 + 89 len ceil32(_3958) + 32]
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        staticcall address(routerAddress).WETH() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
        if 1 > !block.timestamp:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg3
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg4)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
        call address(routerAddress).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(arg4), block.timestamp + 1
        if ext_call.success:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
            require return_data.size >= 32
            _2466 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
            _2498 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _2498
            require _2466 + (32 * _2498) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _2498)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2466 + 389 len ceil32(32 * _2498)]
            if _2498 < 1:
                revert with 0, 17
            if _2498 - 1 >= _2498:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * _2498 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
            return memory
              from mem[64]
               len 32
        if return_data.size <= 3:
            revert with 0, 'swapExactTokensForETH:undefined'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'swapExactTokensForETH:undefined'
        if return_data.size < 68:
            revert with 0, 'swapExactTokensForETH:undefined'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
            revert with 0, 'swapExactTokensForETH:undefined'
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] > test266151307():
            revert with 0, 'swapExactTokensForETH:undefined'
        if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 32 > return_data.size - 4:
            revert with 0, 'swapExactTokensForETH:undefined'
        if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 < 357 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358
        if not (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357:
            revert with 0, 'swapExactTokensForETH:undefined'
        _2809 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2809] = 21
        mem[_2809 + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
        _2848 = mem[64]
        mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724554480000000000000000000000
        mem[mem[64] + 53] = 0
        _3386 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357]
        mem[mem[64] + 53 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 389 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])]
        if ceil32(_3386) <= _3386:
            _3897 = mem[64]
            mem[mem[64]] = _3386 + 21
            mem[64] = _3386 + mem[64] + 53
            mem[_3386 + _2848 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3386 + _2848 + 57] = 32
            _3961 = mem[_3897]
            mem[_3386 + _2848 + 89] = mem[_3897]
            mem[_3386 + _2848 + 121 len ceil32(_3961)] = mem[_3897 + 32 len ceil32(_3961)]
            if ceil32(_3961) > _3961:
                mem[_3961 + _3386 + _2848 + 121] = 0
            revert with 0, 32, mem[_3386 + _2848 + 89 len ceil32(_3961) + 32]
        mem[_3386 + mem[64] + 53] = 0
        _3898 = mem[64]
        mem[mem[64]] = _3386 + _2848 + -mem[64] + 21
        mem[64] = _3386 + _2848 + 53
        mem[_3386 + _2848 + 53] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_3386 + _2848 + 57] = 32
        _3962 = mem[_3898]
        mem[_3386 + _2848 + 89] = mem[_3898]
        mem[_3386 + _2848 + 121 len ceil32(_3962)] = mem[_3898 + 32 len ceil32(_3962)]
        if ceil32(_3962) > _3962:
            mem[_3962 + _3386 + _2848 + 121] = 0
        revert with 0, 32, mem[_3386 + _2848 + 89 len ceil32(_3962) + 32]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            staticcall address(routerAddress).WAVAX() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 260] = 2
            mem[(2 * ceil32(return_data.size)) + 292] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[0])
            if 1 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 356] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 360] = arg2
            mem[(2 * ceil32(return_data.size)) + 392] = arg3
            mem[(2 * ceil32(return_data.size)) + 424] = 160
            mem[(2 * ceil32(return_data.size)) + 520] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 552
            t = (2 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 456] = address(arg4)
            mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp + 1
            call address(routerAddress).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 552 len 64]), address(arg4), block.timestamp + 1
            if ext_call.success:
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _2471 = mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32
                require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                _2503 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357
                mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
                require _2471 + (32 * _2503) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 388 len ceil32(32 * _2503)] = mem[(2 * ceil32(return_data.size)) + _2471 + 388 len ceil32(32 * _2503)]
                if _2503 < 1:
                    revert with 0, 17
                if _2503 - 1 >= _2503:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * _2503 - 1) + (4 * ceil32(return_data.size)) + 388]
                return memory
                  from mem[64]
                   len 32
            if return_data.size <= 3:
                revert with 0, 'swapExactTokensForAVAX:undefined'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'swapExactTokensForAVAX:undefined'
            if return_data.size < 68:
                revert with 0, 'swapExactTokensForAVAX:undefined'
            mem[(2 * ceil32(return_data.size)) + 356 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
                revert with 0, 'swapExactTokensForAVAX:undefined'
            if mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                revert with 0, 'swapExactTokensForAVAX:undefined'
            if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 32 > return_data.size - 4:
                revert with 0, 'swapExactTokensForAVAX:undefined'
            if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 < 356 or (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357
            if not (2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356:
                revert with 0, 'swapExactTokensForAVAX:undefined'
            _2819 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2819] = 22
            mem[_2819 + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
            _2863 = mem[64]
            mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
            mem[mem[64] + 54] = 0
            _3396 = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356]
            mem[mem[64] + 54 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 388 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])]
            if ceil32(_3396) <= _3396:
                _3917 = mem[64]
                mem[mem[64]] = _3396 + 22
                mem[64] = _3396 + mem[64] + 54
                mem[_3396 + _2863 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3396 + _2863 + 58] = 32
                _3981 = mem[_3917]
                mem[_3396 + _2863 + 90] = mem[_3917]
                mem[_3396 + _2863 + 122 len ceil32(_3981)] = mem[_3917 + 32 len ceil32(_3981)]
                if ceil32(_3981) > _3981:
                    mem[_3981 + _3396 + _2863 + 122] = 0
                revert with 0, 32, mem[_3396 + _2863 + 90 len ceil32(_3981) + 32]
            mem[_3396 + mem[64] + 54] = 0
            _3918 = mem[64]
            mem[mem[64]] = _3396 + _2863 + -mem[64] + 22
            mem[64] = _3396 + _2863 + 54
            mem[_3396 + _2863 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3396 + _2863 + 58] = 32
            _3982 = mem[_3918]
            mem[_3396 + _2863 + 90] = mem[_3918]
            mem[_3396 + _2863 + 122 len ceil32(_3982)] = mem[_3918 + 32 len ceil32(_3982)]
            if ceil32(_3982) > _3982:
                mem[_3982 + _3396 + _2863 + 122] = 0
            revert with 0, 32, mem[_3396 + _2863 + 90 len ceil32(_3982) + 32]
        require ext_call.return_data[0] >= 32
        require uint32(this.address), Mask(224, 0, stor6023) == bool(uint32(this.address), Mask(224, 0, stor6023))
        if not uint32(this.address), Mask(224, 0, stor6023):
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        staticcall address(routerAddress).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        mem[(2 * ceil32(return_data.size)) + 292] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[0])
        if 1 > !block.timestamp:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 356] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 360] = arg2
        mem[(2 * ceil32(return_data.size)) + 392] = arg3
        mem[(2 * ceil32(return_data.size)) + 424] = 160
        mem[(2 * ceil32(return_data.size)) + 520] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 552
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 456] = address(arg4)
        mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp + 1
        call address(routerAddress).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 552 len 64]), address(arg4), block.timestamp + 1
        if ext_call.success:
            mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 356
            require return_data.size >= 32
            _2472 = mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32
            require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
            _2504 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357
            mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]
            require _2472 + (32 * _2504) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 388 len ceil32(32 * _2504)] = mem[(2 * ceil32(return_data.size)) + _2472 + 388 len ceil32(32 * _2504)]
            if _2504 < 1:
                revert with 0, 17
            if _2504 - 1 >= _2504:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * _2504 - 1) + (4 * ceil32(return_data.size)) + 388]
            return memory
              from mem[64]
               len 32
        if return_data.size <= 3:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if return_data.size < 68:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        mem[(2 * ceil32(return_data.size)) + 356 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] > test266151307():
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 32 > return_data.size - 4:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 < 356 or (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356] + 31) + 357
        if not (2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        _2821 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2821] = 22
        mem[_2821 + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
        _2866 = mem[64]
        mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
        mem[mem[64] + 54] = 0
        _3398 = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356]
        mem[mem[64] + 54 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])] = mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 388 len ceil32(mem[(2 * ceil32(return_data.size)) + 0, Mask(224, 32, arg2) >> 32 + 356])]
        if ceil32(_3398) <= _3398:
            _3921 = mem[64]
            mem[mem[64]] = _3398 + 22
            mem[64] = _3398 + mem[64] + 54
            mem[_3398 + _2866 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3398 + _2866 + 58] = 32
            _3985 = mem[_3921]
            mem[_3398 + _2866 + 90] = mem[_3921]
            mem[_3398 + _2866 + 122 len ceil32(_3985)] = mem[_3921 + 32 len ceil32(_3985)]
            if ceil32(_3985) > _3985:
                mem[_3985 + _3398 + _2866 + 122] = 0
            revert with 0, 32, mem[_3398 + _2866 + 90 len ceil32(_3985) + 32]
        mem[_3398 + mem[64] + 54] = 0
        _3922 = mem[64]
        mem[mem[64]] = _3398 + _2866 + -mem[64] + 22
        mem[64] = _3398 + _2866 + 54
        mem[_3398 + _2866 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_3398 + _2866 + 58] = 32
        _3986 = mem[_3922]
        mem[_3398 + _2866 + 90] = mem[_3922]
        mem[_3398 + _2866 + 122 len ceil32(_3986)] = mem[_3922 + 32 len ceil32(_3986)]
        if ceil32(_3986) > _3986:
            mem[_3986 + _3398 + _2866 + 122] = 0
        revert with 0, 32, mem[_3398 + _2866 + 90 len ceil32(_3986) + 32]
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        staticcall address(routerAddress).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
        if 1 > !block.timestamp:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg3
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg4)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
        call address(routerAddress).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(arg4), block.timestamp + 1
        if ext_call.success:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
            require return_data.size >= 32
            _2473 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
            _2505 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _2505
            require _2473 + (32 * _2505) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _2505)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2473 + 389 len ceil32(32 * _2505)]
            if _2505 < 1:
                revert with 0, 17
            if _2505 - 1 >= _2505:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * _2505 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
            return memory
              from mem[64]
               len 32
        if return_data.size <= 3:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if return_data.size < 68:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] > test266151307():
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 32 > return_data.size - 4:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 < 357 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358
        if not (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357:
            revert with 0, 'swapExactTokensForAVAX:undefined'
        _2823 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2823] = 22
        mem[_2823 + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
        _2869 = mem[64]
        mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
        mem[mem[64] + 54] = 0
        _3400 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357]
        mem[mem[64] + 54 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 389 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])]
        if ceil32(_3400) <= _3400:
            _3925 = mem[64]
            mem[mem[64]] = _3400 + 22
            mem[64] = _3400 + mem[64] + 54
            mem[_3400 + _2869 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3400 + _2869 + 58] = 32
            _3989 = mem[_3925]
            mem[_3400 + _2869 + 90] = mem[_3925]
            mem[_3400 + _2869 + 122 len ceil32(_3989)] = mem[_3925 + 32 len ceil32(_3989)]
            if ceil32(_3989) > _3989:
                mem[_3989 + _3400 + _2869 + 122] = 0
            revert with 0, 32, mem[_3400 + _2869 + 90 len ceil32(_3989) + 32]
        mem[_3400 + mem[64] + 54] = 0
        _3926 = mem[64]
        mem[mem[64]] = _3400 + _2869 + -mem[64] + 22
        mem[64] = _3400 + _2869 + 54
        mem[_3400 + _2869 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_3400 + _2869 + 58] = 32
        _3990 = mem[_3926]
        mem[_3400 + _2869 + 90] = mem[_3926]
        mem[_3400 + _2869 + 122 len ceil32(_3990)] = mem[_3926 + 32 len ceil32(_3990)]
        if ceil32(_3990) > _3990:
            mem[_3990 + _3400 + _2869 + 122] = 0
        revert with 0, 32, mem[_3400 + _2869 + 90 len ceil32(_3990) + 32]
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
    if not mem[ceil32(return_data.size) + 292]:
        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    staticcall address(routerAddress).WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
    if 1 > !block.timestamp:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg3
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
    call address(routerAddress).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(arg4), block.timestamp + 1
    if ext_call.success:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
        require return_data.size >= 32
        _2474 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
        _2506 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _2506
        require _2474 + (32 * _2506) + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _2506)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2474 + 389 len ceil32(32 * _2506)]
        if _2506 < 1:
            revert with 0, 17
        if _2506 - 1 >= _2506:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * _2506 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
        return memory
          from mem[64]
           len 32
    if return_data.size <= 3:
        revert with 0, 'swapExactTokensForAVAX:undefined'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'swapExactTokensForAVAX:undefined'
    if return_data.size < 68:
        revert with 0, 'swapExactTokensForAVAX:undefined'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, Mask(224, 32, arg2) >> 32 > test266151307() or 0, Mask(224, 32, arg2) >> 32 + 36 > return_data.size:
        revert with 0, 'swapExactTokensForAVAX:undefined'
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] > test266151307():
        revert with 0, 'swapExactTokensForAVAX:undefined'
    if 0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 32 > return_data.size - 4:
        revert with 0, 'swapExactTokensForAVAX:undefined'
    if floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 < 357 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(0, Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357] + 31) + 358
    if not (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357:
        revert with 0, 'swapExactTokensForAVAX:undefined'
    _2825 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2825] = 22
    mem[_2825 + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
    _2872 = mem[64]
    mem[mem[64] + 32] = 0x737761704578616374546f6b656e73466f724156415800000000000000000000
    mem[mem[64] + 54] = 0
    _3402 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357]
    mem[mem[64] + 54 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 389 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 357])]
    if ceil32(_3402) <= _3402:
        _3929 = mem[64]
        mem[mem[64]] = _3402 + 22
        mem[64] = _3402 + mem[64] + 54
        mem[_3402 + _2872 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_3402 + _2872 + 58] = 32
        _3993 = mem[_3929]
        mem[_3402 + _2872 + 90] = mem[_3929]
        mem[_3402 + _2872 + 122 len ceil32(_3993)] = mem[_3929 + 32 len ceil32(_3993)]
        if ceil32(_3993) > _3993:
            mem[_3993 + _3402 + _2872 + 122] = 0
        revert with 0, 32, mem[_3402 + _2872 + 90 len ceil32(_3993) + 32]
    mem[_3402 + mem[64] + 54] = 0
    _3930 = mem[64]
    mem[mem[64]] = _3402 + _2872 + -mem[64] + 22
    mem[64] = _3402 + _2872 + 54
    mem[_3402 + _2872 + 54] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_3402 + _2872 + 58] = 32
    _3994 = mem[_3930]
    mem[_3402 + _2872 + 90] = mem[_3930]
    mem[_3402 + _2872 + 122 len ceil32(_3994)] = mem[_3930 + 32 len ceil32(_3994)]
    if ceil32(_3994) > _3994:
        mem[_3994 + _3402 + _2872 + 122] = 0
    revert with 0, 32, mem[_3402 + _2872 + 90 len ceil32(_3994) + 32]
}



}
