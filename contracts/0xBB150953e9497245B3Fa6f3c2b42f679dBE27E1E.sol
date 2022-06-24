contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1aeaf3f8(?)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_2ceecf5b(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function _fallback() payable {
    revert
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg3) - 1:
            revert with 'NH{q', 17
        if arg3 and 997 > -1 / arg3:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == arg2:
            if 997 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg3:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                revert with 'NH{q', 18
            return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        if 997 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
            revert with 'NH{q', 18
        return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg3) - 1:
        revert with 'NH{q', 17
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if 997 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
            revert with 'NH{q', 18
        return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
    if 997 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg3:
        revert with 'NH{q', 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
        revert with 'NH{q', 18
    return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
}

function getAmountIn(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg2:
        if Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) * arg3 and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) * arg3:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == arg2:
            if Mask(112, 0, ext_call.return_data[32]) < arg3:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) - arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[32]) - arg3:
                revert with 'NH{q', 17
            if not (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3) > -2:
                revert with 'NH{q', 17
            return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
        if Mask(112, 0, ext_call.return_data[0]) < arg3:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) - arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - arg3:
            revert with 'NH{q', 17
        if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
            revert with 'NH{q', 18
        if 1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3) > -2:
            revert with 'NH{q', 17
        return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
    if Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) * arg3 and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]) * arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if Mask(112, 0, ext_call.return_data[32]) < arg3:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) - arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[32]) - arg3:
            revert with 'NH{q', 17
        if not (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
            revert with 'NH{q', 18
        if 1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3) > -2:
            revert with 'NH{q', 17
        return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
    if Mask(112, 0, ext_call.return_data[0]) < arg3:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) - arg3 and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - arg3:
        revert with 'NH{q', 17
    if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
        revert with 'NH{q', 18
    if 1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3) > -2:
        revert with 'NH{q', 17
    return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
}

function sub_f8f5fa78(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 68)] == address(cd[((64 * idx) + cd[36] + 68)])
            require ext_code.size(address(cd[((64 * idx) + cd[36] + 68)]))
            call address(cd[((64 * idx) + cd[36] + 68)]).accrueInterest() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == mem[_48]
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidity(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[36] + 36)])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_56] == mem[_56]
            require mem[_56 + 32] == mem[_56 + 32]
            require mem[_56 + 64] == mem[_56 + 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[_56 + 64]:
                mem[(32 * idx) + 128] = 0
            else:
                if not mem[_56]:
                    mem[(32 * idx) + 128] = 1
                else:
                    mem[(32 * idx) + 128] = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = 32
        _38 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _36 + (32 * _38) + -mem[64] + 64
    mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((64 * idx) + cd[36] + 68)] == address(cd[((64 * idx) + cd[36] + 68)])
        require ext_code.size(address(cd[((64 * idx) + cd[36] + 68)]))
        call address(cd[((64 * idx) + cd[36] + 68)]).accrueInterest() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_49] == mem[_49]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAccountLiquidity(address arg1) with:
                gas gas_remaining wei
               args address(cd[((64 * idx) + cd[36] + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_57] == mem[_57]
        require mem[_57 + 32] == mem[_57 + 32]
        require mem[_57 + 64] == mem[_57 + 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[_57 + 64]:
            mem[(32 * idx) + 128] = 0
        else:
            if not mem[_57]:
                mem[(32 * idx) + 128] = 1
            else:
                mem[(32 * idx) + 128] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _37 = mem[64]
    mem[mem[64]] = 32
    _39 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _37 + (32 * _39) + -mem[64] + 64
}

function sub_694927e9(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require calldata.size - 36 >= 64
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[324] = 0, mem[324 len 28]
    mem[328] = 0
    staticcall address(arg1).mem[324 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        if ext_call.success:
            require arg2 >= 32
            require arg3 == address(arg3)
            require ext_code.size(address(arg3))
            staticcall address(arg3).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg3)
        else:
            require ext_code.size(address(arg1))
            staticcall address(arg1).getRegistry() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x4c816c7e with:
                    gas gas_remaining wei
                   args address(arg3)
    else:
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            require mem[356] == mem[368 len 20]
            require ext_code.size(mem[368 len 20])
            staticcall mem[368 len 20].getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg3)
        else:
            require ext_code.size(address(arg1))
            staticcall address(arg1).getRegistry() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x4c816c7e with:
                    gas gas_remaining wei
                   args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    staticcall address(arg3).getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(arg1))
    staticcall address(arg1).markets(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    if not ext_call.return_data[32]:
        if not ext_call.return_data[0]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[64]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return arg3 << 192, 0, ext_call.return_data[0] * ext_call.return_data[64] / 10^18, bool(ext_call.return_data[0])
    if not ext_call.return_data[96]:
        if not ext_call.return_data[0]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[64]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return arg3 << 192, 0, ext_call.return_data[0] * ext_call.return_data[64] / 10^18, bool(ext_call.return_data[0])
    if ext_call.return_data[32] and ext_call.return_data[96] > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] != ext_call.return_data[96]:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
        if not ext_call.return_data[0]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[64]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return arg3 << 192, 0, ext_call.return_data[0] * ext_call.return_data[64] / 10^18, bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[64]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return arg3 << 192, 0, ext_call.return_data[0] * ext_call.return_data[64] / 10^18, bool(ext_call.return_data[0])
    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
        revert with 'NH{q', 17
    if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
        revert with 'NH{q', 18
    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[0]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[64]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return arg3 << 192, 0, ext_call.return_data[0] * ext_call.return_data[64] / 10^18, bool(ext_call.return_data[0])
    if not ext_call.return_data[32]:
        if not ext_call.return_data[0]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[64]:
            return arg3 << 192, 0, 0, bool(ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return arg3 << 192, 0, ext_call.return_data[0] * ext_call.return_data[64] / 10^18, bool(ext_call.return_data[0])
    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 18
    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[32]:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[0]:
        return arg3 << 192, 
               ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^18,
               0,
               bool(ext_call.return_data[0])
    if not ext_call.return_data[64]:
        return arg3 << 192, 
               ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^18,
               0,
               bool(ext_call.return_data[0])
    if ext_call.return_data[0] and ext_call.return_data[64] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
        revert with 0, 'multiplication overflow', 0
    return arg3 << 192, 
           ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^18,
           ext_call.return_data[0] * ext_call.return_data[64] / 10^18,
           bool(ext_call.return_data[0])
}



}
