contract main {




// =====================  Runtime code  =====================


#
#  - sub_213cd9a2(?)
#  - sub_2ceecf5b(?)
#
mapping of uint8 stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_78482004(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor1
    stor0[address(arg1)] = 0
}

function sub_d7d8fbcb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor1
    stor0[address(arg1)] = 1
}

function balance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        if ext_call.return_data[12 len 20] == arg2:
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
        else:
            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
    else:
        if ext_call.return_data[12 len 20] == arg2:
            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1)
        else:
            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3):
                return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1)
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
    if ext_call.return_data[12 len 20] == arg2:
        if ext_call.return_data[12 len 20] == arg2:
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        ('iszero', ('add', ('mul', 1000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32))), ('mul', 997, ('param', 'arg3'))))
    else:
        if ext_call.return_data[12 len 20] == arg2:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
                return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
        ('iszero', ('add', ('mul', 1000, ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32))), ('mul', 997, ('param', 'arg3'))))
    revert
}

function sub_cca6a76f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    call address(arg3).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not ext_call.return_data[64]:
        return 0
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(address(arg3))
    staticcall address(arg3).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            return 0
        if 5 * 10^17 * ext_call.return_data[0] / 5 * 10^17 != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow', 0
        return (5 * 10^17 * ext_call.return_data[0] / 10^18 > 0)
    require ext_code.size(address(arg1))
    staticcall address(arg1).closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0)
}

function sub_fa37c3ca(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).oracle() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
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
            return 0
        if not ext_call.return_data[64]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return 0, ext_call.return_data[0] * ext_call.return_data[64]
    if not ext_call.return_data[96]:
        if not ext_call.return_data[0]:
            return 0
        if not ext_call.return_data[64]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return 0, ext_call.return_data[0] * ext_call.return_data[64]
    require ext_call.return_data[32]
    if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[32] != ext_call.return_data[96]:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
        if not ext_call.return_data[0]:
            return 0
        if not ext_call.return_data[64]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return 0, ext_call.return_data[0] * ext_call.return_data[64]
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            return 0
        if not ext_call.return_data[64]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return 0, ext_call.return_data[0] * ext_call.return_data[64]
    require ext_call.return_data[32] * ext_call.return_data[96] / 10^18
    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            return 0
        if not ext_call.return_data[64]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return 0, ext_call.return_data[0] * ext_call.return_data[64]
    if not ext_call.return_data[32]:
        if not ext_call.return_data[0]:
            return 0
        if not ext_call.return_data[64]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
            revert with 0, 'multiplication overflow', 0
        return 0, ext_call.return_data[0] * ext_call.return_data[64]
    require ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0]
    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] != ext_call.return_data[32]:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[0]:
        return ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18, 
               0
    if not ext_call.return_data[64]:
        return ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18, 
               0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] != ext_call.return_data[64]:
        revert with 0, 'multiplication overflow', 0
    return ext_call.return_data[32] * ext_call.return_data[96] / 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18, 
           ext_call.return_data[0] * ext_call.return_data[64]
}

function sub_ba94c57d(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _411 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _416 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20])
            call mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20].accrueInterest() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_424] == mem[_424]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAccountLiquidity(address arg1) with:
                    gas gas_remaining wei
                   args address(_411)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _436 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_436] == mem[_436]
            require mem[_436 + 32] == mem[_436 + 32]
            require mem[_436 + 64] == mem[_436 + 64]
            if not mem[_436 + 64]:
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
                idx = idx + 1
                continue 
            if mem[_436]:
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = address(_411)
            require ext_code.size(address(_416))
            staticcall address(_416).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(_411)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _452 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _454 = mem[_452]
            require mem[_452] == mem[_452]
            _456 = mem[64]
            mem[64] = mem[64] + 32
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).closeFactorMantissa() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _462 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_462] == mem[_462]
            if not mem[_462]:
                mem[_456] = 5 * 10^17
                _472 = mem[64]
                mem[64] = mem[64] + 32
                mem[_472] = 0
                _476 = mem[64]
                mem[64] = mem[64] + 32
                mem[_476] = 0
                _478 = mem[64]
                mem[64] = mem[64] + 32
                _482 = mem[64]
                mem[64] = mem[64] + 64
                mem[_482] = 23
                mem[_482 + 32] = 'multiplication overflow'
                if not _454:
                    mem[_478] = 0
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 10^18 > 0
                    idx = idx + 1
                    continue 
                if 5 * 10^17 * _454 / 5 * 10^17 == _454:
                    mem[_478] = 5 * 10^17 * _454
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 5 * 10^17 * _454 / 10^18 > 0
                    idx = idx + 1
                    continue 
                _484 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_484 + idx + 68] = mem[_482 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_484 + 91] = 0
                revert with memory
                  from mem[64]
                   len _484 + -mem[64] + 100
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).closeFactorMantissa() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_470] == mem[_470]
            mem[_456] = mem[_470]
            _486 = mem[64]
            mem[64] = mem[64] + 32
            mem[_486] = 0
            _494 = mem[64]
            mem[64] = mem[64] + 32
            mem[_494] = 0
            _497 = mem[64]
            mem[64] = mem[64] + 32
            _498 = mem[_456]
            _502 = mem[64]
            mem[64] = mem[64] + 64
            mem[_502] = 23
            mem[_502 + 32] = 'multiplication overflow'
            if not _498:
                mem[_497] = 0
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 10^18 > 0
                idx = idx + 1
                continue 
            if not _454:
                mem[_497] = 0
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 10^18 > 0
                idx = idx + 1
                continue 
            require _498
            if _498 * _454 / _498 == _454:
                mem[_497] = _498 * _454
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = _498 * _454 / 10^18 > 0
                idx = idx + 1
                continue 
            _512 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_512 + idx + 68] = mem[_502 + idx + 32]
                idx = idx + 32
                continue 
            mem[_512 + 91] = 0
            revert with memory
              from mem[64]
               len _512 + -mem[64] + 100
        _410 = mem[64]
        mem[mem[64]] = 32
        _422 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + 64
        while idx < _422:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _410 + (32 * _422) + -mem[64] + 64
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _414 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _417 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20])
        call mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _425 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_425] == mem[_425]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAccountLiquidity(address arg1) with:
                gas gas_remaining wei
               args address(_414)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _437 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_437] == mem[_437]
        require mem[_437 + 32] == mem[_437 + 32]
        require mem[_437 + 64] == mem[_437 + 64]
        if not mem[_437 + 64]:
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
            idx = idx + 1
            continue 
        if mem[_437]:
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = address(_414)
        require ext_code.size(address(_417))
        staticcall address(_417).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args address(_414)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _453 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _455 = mem[_453]
        require mem[_453] == mem[_453]
        _459 = mem[64]
        mem[64] = mem[64] + 32
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).closeFactorMantissa() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _463 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_463] == mem[_463]
        if not mem[_463]:
            mem[_459] = 5 * 10^17
            _473 = mem[64]
            mem[64] = mem[64] + 32
            mem[_473] = 0
            _477 = mem[64]
            mem[64] = mem[64] + 32
            mem[_477] = 0
            _480 = mem[64]
            mem[64] = mem[64] + 32
            _483 = mem[64]
            mem[64] = mem[64] + 64
            mem[_483] = 23
            mem[_483 + 32] = 'multiplication overflow'
            if not _455:
                mem[_480] = 0
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 10^18 > 0
                idx = idx + 1
                continue 
            if 5 * 10^17 * _455 / 5 * 10^17 == _455:
                mem[_480] = 5 * 10^17 * _455
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 5 * 10^17 * _455 / 10^18 > 0
                idx = idx + 1
                continue 
            _485 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_485 + idx + 68] = mem[_483 + idx + 32]
                idx = idx + 32
                continue 
            mem[_485 + 91] = 0
            revert with memory
              from mem[64]
               len _485 + -mem[64] + 100
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).closeFactorMantissa() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _471 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_471] == mem[_471]
        mem[_459] = mem[_471]
        _487 = mem[64]
        mem[64] = mem[64] + 32
        mem[_487] = 0
        _495 = mem[64]
        mem[64] = mem[64] + 32
        mem[_495] = 0
        _500 = mem[64]
        mem[64] = mem[64] + 32
        _501 = mem[_459]
        _503 = mem[64]
        mem[64] = mem[64] + 64
        mem[_503] = 23
        mem[_503 + 32] = 'multiplication overflow'
        if not _501:
            mem[_500] = 0
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 10^18 > 0
            idx = idx + 1
            continue 
        if not _455:
            mem[_500] = 0
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 10^18 > 0
            idx = idx + 1
            continue 
        require _501
        if _501 * _455 / _501 == _455:
            mem[_500] = _501 * _455
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = _501 * _455 / 10^18 > 0
            idx = idx + 1
            continue 
        _513 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 23
        idx = 0
        while idx < 23:
            mem[_513 + idx + 68] = mem[_503 + idx + 32]
            idx = idx + 32
            continue 
        mem[_513 + 91] = 0
        revert with memory
          from mem[64]
           len _513 + -mem[64] + 100
    _413 = mem[64]
    mem[mem[64]] = 32
    _423 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    idx = 0
    s = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    t = mem[64] + 64
    while idx < _423:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _413 + (32 * _423) + -mem[64] + 64
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    if not arg2:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg3
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _853 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _877 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _877
                        require _853 + (32 * _877) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _853 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _877:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _877
                        _1391 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1391
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1391
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1453] == bool(mem[_1453])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _854 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _878 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _878
                        require _854 + (32 * _878) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _854 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _878:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _878
                        _1393 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1454] == bool(mem[_1454])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1532 = mem[_1520]
                        require mem[_1520] == mem[_1520]
                        _1544 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1544]
                        mem[_1544 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1544]
                        mem[_1544 + 64] = address(cd[(arg4 + 164)])
                        mem[_1544 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1544 + 100] = _1532
                        mem[_1544 + 132] = 0
                        mem[_1544 + 164] = 160
                        mem[_1544 + 260] = mem[_1544]
                        idx = 0
                        s = _1544 + 32
                        t = _1544 + 292
                        while idx < mem[_1544]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1544 + 196] = this.address
                        mem[_1544 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1544 + (32 * mem[_1544]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1760 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1772 = mem[_1760]
                        require mem[_1760] <= test266151307()
                        require _1760 + mem[_1760] + 31 < _1760 + return_data.size
                        _1784 = mem[_1760 + mem[_1760]]
                        require mem[_1760 + mem[_1760]] <= test266151307()
                        require _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32 <= test266151307() and (32 * mem[_1760 + mem[_1760]]) + 32 >= 0
                        mem[64] = _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32
                        mem[_1760 + ceil32(return_data.size)] = _1784
                        require _1772 + (32 * _1784) + 32 <= return_data.size
                        idx = 0
                        s = _1760 + _1772 + 32
                        t = _1760 + ceil32(return_data.size) + 32
                        while idx < _1784:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1393
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1393
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1904] == bool(mem[_1904])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _849 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _873 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _849 + (32 * _873) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _849 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _873:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _873
                            _1383 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1383
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1383
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1449] == bool(mem[_1449])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _850 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _874 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _850 + (32 * _874) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _850 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _874:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _874
                            _1385 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1450] == bool(mem[_1450])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1530 = mem[_1518]
                            require mem[_1518] == mem[_1518]
                            _1542 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1542]
                            mem[_1542 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1542]
                            mem[_1542 + 64] = address(cd[(arg4 + 164)])
                            mem[_1542 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1542 + 100] = _1530
                            mem[_1542 + 132] = 0
                            mem[_1542 + 164] = 160
                            mem[_1542 + 260] = mem[_1542]
                            idx = 0
                            s = _1542 + 32
                            t = _1542 + 292
                            while idx < mem[_1542]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1542 + 196] = this.address
                            mem[_1542 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1542 + (32 * mem[_1542]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1758 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1770 = mem[_1758]
                            require mem[_1758] <= test266151307()
                            require _1758 + mem[_1758] + 31 < _1758 + return_data.size
                            _1782 = mem[_1758 + mem[_1758]]
                            require mem[_1758 + mem[_1758]] <= test266151307()
                            require _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32 <= test266151307() and (32 * mem[_1758 + mem[_1758]]) + 32 >= 0
                            mem[64] = _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32
                            mem[_1758 + ceil32(return_data.size)] = _1782
                            require _1770 + (32 * _1782) + 32 <= return_data.size
                            idx = 0
                            s = _1758 + _1770 + 32
                            t = _1758 + ceil32(return_data.size) + 32
                            while idx < _1782:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1385
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1385
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1902 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1902] == bool(mem[_1902])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _851 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _875 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _851 + (32 * _875) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _851 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _875:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _875
                            _1387 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1387
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1387
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1451] == bool(mem[_1451])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _852 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _876 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _852 + (32 * _876) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _852 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _876:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _876
                            _1389 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1452] == bool(mem[_1452])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1531 = mem[_1519]
                            require mem[_1519] == mem[_1519]
                            _1543 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1543]
                            mem[_1543 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1543]
                            mem[_1543 + 64] = address(cd[(arg4 + 164)])
                            mem[_1543 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1543 + 100] = _1531
                            mem[_1543 + 132] = 0
                            mem[_1543 + 164] = 160
                            mem[_1543 + 260] = mem[_1543]
                            idx = 0
                            s = _1543 + 32
                            t = _1543 + 292
                            while idx < mem[_1543]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1543 + 196] = this.address
                            mem[_1543 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1543 + (32 * mem[_1543]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1759 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1771 = mem[_1759]
                            require mem[_1759] <= test266151307()
                            require _1759 + mem[_1759] + 31 < _1759 + return_data.size
                            _1783 = mem[_1759 + mem[_1759]]
                            require mem[_1759 + mem[_1759]] <= test266151307()
                            require _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32 <= test266151307() and (32 * mem[_1759 + mem[_1759]]) + 32 >= 0
                            mem[64] = _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32
                            mem[_1759 + ceil32(return_data.size)] = _1783
                            require _1771 + (32 * _1783) + 32 <= return_data.size
                            idx = 0
                            s = _1759 + _1771 + 32
                            t = _1759 + ceil32(return_data.size) + 32
                            while idx < _1783:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1389
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1389
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1903] == bool(mem[_1903])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg3
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg3, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg3
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _847 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _871 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _847 + (32 * _871) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _847 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _871:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _871
                        _1379 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1379
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1379
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1447] == bool(mem[_1447])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _848 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _872 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _848 + (32 * _872) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _848 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _872:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _872
                        _1381 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1448] == bool(mem[_1448])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1529 = mem[_1517]
                        require mem[_1517] == mem[_1517]
                        _1541 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1541]
                        mem[_1541 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1541]
                        mem[_1541 + 64] = address(cd[(arg4 + 164)])
                        mem[_1541 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1541 + 100] = _1529
                        mem[_1541 + 132] = 0
                        mem[_1541 + 164] = 160
                        mem[_1541 + 260] = mem[_1541]
                        idx = 0
                        s = _1541 + 32
                        t = _1541 + 292
                        while idx < mem[_1541]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1541 + 196] = this.address
                        mem[_1541 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1541 + (32 * mem[_1541]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1757 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1769 = mem[_1757]
                        require mem[_1757] <= test266151307()
                        require _1757 + mem[_1757] + 31 < _1757 + return_data.size
                        _1781 = mem[_1757 + mem[_1757]]
                        require mem[_1757 + mem[_1757]] <= test266151307()
                        require _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32 <= test266151307() and (32 * mem[_1757 + mem[_1757]]) + 32 >= 0
                        mem[64] = _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32
                        mem[_1757 + ceil32(return_data.size)] = _1781
                        require _1769 + (32 * _1781) + 32 <= return_data.size
                        idx = 0
                        s = _1757 + _1769 + 32
                        t = _1757 + ceil32(return_data.size) + 32
                        while idx < _1781:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1381
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1381
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1901] == bool(mem[_1901])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _843 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _867 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _867
                            require _843 + (32 * _867) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _843 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _867:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _867
                            _1371 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1371
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1371
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1443] == bool(mem[_1443])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _844 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _868 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _868
                            require _844 + (32 * _868) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _844 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _868:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _868
                            _1373 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1444] == bool(mem[_1444])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1515 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1527 = mem[_1515]
                            require mem[_1515] == mem[_1515]
                            _1539 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1539]
                            mem[_1539 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1539]
                            mem[_1539 + 64] = address(cd[(arg4 + 164)])
                            mem[_1539 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1539 + 100] = _1527
                            mem[_1539 + 132] = 0
                            mem[_1539 + 164] = 160
                            mem[_1539 + 260] = mem[_1539]
                            idx = 0
                            s = _1539 + 32
                            t = _1539 + 292
                            while idx < mem[_1539]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1539 + 196] = this.address
                            mem[_1539 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1539 + (32 * mem[_1539]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1755 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1767 = mem[_1755]
                            require mem[_1755] <= test266151307()
                            require _1755 + mem[_1755] + 31 < _1755 + return_data.size
                            _1779 = mem[_1755 + mem[_1755]]
                            require mem[_1755 + mem[_1755]] <= test266151307()
                            require _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32 <= test266151307() and (32 * mem[_1755 + mem[_1755]]) + 32 >= 0
                            mem[64] = _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32
                            mem[_1755 + ceil32(return_data.size)] = _1779
                            require _1767 + (32 * _1779) + 32 <= return_data.size
                            idx = 0
                            s = _1755 + _1767 + 32
                            t = _1755 + ceil32(return_data.size) + 32
                            while idx < _1779:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1373
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1373
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1899] == bool(mem[_1899])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _845 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _869 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _869
                            require _845 + (32 * _869) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _845 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _869:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _869
                            _1375 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1375
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1375
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1445] == bool(mem[_1445])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _846 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _870 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _870
                            require _846 + (32 * _870) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _846 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _870:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _870
                            _1377 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1446 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1446] == bool(mem[_1446])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1516 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1528 = mem[_1516]
                            require mem[_1516] == mem[_1516]
                            _1540 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1540]
                            mem[_1540 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1540]
                            mem[_1540 + 64] = address(cd[(arg4 + 164)])
                            mem[_1540 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1540 + 100] = _1528
                            mem[_1540 + 132] = 0
                            mem[_1540 + 164] = 160
                            mem[_1540 + 260] = mem[_1540]
                            idx = 0
                            s = _1540 + 32
                            t = _1540 + 292
                            while idx < mem[_1540]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1540 + 196] = this.address
                            mem[_1540 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1540 + (32 * mem[_1540]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1756 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1768 = mem[_1756]
                            require mem[_1756] <= test266151307()
                            require _1756 + mem[_1756] + 31 < _1756 + return_data.size
                            _1780 = mem[_1756 + mem[_1756]]
                            require mem[_1756 + mem[_1756]] <= test266151307()
                            require _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32 <= test266151307() and (32 * mem[_1756 + mem[_1756]]) + 32 >= 0
                            mem[64] = _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32
                            mem[_1756 + ceil32(return_data.size)] = _1780
                            require _1768 + (32 * _1780) + 32 <= return_data.size
                            idx = 0
                            s = _1756 + _1768 + 32
                            t = _1756 + ceil32(return_data.size) + 32
                            while idx < _1780:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1377
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1377
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1900] == bool(mem[_1900])
    else:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg2
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _865 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _889 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _889
                        require _865 + (32 * _889) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _865 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _889:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _889
                        _1415 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1415
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1415
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1465] == bool(mem[_1465])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _866 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _890 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _890
                        require _866 + (32 * _890) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _866 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _890:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _890
                        _1417 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1466] == bool(mem[_1466])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1538 = mem[_1526]
                        require mem[_1526] == mem[_1526]
                        _1550 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1550]
                        mem[_1550 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1550]
                        mem[_1550 + 64] = address(cd[(arg4 + 164)])
                        mem[_1550 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1550 + 100] = _1538
                        mem[_1550 + 132] = 0
                        mem[_1550 + 164] = 160
                        mem[_1550 + 260] = mem[_1550]
                        idx = 0
                        s = _1550 + 32
                        t = _1550 + 292
                        while idx < mem[_1550]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1550 + 196] = this.address
                        mem[_1550 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1550 + (32 * mem[_1550]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1778 = mem[_1766]
                        require mem[_1766] <= test266151307()
                        require _1766 + mem[_1766] + 31 < _1766 + return_data.size
                        _1790 = mem[_1766 + mem[_1766]]
                        require mem[_1766 + mem[_1766]] <= test266151307()
                        require _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32 <= test266151307() and (32 * mem[_1766 + mem[_1766]]) + 32 >= 0
                        mem[64] = _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32
                        mem[_1766 + ceil32(return_data.size)] = _1790
                        require _1778 + (32 * _1790) + 32 <= return_data.size
                        idx = 0
                        s = _1766 + _1778 + 32
                        t = _1766 + ceil32(return_data.size) + 32
                        while idx < _1790:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1417
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1417
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1910] == bool(mem[_1910])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _861 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _885 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _861 + (32 * _885) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _861 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _885:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _885
                            _1407 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1407
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1407
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1461] == bool(mem[_1461])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _862 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _886 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _862 + (32 * _886) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _862 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _886:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _886
                            _1409 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1462 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1462] == bool(mem[_1462])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1536 = mem[_1524]
                            require mem[_1524] == mem[_1524]
                            _1548 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1548]
                            mem[_1548 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1548]
                            mem[_1548 + 64] = address(cd[(arg4 + 164)])
                            mem[_1548 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1548 + 100] = _1536
                            mem[_1548 + 132] = 0
                            mem[_1548 + 164] = 160
                            mem[_1548 + 260] = mem[_1548]
                            idx = 0
                            s = _1548 + 32
                            t = _1548 + 292
                            while idx < mem[_1548]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1548 + 196] = this.address
                            mem[_1548 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1548 + (32 * mem[_1548]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1764 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1776 = mem[_1764]
                            require mem[_1764] <= test266151307()
                            require _1764 + mem[_1764] + 31 < _1764 + return_data.size
                            _1788 = mem[_1764 + mem[_1764]]
                            require mem[_1764 + mem[_1764]] <= test266151307()
                            require _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32 <= test266151307() and (32 * mem[_1764 + mem[_1764]]) + 32 >= 0
                            mem[64] = _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32
                            mem[_1764 + ceil32(return_data.size)] = _1788
                            require _1776 + (32 * _1788) + 32 <= return_data.size
                            idx = 0
                            s = _1764 + _1776 + 32
                            t = _1764 + ceil32(return_data.size) + 32
                            while idx < _1788:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1409
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1409
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1908] == bool(mem[_1908])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _863 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _887 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _863 + (32 * _887) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _863 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _887:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _887
                            _1411 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1411
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1411
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1463 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1463] == bool(mem[_1463])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _864 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _888 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _864 + (32 * _888) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _864 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _888:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _888
                            _1413 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1464 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1464] == bool(mem[_1464])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1537 = mem[_1525]
                            require mem[_1525] == mem[_1525]
                            _1549 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1549]
                            mem[_1549 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1549]
                            mem[_1549 + 64] = address(cd[(arg4 + 164)])
                            mem[_1549 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1549 + 100] = _1537
                            mem[_1549 + 132] = 0
                            mem[_1549 + 164] = 160
                            mem[_1549 + 260] = mem[_1549]
                            idx = 0
                            s = _1549 + 32
                            t = _1549 + 292
                            while idx < mem[_1549]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1549 + 196] = this.address
                            mem[_1549 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1549 + (32 * mem[_1549]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1765 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1777 = mem[_1765]
                            require mem[_1765] <= test266151307()
                            require _1765 + mem[_1765] + 31 < _1765 + return_data.size
                            _1789 = mem[_1765 + mem[_1765]]
                            require mem[_1765 + mem[_1765]] <= test266151307()
                            require _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32 <= test266151307() and (32 * mem[_1765 + mem[_1765]]) + 32 >= 0
                            mem[64] = _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32
                            mem[_1765 + ceil32(return_data.size)] = _1789
                            require _1777 + (32 * _1789) + 32 <= return_data.size
                            idx = 0
                            s = _1765 + _1777 + 32
                            t = _1765 + ceil32(return_data.size) + 32
                            while idx < _1789:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1413
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1413
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1909] == bool(mem[_1909])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg2
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg2, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg2
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _859 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _883 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _859 + (32 * _883) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _859 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _883:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _883
                        _1403 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1403
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1403
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1459] == bool(mem[_1459])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _860 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _884 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _860 + (32 * _884) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _860 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _884:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _884
                        _1405 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1460] == bool(mem[_1460])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1535 = mem[_1523]
                        require mem[_1523] == mem[_1523]
                        _1547 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1547]
                        mem[_1547 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1547]
                        mem[_1547 + 64] = address(cd[(arg4 + 164)])
                        mem[_1547 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1547 + 100] = _1535
                        mem[_1547 + 132] = 0
                        mem[_1547 + 164] = 160
                        mem[_1547 + 260] = mem[_1547]
                        idx = 0
                        s = _1547 + 32
                        t = _1547 + 292
                        while idx < mem[_1547]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1547 + 196] = this.address
                        mem[_1547 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1547 + (32 * mem[_1547]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1763 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1775 = mem[_1763]
                        require mem[_1763] <= test266151307()
                        require _1763 + mem[_1763] + 31 < _1763 + return_data.size
                        _1787 = mem[_1763 + mem[_1763]]
                        require mem[_1763 + mem[_1763]] <= test266151307()
                        require _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32 <= test266151307() and (32 * mem[_1763 + mem[_1763]]) + 32 >= 0
                        mem[64] = _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32
                        mem[_1763 + ceil32(return_data.size)] = _1787
                        require _1775 + (32 * _1787) + 32 <= return_data.size
                        idx = 0
                        s = _1763 + _1775 + 32
                        t = _1763 + ceil32(return_data.size) + 32
                        while idx < _1787:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1405
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1405
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1907] == bool(mem[_1907])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _855 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _879 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _879
                            require _855 + (32 * _879) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _855 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _879:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _879
                            _1395 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1395
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1395
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1455] == bool(mem[_1455])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _856 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _880 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _880
                            require _856 + (32 * _880) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _856 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _880:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _880
                            _1397 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1456] == bool(mem[_1456])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1533 = mem[_1521]
                            require mem[_1521] == mem[_1521]
                            _1545 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1545]
                            mem[_1545 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1545]
                            mem[_1545 + 64] = address(cd[(arg4 + 164)])
                            mem[_1545 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1545 + 100] = _1533
                            mem[_1545 + 132] = 0
                            mem[_1545 + 164] = 160
                            mem[_1545 + 260] = mem[_1545]
                            idx = 0
                            s = _1545 + 32
                            t = _1545 + 292
                            while idx < mem[_1545]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1545 + 196] = this.address
                            mem[_1545 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1545 + (32 * mem[_1545]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1761 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1773 = mem[_1761]
                            require mem[_1761] <= test266151307()
                            require _1761 + mem[_1761] + 31 < _1761 + return_data.size
                            _1785 = mem[_1761 + mem[_1761]]
                            require mem[_1761 + mem[_1761]] <= test266151307()
                            require _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32 <= test266151307() and (32 * mem[_1761 + mem[_1761]]) + 32 >= 0
                            mem[64] = _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32
                            mem[_1761 + ceil32(return_data.size)] = _1785
                            require _1773 + (32 * _1785) + 32 <= return_data.size
                            idx = 0
                            s = _1761 + _1773 + 32
                            t = _1761 + ceil32(return_data.size) + 32
                            while idx < _1785:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1397
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1397
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1905] == bool(mem[_1905])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _857 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _881 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _881
                            require _857 + (32 * _881) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _857 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _881:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _881
                            _1399 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1399
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1457] == bool(mem[_1457])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _858 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _882 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _882
                            require _858 + (32 * _882) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _858 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _882:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _882
                            _1401 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1458] == bool(mem[_1458])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1534 = mem[_1522]
                            require mem[_1522] == mem[_1522]
                            _1546 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1546]
                            mem[_1546 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1546]
                            mem[_1546 + 64] = address(cd[(arg4 + 164)])
                            mem[_1546 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1546 + 100] = _1534
                            mem[_1546 + 132] = 0
                            mem[_1546 + 164] = 160
                            mem[_1546 + 260] = mem[_1546]
                            idx = 0
                            s = _1546 + 32
                            t = _1546 + 292
                            while idx < mem[_1546]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1546 + 196] = this.address
                            mem[_1546 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1546 + (32 * mem[_1546]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1774 = mem[_1762]
                            require mem[_1762] <= test266151307()
                            require _1762 + mem[_1762] + 31 < _1762 + return_data.size
                            _1786 = mem[_1762 + mem[_1762]]
                            require mem[_1762 + mem[_1762]] <= test266151307()
                            require _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32 <= test266151307() and (32 * mem[_1762 + mem[_1762]]) + 32 >= 0
                            mem[64] = _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32
                            mem[_1762 + ceil32(return_data.size)] = _1786
                            require _1774 + (32 * _1786) + 32 <= return_data.size
                            idx = 0
                            s = _1762 + _1774 + 32
                            t = _1762 + ceil32(return_data.size) + 32
                            while idx < _1786:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1401
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1401
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1906] == bool(mem[_1906])
}

function hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    if not arg2:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg3
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _853 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _877 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _877
                        require _853 + (32 * _877) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _853 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _877:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _877
                        _1391 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1391
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1391
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1453] == bool(mem[_1453])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _854 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _878 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _878
                        require _854 + (32 * _878) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _854 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _878:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _878
                        _1393 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1454] == bool(mem[_1454])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1532 = mem[_1520]
                        require mem[_1520] == mem[_1520]
                        _1544 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1544]
                        mem[_1544 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1544]
                        mem[_1544 + 64] = address(cd[(arg4 + 164)])
                        mem[_1544 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1544 + 100] = _1532
                        mem[_1544 + 132] = 0
                        mem[_1544 + 164] = 160
                        mem[_1544 + 260] = mem[_1544]
                        idx = 0
                        s = _1544 + 32
                        t = _1544 + 292
                        while idx < mem[_1544]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1544 + 196] = this.address
                        mem[_1544 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1544 + (32 * mem[_1544]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1760 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1772 = mem[_1760]
                        require mem[_1760] <= test266151307()
                        require _1760 + mem[_1760] + 31 < _1760 + return_data.size
                        _1784 = mem[_1760 + mem[_1760]]
                        require mem[_1760 + mem[_1760]] <= test266151307()
                        require _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32 <= test266151307() and (32 * mem[_1760 + mem[_1760]]) + 32 >= 0
                        mem[64] = _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32
                        mem[_1760 + ceil32(return_data.size)] = _1784
                        require _1772 + (32 * _1784) + 32 <= return_data.size
                        idx = 0
                        s = _1760 + _1772 + 32
                        t = _1760 + ceil32(return_data.size) + 32
                        while idx < _1784:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1393
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1393
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1904] == bool(mem[_1904])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _849 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _873 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _849 + (32 * _873) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _849 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _873:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _873
                            _1383 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1383
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1383
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1449] == bool(mem[_1449])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _850 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _874 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _850 + (32 * _874) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _850 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _874:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _874
                            _1385 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1450] == bool(mem[_1450])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1530 = mem[_1518]
                            require mem[_1518] == mem[_1518]
                            _1542 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1542]
                            mem[_1542 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1542]
                            mem[_1542 + 64] = address(cd[(arg4 + 164)])
                            mem[_1542 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1542 + 100] = _1530
                            mem[_1542 + 132] = 0
                            mem[_1542 + 164] = 160
                            mem[_1542 + 260] = mem[_1542]
                            idx = 0
                            s = _1542 + 32
                            t = _1542 + 292
                            while idx < mem[_1542]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1542 + 196] = this.address
                            mem[_1542 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1542 + (32 * mem[_1542]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1758 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1770 = mem[_1758]
                            require mem[_1758] <= test266151307()
                            require _1758 + mem[_1758] + 31 < _1758 + return_data.size
                            _1782 = mem[_1758 + mem[_1758]]
                            require mem[_1758 + mem[_1758]] <= test266151307()
                            require _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32 <= test266151307() and (32 * mem[_1758 + mem[_1758]]) + 32 >= 0
                            mem[64] = _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32
                            mem[_1758 + ceil32(return_data.size)] = _1782
                            require _1770 + (32 * _1782) + 32 <= return_data.size
                            idx = 0
                            s = _1758 + _1770 + 32
                            t = _1758 + ceil32(return_data.size) + 32
                            while idx < _1782:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1385
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1385
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1902 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1902] == bool(mem[_1902])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _851 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _875 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _851 + (32 * _875) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _851 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _875:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _875
                            _1387 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1387
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1387
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1451] == bool(mem[_1451])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _852 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _876 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _852 + (32 * _876) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _852 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _876:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _876
                            _1389 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1452] == bool(mem[_1452])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1531 = mem[_1519]
                            require mem[_1519] == mem[_1519]
                            _1543 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1543]
                            mem[_1543 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1543]
                            mem[_1543 + 64] = address(cd[(arg4 + 164)])
                            mem[_1543 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1543 + 100] = _1531
                            mem[_1543 + 132] = 0
                            mem[_1543 + 164] = 160
                            mem[_1543 + 260] = mem[_1543]
                            idx = 0
                            s = _1543 + 32
                            t = _1543 + 292
                            while idx < mem[_1543]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1543 + 196] = this.address
                            mem[_1543 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1543 + (32 * mem[_1543]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1759 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1771 = mem[_1759]
                            require mem[_1759] <= test266151307()
                            require _1759 + mem[_1759] + 31 < _1759 + return_data.size
                            _1783 = mem[_1759 + mem[_1759]]
                            require mem[_1759 + mem[_1759]] <= test266151307()
                            require _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32 <= test266151307() and (32 * mem[_1759 + mem[_1759]]) + 32 >= 0
                            mem[64] = _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32
                            mem[_1759 + ceil32(return_data.size)] = _1783
                            require _1771 + (32 * _1783) + 32 <= return_data.size
                            idx = 0
                            s = _1759 + _1771 + 32
                            t = _1759 + ceil32(return_data.size) + 32
                            while idx < _1783:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1389
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1389
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1903] == bool(mem[_1903])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg3
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg3, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg3
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _847 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _871 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _847 + (32 * _871) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _847 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _871:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _871
                        _1379 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1379
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1379
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1447] == bool(mem[_1447])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _848 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _872 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _848 + (32 * _872) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _848 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _872:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _872
                        _1381 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1448] == bool(mem[_1448])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1529 = mem[_1517]
                        require mem[_1517] == mem[_1517]
                        _1541 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1541]
                        mem[_1541 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1541]
                        mem[_1541 + 64] = address(cd[(arg4 + 164)])
                        mem[_1541 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1541 + 100] = _1529
                        mem[_1541 + 132] = 0
                        mem[_1541 + 164] = 160
                        mem[_1541 + 260] = mem[_1541]
                        idx = 0
                        s = _1541 + 32
                        t = _1541 + 292
                        while idx < mem[_1541]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1541 + 196] = this.address
                        mem[_1541 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1541 + (32 * mem[_1541]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1757 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1769 = mem[_1757]
                        require mem[_1757] <= test266151307()
                        require _1757 + mem[_1757] + 31 < _1757 + return_data.size
                        _1781 = mem[_1757 + mem[_1757]]
                        require mem[_1757 + mem[_1757]] <= test266151307()
                        require _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32 <= test266151307() and (32 * mem[_1757 + mem[_1757]]) + 32 >= 0
                        mem[64] = _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32
                        mem[_1757 + ceil32(return_data.size)] = _1781
                        require _1769 + (32 * _1781) + 32 <= return_data.size
                        idx = 0
                        s = _1757 + _1769 + 32
                        t = _1757 + ceil32(return_data.size) + 32
                        while idx < _1781:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1381
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1381
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1901] == bool(mem[_1901])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _843 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _867 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _867
                            require _843 + (32 * _867) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _843 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _867:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _867
                            _1371 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1371
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1371
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1443] == bool(mem[_1443])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _844 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _868 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _868
                            require _844 + (32 * _868) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _844 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _868:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _868
                            _1373 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1444] == bool(mem[_1444])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1515 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1527 = mem[_1515]
                            require mem[_1515] == mem[_1515]
                            _1539 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1539]
                            mem[_1539 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1539]
                            mem[_1539 + 64] = address(cd[(arg4 + 164)])
                            mem[_1539 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1539 + 100] = _1527
                            mem[_1539 + 132] = 0
                            mem[_1539 + 164] = 160
                            mem[_1539 + 260] = mem[_1539]
                            idx = 0
                            s = _1539 + 32
                            t = _1539 + 292
                            while idx < mem[_1539]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1539 + 196] = this.address
                            mem[_1539 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1539 + (32 * mem[_1539]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1755 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1767 = mem[_1755]
                            require mem[_1755] <= test266151307()
                            require _1755 + mem[_1755] + 31 < _1755 + return_data.size
                            _1779 = mem[_1755 + mem[_1755]]
                            require mem[_1755 + mem[_1755]] <= test266151307()
                            require _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32 <= test266151307() and (32 * mem[_1755 + mem[_1755]]) + 32 >= 0
                            mem[64] = _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32
                            mem[_1755 + ceil32(return_data.size)] = _1779
                            require _1767 + (32 * _1779) + 32 <= return_data.size
                            idx = 0
                            s = _1755 + _1767 + 32
                            t = _1755 + ceil32(return_data.size) + 32
                            while idx < _1779:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1373
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1373
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1899] == bool(mem[_1899])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _845 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _869 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _869
                            require _845 + (32 * _869) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _845 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _869:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _869
                            _1375 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1375
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1375
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1445] == bool(mem[_1445])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _846 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _870 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _870
                            require _846 + (32 * _870) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _846 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _870:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _870
                            _1377 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1446 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1446] == bool(mem[_1446])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1516 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1528 = mem[_1516]
                            require mem[_1516] == mem[_1516]
                            _1540 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1540]
                            mem[_1540 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1540]
                            mem[_1540 + 64] = address(cd[(arg4 + 164)])
                            mem[_1540 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1540 + 100] = _1528
                            mem[_1540 + 132] = 0
                            mem[_1540 + 164] = 160
                            mem[_1540 + 260] = mem[_1540]
                            idx = 0
                            s = _1540 + 32
                            t = _1540 + 292
                            while idx < mem[_1540]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1540 + 196] = this.address
                            mem[_1540 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1540 + (32 * mem[_1540]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1756 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1768 = mem[_1756]
                            require mem[_1756] <= test266151307()
                            require _1756 + mem[_1756] + 31 < _1756 + return_data.size
                            _1780 = mem[_1756 + mem[_1756]]
                            require mem[_1756 + mem[_1756]] <= test266151307()
                            require _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32 <= test266151307() and (32 * mem[_1756 + mem[_1756]]) + 32 >= 0
                            mem[64] = _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32
                            mem[_1756 + ceil32(return_data.size)] = _1780
                            require _1768 + (32 * _1780) + 32 <= return_data.size
                            idx = 0
                            s = _1756 + _1768 + 32
                            t = _1756 + ceil32(return_data.size) + 32
                            while idx < _1780:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1377
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1377
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1900] == bool(mem[_1900])
    else:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg2
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _865 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _889 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _889
                        require _865 + (32 * _889) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _865 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _889:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _889
                        _1415 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1415
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1415
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1465] == bool(mem[_1465])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _866 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _890 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _890
                        require _866 + (32 * _890) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _866 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _890:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _890
                        _1417 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1466] == bool(mem[_1466])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1538 = mem[_1526]
                        require mem[_1526] == mem[_1526]
                        _1550 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1550]
                        mem[_1550 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1550]
                        mem[_1550 + 64] = address(cd[(arg4 + 164)])
                        mem[_1550 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1550 + 100] = _1538
                        mem[_1550 + 132] = 0
                        mem[_1550 + 164] = 160
                        mem[_1550 + 260] = mem[_1550]
                        idx = 0
                        s = _1550 + 32
                        t = _1550 + 292
                        while idx < mem[_1550]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1550 + 196] = this.address
                        mem[_1550 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1550 + (32 * mem[_1550]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1778 = mem[_1766]
                        require mem[_1766] <= test266151307()
                        require _1766 + mem[_1766] + 31 < _1766 + return_data.size
                        _1790 = mem[_1766 + mem[_1766]]
                        require mem[_1766 + mem[_1766]] <= test266151307()
                        require _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32 <= test266151307() and (32 * mem[_1766 + mem[_1766]]) + 32 >= 0
                        mem[64] = _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32
                        mem[_1766 + ceil32(return_data.size)] = _1790
                        require _1778 + (32 * _1790) + 32 <= return_data.size
                        idx = 0
                        s = _1766 + _1778 + 32
                        t = _1766 + ceil32(return_data.size) + 32
                        while idx < _1790:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1417
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1417
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1910] == bool(mem[_1910])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _861 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _885 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _861 + (32 * _885) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _861 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _885:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _885
                            _1407 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1407
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1407
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1461] == bool(mem[_1461])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _862 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _886 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _862 + (32 * _886) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _862 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _886:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _886
                            _1409 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1462 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1462] == bool(mem[_1462])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1536 = mem[_1524]
                            require mem[_1524] == mem[_1524]
                            _1548 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1548]
                            mem[_1548 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1548]
                            mem[_1548 + 64] = address(cd[(arg4 + 164)])
                            mem[_1548 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1548 + 100] = _1536
                            mem[_1548 + 132] = 0
                            mem[_1548 + 164] = 160
                            mem[_1548 + 260] = mem[_1548]
                            idx = 0
                            s = _1548 + 32
                            t = _1548 + 292
                            while idx < mem[_1548]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1548 + 196] = this.address
                            mem[_1548 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1548 + (32 * mem[_1548]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1764 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1776 = mem[_1764]
                            require mem[_1764] <= test266151307()
                            require _1764 + mem[_1764] + 31 < _1764 + return_data.size
                            _1788 = mem[_1764 + mem[_1764]]
                            require mem[_1764 + mem[_1764]] <= test266151307()
                            require _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32 <= test266151307() and (32 * mem[_1764 + mem[_1764]]) + 32 >= 0
                            mem[64] = _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32
                            mem[_1764 + ceil32(return_data.size)] = _1788
                            require _1776 + (32 * _1788) + 32 <= return_data.size
                            idx = 0
                            s = _1764 + _1776 + 32
                            t = _1764 + ceil32(return_data.size) + 32
                            while idx < _1788:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1409
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1409
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1908] == bool(mem[_1908])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _863 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _887 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _863 + (32 * _887) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _863 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _887:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _887
                            _1411 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1411
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1411
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1463 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1463] == bool(mem[_1463])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _864 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _888 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _864 + (32 * _888) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _864 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _888:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _888
                            _1413 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1464 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1464] == bool(mem[_1464])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1537 = mem[_1525]
                            require mem[_1525] == mem[_1525]
                            _1549 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1549]
                            mem[_1549 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1549]
                            mem[_1549 + 64] = address(cd[(arg4 + 164)])
                            mem[_1549 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1549 + 100] = _1537
                            mem[_1549 + 132] = 0
                            mem[_1549 + 164] = 160
                            mem[_1549 + 260] = mem[_1549]
                            idx = 0
                            s = _1549 + 32
                            t = _1549 + 292
                            while idx < mem[_1549]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1549 + 196] = this.address
                            mem[_1549 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1549 + (32 * mem[_1549]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1765 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1777 = mem[_1765]
                            require mem[_1765] <= test266151307()
                            require _1765 + mem[_1765] + 31 < _1765 + return_data.size
                            _1789 = mem[_1765 + mem[_1765]]
                            require mem[_1765 + mem[_1765]] <= test266151307()
                            require _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32 <= test266151307() and (32 * mem[_1765 + mem[_1765]]) + 32 >= 0
                            mem[64] = _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32
                            mem[_1765 + ceil32(return_data.size)] = _1789
                            require _1777 + (32 * _1789) + 32 <= return_data.size
                            idx = 0
                            s = _1765 + _1777 + 32
                            t = _1765 + ceil32(return_data.size) + 32
                            while idx < _1789:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1413
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1413
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1909] == bool(mem[_1909])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg2
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg2, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg2
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _859 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _883 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _859 + (32 * _883) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _859 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _883:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _883
                        _1403 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1403
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1403
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1459] == bool(mem[_1459])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _860 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _884 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _860 + (32 * _884) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _860 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _884:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _884
                        _1405 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1460] == bool(mem[_1460])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1535 = mem[_1523]
                        require mem[_1523] == mem[_1523]
                        _1547 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1547]
                        mem[_1547 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1547]
                        mem[_1547 + 64] = address(cd[(arg4 + 164)])
                        mem[_1547 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1547 + 100] = _1535
                        mem[_1547 + 132] = 0
                        mem[_1547 + 164] = 160
                        mem[_1547 + 260] = mem[_1547]
                        idx = 0
                        s = _1547 + 32
                        t = _1547 + 292
                        while idx < mem[_1547]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1547 + 196] = this.address
                        mem[_1547 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1547 + (32 * mem[_1547]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1763 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1775 = mem[_1763]
                        require mem[_1763] <= test266151307()
                        require _1763 + mem[_1763] + 31 < _1763 + return_data.size
                        _1787 = mem[_1763 + mem[_1763]]
                        require mem[_1763 + mem[_1763]] <= test266151307()
                        require _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32 <= test266151307() and (32 * mem[_1763 + mem[_1763]]) + 32 >= 0
                        mem[64] = _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32
                        mem[_1763 + ceil32(return_data.size)] = _1787
                        require _1775 + (32 * _1787) + 32 <= return_data.size
                        idx = 0
                        s = _1763 + _1775 + 32
                        t = _1763 + ceil32(return_data.size) + 32
                        while idx < _1787:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1405
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1405
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1907] == bool(mem[_1907])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _855 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _879 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _879
                            require _855 + (32 * _879) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _855 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _879:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _879
                            _1395 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1395
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1395
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1455] == bool(mem[_1455])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _856 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _880 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _880
                            require _856 + (32 * _880) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _856 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _880:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _880
                            _1397 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1456] == bool(mem[_1456])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1533 = mem[_1521]
                            require mem[_1521] == mem[_1521]
                            _1545 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1545]
                            mem[_1545 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1545]
                            mem[_1545 + 64] = address(cd[(arg4 + 164)])
                            mem[_1545 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1545 + 100] = _1533
                            mem[_1545 + 132] = 0
                            mem[_1545 + 164] = 160
                            mem[_1545 + 260] = mem[_1545]
                            idx = 0
                            s = _1545 + 32
                            t = _1545 + 292
                            while idx < mem[_1545]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1545 + 196] = this.address
                            mem[_1545 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1545 + (32 * mem[_1545]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1761 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1773 = mem[_1761]
                            require mem[_1761] <= test266151307()
                            require _1761 + mem[_1761] + 31 < _1761 + return_data.size
                            _1785 = mem[_1761 + mem[_1761]]
                            require mem[_1761 + mem[_1761]] <= test266151307()
                            require _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32 <= test266151307() and (32 * mem[_1761 + mem[_1761]]) + 32 >= 0
                            mem[64] = _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32
                            mem[_1761 + ceil32(return_data.size)] = _1785
                            require _1773 + (32 * _1785) + 32 <= return_data.size
                            idx = 0
                            s = _1761 + _1773 + 32
                            t = _1761 + ceil32(return_data.size) + 32
                            while idx < _1785:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1397
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1397
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1905] == bool(mem[_1905])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _857 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _881 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _881
                            require _857 + (32 * _881) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _857 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _881:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _881
                            _1399 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1399
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1457] == bool(mem[_1457])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _858 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _882 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _882
                            require _858 + (32 * _882) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _858 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _882:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _882
                            _1401 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1458] == bool(mem[_1458])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1534 = mem[_1522]
                            require mem[_1522] == mem[_1522]
                            _1546 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1546]
                            mem[_1546 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1546]
                            mem[_1546 + 64] = address(cd[(arg4 + 164)])
                            mem[_1546 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1546 + 100] = _1534
                            mem[_1546 + 132] = 0
                            mem[_1546 + 164] = 160
                            mem[_1546 + 260] = mem[_1546]
                            idx = 0
                            s = _1546 + 32
                            t = _1546 + 292
                            while idx < mem[_1546]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1546 + 196] = this.address
                            mem[_1546 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1546 + (32 * mem[_1546]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1774 = mem[_1762]
                            require mem[_1762] <= test266151307()
                            require _1762 + mem[_1762] + 31 < _1762 + return_data.size
                            _1786 = mem[_1762 + mem[_1762]]
                            require mem[_1762 + mem[_1762]] <= test266151307()
                            require _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32 <= test266151307() and (32 * mem[_1762 + mem[_1762]]) + 32 >= 0
                            mem[64] = _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32
                            mem[_1762 + ceil32(return_data.size)] = _1786
                            require _1774 + (32 * _1786) + 32 <= return_data.size
                            idx = 0
                            s = _1762 + _1774 + 32
                            t = _1762 + ceil32(return_data.size) + 32
                            while idx < _1786:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1401
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1401
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1906] == bool(mem[_1906])
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    if not arg2:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg3
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _853 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _877 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _877
                        require _853 + (32 * _877) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _853 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _877:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _877
                        _1391 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1391
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1391
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1453] == bool(mem[_1453])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _854 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _878 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _878
                        require _854 + (32 * _878) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _854 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _878:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _878
                        _1393 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1454] == bool(mem[_1454])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1532 = mem[_1520]
                        require mem[_1520] == mem[_1520]
                        _1544 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1544]
                        mem[_1544 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1544]
                        mem[_1544 + 64] = address(cd[(arg4 + 164)])
                        mem[_1544 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1544 + 100] = _1532
                        mem[_1544 + 132] = 0
                        mem[_1544 + 164] = 160
                        mem[_1544 + 260] = mem[_1544]
                        idx = 0
                        s = _1544 + 32
                        t = _1544 + 292
                        while idx < mem[_1544]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1544 + 196] = this.address
                        mem[_1544 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1544 + (32 * mem[_1544]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1760 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1772 = mem[_1760]
                        require mem[_1760] <= test266151307()
                        require _1760 + mem[_1760] + 31 < _1760 + return_data.size
                        _1784 = mem[_1760 + mem[_1760]]
                        require mem[_1760 + mem[_1760]] <= test266151307()
                        require _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32 <= test266151307() and (32 * mem[_1760 + mem[_1760]]) + 32 >= 0
                        mem[64] = _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32
                        mem[_1760 + ceil32(return_data.size)] = _1784
                        require _1772 + (32 * _1784) + 32 <= return_data.size
                        idx = 0
                        s = _1760 + _1772 + 32
                        t = _1760 + ceil32(return_data.size) + 32
                        while idx < _1784:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1393
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1393
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1904] == bool(mem[_1904])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _849 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _873 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _849 + (32 * _873) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _849 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _873:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _873
                            _1383 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1383
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1383
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1449] == bool(mem[_1449])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _850 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _874 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _850 + (32 * _874) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _850 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _874:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _874
                            _1385 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1450] == bool(mem[_1450])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1530 = mem[_1518]
                            require mem[_1518] == mem[_1518]
                            _1542 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1542]
                            mem[_1542 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1542]
                            mem[_1542 + 64] = address(cd[(arg4 + 164)])
                            mem[_1542 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1542 + 100] = _1530
                            mem[_1542 + 132] = 0
                            mem[_1542 + 164] = 160
                            mem[_1542 + 260] = mem[_1542]
                            idx = 0
                            s = _1542 + 32
                            t = _1542 + 292
                            while idx < mem[_1542]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1542 + 196] = this.address
                            mem[_1542 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1542 + (32 * mem[_1542]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1758 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1770 = mem[_1758]
                            require mem[_1758] <= test266151307()
                            require _1758 + mem[_1758] + 31 < _1758 + return_data.size
                            _1782 = mem[_1758 + mem[_1758]]
                            require mem[_1758 + mem[_1758]] <= test266151307()
                            require _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32 <= test266151307() and (32 * mem[_1758 + mem[_1758]]) + 32 >= 0
                            mem[64] = _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32
                            mem[_1758 + ceil32(return_data.size)] = _1782
                            require _1770 + (32 * _1782) + 32 <= return_data.size
                            idx = 0
                            s = _1758 + _1770 + 32
                            t = _1758 + ceil32(return_data.size) + 32
                            while idx < _1782:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1385
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1385
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1902 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1902] == bool(mem[_1902])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _851 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _875 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _851 + (32 * _875) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _851 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _875:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _875
                            _1387 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1387
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1387
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1451] == bool(mem[_1451])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _852 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _876 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _852 + (32 * _876) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _852 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _876:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _876
                            _1389 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1452] == bool(mem[_1452])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1531 = mem[_1519]
                            require mem[_1519] == mem[_1519]
                            _1543 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1543]
                            mem[_1543 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1543]
                            mem[_1543 + 64] = address(cd[(arg4 + 164)])
                            mem[_1543 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1543 + 100] = _1531
                            mem[_1543 + 132] = 0
                            mem[_1543 + 164] = 160
                            mem[_1543 + 260] = mem[_1543]
                            idx = 0
                            s = _1543 + 32
                            t = _1543 + 292
                            while idx < mem[_1543]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1543 + 196] = this.address
                            mem[_1543 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1543 + (32 * mem[_1543]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1759 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1771 = mem[_1759]
                            require mem[_1759] <= test266151307()
                            require _1759 + mem[_1759] + 31 < _1759 + return_data.size
                            _1783 = mem[_1759 + mem[_1759]]
                            require mem[_1759 + mem[_1759]] <= test266151307()
                            require _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32 <= test266151307() and (32 * mem[_1759 + mem[_1759]]) + 32 >= 0
                            mem[64] = _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32
                            mem[_1759 + ceil32(return_data.size)] = _1783
                            require _1771 + (32 * _1783) + 32 <= return_data.size
                            idx = 0
                            s = _1759 + _1771 + 32
                            t = _1759 + ceil32(return_data.size) + 32
                            while idx < _1783:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1389
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1389
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1903] == bool(mem[_1903])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg3
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg3, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg3
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _847 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _871 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _847 + (32 * _871) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _847 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _871:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _871
                        _1379 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1379
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1379
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1447] == bool(mem[_1447])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _848 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _872 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _848 + (32 * _872) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _848 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _872:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _872
                        _1381 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1448] == bool(mem[_1448])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1529 = mem[_1517]
                        require mem[_1517] == mem[_1517]
                        _1541 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1541]
                        mem[_1541 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1541]
                        mem[_1541 + 64] = address(cd[(arg4 + 164)])
                        mem[_1541 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1541 + 100] = _1529
                        mem[_1541 + 132] = 0
                        mem[_1541 + 164] = 160
                        mem[_1541 + 260] = mem[_1541]
                        idx = 0
                        s = _1541 + 32
                        t = _1541 + 292
                        while idx < mem[_1541]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1541 + 196] = this.address
                        mem[_1541 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1541 + (32 * mem[_1541]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1757 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1769 = mem[_1757]
                        require mem[_1757] <= test266151307()
                        require _1757 + mem[_1757] + 31 < _1757 + return_data.size
                        _1781 = mem[_1757 + mem[_1757]]
                        require mem[_1757 + mem[_1757]] <= test266151307()
                        require _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32 <= test266151307() and (32 * mem[_1757 + mem[_1757]]) + 32 >= 0
                        mem[64] = _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32
                        mem[_1757 + ceil32(return_data.size)] = _1781
                        require _1769 + (32 * _1781) + 32 <= return_data.size
                        idx = 0
                        s = _1757 + _1769 + 32
                        t = _1757 + ceil32(return_data.size) + 32
                        while idx < _1781:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1381
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1381
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1901] == bool(mem[_1901])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _843 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _867 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _867
                            require _843 + (32 * _867) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _843 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _867:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _867
                            _1371 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1371
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1371
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1443] == bool(mem[_1443])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _844 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _868 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _868
                            require _844 + (32 * _868) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _844 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _868:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _868
                            _1373 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1444] == bool(mem[_1444])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1515 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1527 = mem[_1515]
                            require mem[_1515] == mem[_1515]
                            _1539 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1539]
                            mem[_1539 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1539]
                            mem[_1539 + 64] = address(cd[(arg4 + 164)])
                            mem[_1539 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1539 + 100] = _1527
                            mem[_1539 + 132] = 0
                            mem[_1539 + 164] = 160
                            mem[_1539 + 260] = mem[_1539]
                            idx = 0
                            s = _1539 + 32
                            t = _1539 + 292
                            while idx < mem[_1539]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1539 + 196] = this.address
                            mem[_1539 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1539 + (32 * mem[_1539]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1755 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1767 = mem[_1755]
                            require mem[_1755] <= test266151307()
                            require _1755 + mem[_1755] + 31 < _1755 + return_data.size
                            _1779 = mem[_1755 + mem[_1755]]
                            require mem[_1755 + mem[_1755]] <= test266151307()
                            require _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32 <= test266151307() and (32 * mem[_1755 + mem[_1755]]) + 32 >= 0
                            mem[64] = _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32
                            mem[_1755 + ceil32(return_data.size)] = _1779
                            require _1767 + (32 * _1779) + 32 <= return_data.size
                            idx = 0
                            s = _1755 + _1767 + 32
                            t = _1755 + ceil32(return_data.size) + 32
                            while idx < _1779:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1373
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1373
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1899] == bool(mem[_1899])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _845 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _869 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _869
                            require _845 + (32 * _869) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _845 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _869:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _869
                            _1375 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1375
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1375
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1445] == bool(mem[_1445])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _846 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _870 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _870
                            require _846 + (32 * _870) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _846 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _870:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _870
                            _1377 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1446 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1446] == bool(mem[_1446])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1516 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1528 = mem[_1516]
                            require mem[_1516] == mem[_1516]
                            _1540 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1540]
                            mem[_1540 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1540]
                            mem[_1540 + 64] = address(cd[(arg4 + 164)])
                            mem[_1540 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1540 + 100] = _1528
                            mem[_1540 + 132] = 0
                            mem[_1540 + 164] = 160
                            mem[_1540 + 260] = mem[_1540]
                            idx = 0
                            s = _1540 + 32
                            t = _1540 + 292
                            while idx < mem[_1540]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1540 + 196] = this.address
                            mem[_1540 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1540 + (32 * mem[_1540]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1756 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1768 = mem[_1756]
                            require mem[_1756] <= test266151307()
                            require _1756 + mem[_1756] + 31 < _1756 + return_data.size
                            _1780 = mem[_1756 + mem[_1756]]
                            require mem[_1756 + mem[_1756]] <= test266151307()
                            require _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32 <= test266151307() and (32 * mem[_1756 + mem[_1756]]) + 32 >= 0
                            mem[64] = _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32
                            mem[_1756 + ceil32(return_data.size)] = _1780
                            require _1768 + (32 * _1780) + 32 <= return_data.size
                            idx = 0
                            s = _1756 + _1768 + 32
                            t = _1756 + ceil32(return_data.size) + 32
                            while idx < _1780:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1377
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1377
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1900] == bool(mem[_1900])
    else:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg2
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _865 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _889 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _889
                        require _865 + (32 * _889) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _865 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _889:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _889
                        _1415 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1415
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1415
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1465] == bool(mem[_1465])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _866 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _890 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _890
                        require _866 + (32 * _890) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _866 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _890:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _890
                        _1417 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1466] == bool(mem[_1466])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1538 = mem[_1526]
                        require mem[_1526] == mem[_1526]
                        _1550 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1550]
                        mem[_1550 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1550]
                        mem[_1550 + 64] = address(cd[(arg4 + 164)])
                        mem[_1550 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1550 + 100] = _1538
                        mem[_1550 + 132] = 0
                        mem[_1550 + 164] = 160
                        mem[_1550 + 260] = mem[_1550]
                        idx = 0
                        s = _1550 + 32
                        t = _1550 + 292
                        while idx < mem[_1550]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1550 + 196] = this.address
                        mem[_1550 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1550 + (32 * mem[_1550]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1778 = mem[_1766]
                        require mem[_1766] <= test266151307()
                        require _1766 + mem[_1766] + 31 < _1766 + return_data.size
                        _1790 = mem[_1766 + mem[_1766]]
                        require mem[_1766 + mem[_1766]] <= test266151307()
                        require _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32 <= test266151307() and (32 * mem[_1766 + mem[_1766]]) + 32 >= 0
                        mem[64] = _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32
                        mem[_1766 + ceil32(return_data.size)] = _1790
                        require _1778 + (32 * _1790) + 32 <= return_data.size
                        idx = 0
                        s = _1766 + _1778 + 32
                        t = _1766 + ceil32(return_data.size) + 32
                        while idx < _1790:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1417
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1417
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1910] == bool(mem[_1910])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _861 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _885 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _861 + (32 * _885) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _861 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _885:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _885
                            _1407 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1407
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1407
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1461] == bool(mem[_1461])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _862 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _886 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _862 + (32 * _886) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _862 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _886:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _886
                            _1409 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1462 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1462] == bool(mem[_1462])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1536 = mem[_1524]
                            require mem[_1524] == mem[_1524]
                            _1548 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1548]
                            mem[_1548 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1548]
                            mem[_1548 + 64] = address(cd[(arg4 + 164)])
                            mem[_1548 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1548 + 100] = _1536
                            mem[_1548 + 132] = 0
                            mem[_1548 + 164] = 160
                            mem[_1548 + 260] = mem[_1548]
                            idx = 0
                            s = _1548 + 32
                            t = _1548 + 292
                            while idx < mem[_1548]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1548 + 196] = this.address
                            mem[_1548 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1548 + (32 * mem[_1548]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1764 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1776 = mem[_1764]
                            require mem[_1764] <= test266151307()
                            require _1764 + mem[_1764] + 31 < _1764 + return_data.size
                            _1788 = mem[_1764 + mem[_1764]]
                            require mem[_1764 + mem[_1764]] <= test266151307()
                            require _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32 <= test266151307() and (32 * mem[_1764 + mem[_1764]]) + 32 >= 0
                            mem[64] = _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32
                            mem[_1764 + ceil32(return_data.size)] = _1788
                            require _1776 + (32 * _1788) + 32 <= return_data.size
                            idx = 0
                            s = _1764 + _1776 + 32
                            t = _1764 + ceil32(return_data.size) + 32
                            while idx < _1788:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1409
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1409
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1908] == bool(mem[_1908])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _863 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _887 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _863 + (32 * _887) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _863 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _887:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _887
                            _1411 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1411
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1411
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1463 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1463] == bool(mem[_1463])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _864 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _888 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _864 + (32 * _888) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _864 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _888:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _888
                            _1413 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1464 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1464] == bool(mem[_1464])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1537 = mem[_1525]
                            require mem[_1525] == mem[_1525]
                            _1549 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1549]
                            mem[_1549 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1549]
                            mem[_1549 + 64] = address(cd[(arg4 + 164)])
                            mem[_1549 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1549 + 100] = _1537
                            mem[_1549 + 132] = 0
                            mem[_1549 + 164] = 160
                            mem[_1549 + 260] = mem[_1549]
                            idx = 0
                            s = _1549 + 32
                            t = _1549 + 292
                            while idx < mem[_1549]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1549 + 196] = this.address
                            mem[_1549 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1549 + (32 * mem[_1549]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1765 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1777 = mem[_1765]
                            require mem[_1765] <= test266151307()
                            require _1765 + mem[_1765] + 31 < _1765 + return_data.size
                            _1789 = mem[_1765 + mem[_1765]]
                            require mem[_1765 + mem[_1765]] <= test266151307()
                            require _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32 <= test266151307() and (32 * mem[_1765 + mem[_1765]]) + 32 >= 0
                            mem[64] = _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32
                            mem[_1765 + ceil32(return_data.size)] = _1789
                            require _1777 + (32 * _1789) + 32 <= return_data.size
                            idx = 0
                            s = _1765 + _1777 + 32
                            t = _1765 + ceil32(return_data.size) + 32
                            while idx < _1789:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1413
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1413
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1909] == bool(mem[_1909])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg2
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg2, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg2
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _859 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _883 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _859 + (32 * _883) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _859 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _883:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _883
                        _1403 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1403
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1403
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1459] == bool(mem[_1459])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _860 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _884 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _860 + (32 * _884) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _860 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _884:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _884
                        _1405 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1460] == bool(mem[_1460])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1535 = mem[_1523]
                        require mem[_1523] == mem[_1523]
                        _1547 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1547]
                        mem[_1547 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1547]
                        mem[_1547 + 64] = address(cd[(arg4 + 164)])
                        mem[_1547 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1547 + 100] = _1535
                        mem[_1547 + 132] = 0
                        mem[_1547 + 164] = 160
                        mem[_1547 + 260] = mem[_1547]
                        idx = 0
                        s = _1547 + 32
                        t = _1547 + 292
                        while idx < mem[_1547]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1547 + 196] = this.address
                        mem[_1547 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1547 + (32 * mem[_1547]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1763 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1775 = mem[_1763]
                        require mem[_1763] <= test266151307()
                        require _1763 + mem[_1763] + 31 < _1763 + return_data.size
                        _1787 = mem[_1763 + mem[_1763]]
                        require mem[_1763 + mem[_1763]] <= test266151307()
                        require _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32 <= test266151307() and (32 * mem[_1763 + mem[_1763]]) + 32 >= 0
                        mem[64] = _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32
                        mem[_1763 + ceil32(return_data.size)] = _1787
                        require _1775 + (32 * _1787) + 32 <= return_data.size
                        idx = 0
                        s = _1763 + _1775 + 32
                        t = _1763 + ceil32(return_data.size) + 32
                        while idx < _1787:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1405
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1405
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1907] == bool(mem[_1907])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _855 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _879 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _879
                            require _855 + (32 * _879) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _855 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _879:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _879
                            _1395 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1395
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1395
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1455] == bool(mem[_1455])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _856 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _880 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _880
                            require _856 + (32 * _880) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _856 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _880:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _880
                            _1397 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1456] == bool(mem[_1456])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1533 = mem[_1521]
                            require mem[_1521] == mem[_1521]
                            _1545 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1545]
                            mem[_1545 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1545]
                            mem[_1545 + 64] = address(cd[(arg4 + 164)])
                            mem[_1545 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1545 + 100] = _1533
                            mem[_1545 + 132] = 0
                            mem[_1545 + 164] = 160
                            mem[_1545 + 260] = mem[_1545]
                            idx = 0
                            s = _1545 + 32
                            t = _1545 + 292
                            while idx < mem[_1545]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1545 + 196] = this.address
                            mem[_1545 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1545 + (32 * mem[_1545]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1761 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1773 = mem[_1761]
                            require mem[_1761] <= test266151307()
                            require _1761 + mem[_1761] + 31 < _1761 + return_data.size
                            _1785 = mem[_1761 + mem[_1761]]
                            require mem[_1761 + mem[_1761]] <= test266151307()
                            require _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32 <= test266151307() and (32 * mem[_1761 + mem[_1761]]) + 32 >= 0
                            mem[64] = _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32
                            mem[_1761 + ceil32(return_data.size)] = _1785
                            require _1773 + (32 * _1785) + 32 <= return_data.size
                            idx = 0
                            s = _1761 + _1773 + 32
                            t = _1761 + ceil32(return_data.size) + 32
                            while idx < _1785:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1397
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1397
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1905] == bool(mem[_1905])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _857 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _881 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _881
                            require _857 + (32 * _881) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _857 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _881:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _881
                            _1399 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1399
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1457] == bool(mem[_1457])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _858 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _882 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _882
                            require _858 + (32 * _882) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _858 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _882:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _882
                            _1401 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1458] == bool(mem[_1458])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1534 = mem[_1522]
                            require mem[_1522] == mem[_1522]
                            _1546 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1546]
                            mem[_1546 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1546]
                            mem[_1546 + 64] = address(cd[(arg4 + 164)])
                            mem[_1546 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1546 + 100] = _1534
                            mem[_1546 + 132] = 0
                            mem[_1546 + 164] = 160
                            mem[_1546 + 260] = mem[_1546]
                            idx = 0
                            s = _1546 + 32
                            t = _1546 + 292
                            while idx < mem[_1546]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1546 + 196] = this.address
                            mem[_1546 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1546 + (32 * mem[_1546]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1774 = mem[_1762]
                            require mem[_1762] <= test266151307()
                            require _1762 + mem[_1762] + 31 < _1762 + return_data.size
                            _1786 = mem[_1762 + mem[_1762]]
                            require mem[_1762 + mem[_1762]] <= test266151307()
                            require _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32 <= test266151307() and (32 * mem[_1762 + mem[_1762]]) + 32 >= 0
                            mem[64] = _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32
                            mem[_1762 + ceil32(return_data.size)] = _1786
                            require _1774 + (32 * _1786) + 32 <= return_data.size
                            idx = 0
                            s = _1762 + _1774 + 32
                            t = _1762 + ceil32(return_data.size) + 32
                            while idx < _1786:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1401
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1401
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1906] == bool(mem[_1906])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    if not arg2:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg3
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _853 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _877 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _877
                        require _853 + (32 * _877) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _853 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _877:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _877
                        _1391 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1391
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1391
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1453] == bool(mem[_1453])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _854 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _878 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _878
                        require _854 + (32 * _878) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _854 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _878:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _878
                        _1393 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1454] == bool(mem[_1454])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1532 = mem[_1520]
                        require mem[_1520] == mem[_1520]
                        _1544 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1544]
                        mem[_1544 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1544]
                        mem[_1544 + 64] = address(cd[(arg4 + 164)])
                        mem[_1544 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1544 + 100] = _1532
                        mem[_1544 + 132] = 0
                        mem[_1544 + 164] = 160
                        mem[_1544 + 260] = mem[_1544]
                        idx = 0
                        s = _1544 + 32
                        t = _1544 + 292
                        while idx < mem[_1544]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1544 + 196] = this.address
                        mem[_1544 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1544 + (32 * mem[_1544]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1760 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1772 = mem[_1760]
                        require mem[_1760] <= test266151307()
                        require _1760 + mem[_1760] + 31 < _1760 + return_data.size
                        _1784 = mem[_1760 + mem[_1760]]
                        require mem[_1760 + mem[_1760]] <= test266151307()
                        require _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32 <= test266151307() and (32 * mem[_1760 + mem[_1760]]) + 32 >= 0
                        mem[64] = _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32
                        mem[_1760 + ceil32(return_data.size)] = _1784
                        require _1772 + (32 * _1784) + 32 <= return_data.size
                        idx = 0
                        s = _1760 + _1772 + 32
                        t = _1760 + ceil32(return_data.size) + 32
                        while idx < _1784:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1393
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1393
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1904] == bool(mem[_1904])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _849 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _873 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _849 + (32 * _873) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _849 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _873:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _873
                            _1383 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1383
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1383
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1449] == bool(mem[_1449])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _850 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _874 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _850 + (32 * _874) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _850 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _874:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _874
                            _1385 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1450] == bool(mem[_1450])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1530 = mem[_1518]
                            require mem[_1518] == mem[_1518]
                            _1542 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1542]
                            mem[_1542 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1542]
                            mem[_1542 + 64] = address(cd[(arg4 + 164)])
                            mem[_1542 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1542 + 100] = _1530
                            mem[_1542 + 132] = 0
                            mem[_1542 + 164] = 160
                            mem[_1542 + 260] = mem[_1542]
                            idx = 0
                            s = _1542 + 32
                            t = _1542 + 292
                            while idx < mem[_1542]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1542 + 196] = this.address
                            mem[_1542 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1542 + (32 * mem[_1542]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1758 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1770 = mem[_1758]
                            require mem[_1758] <= test266151307()
                            require _1758 + mem[_1758] + 31 < _1758 + return_data.size
                            _1782 = mem[_1758 + mem[_1758]]
                            require mem[_1758 + mem[_1758]] <= test266151307()
                            require _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32 <= test266151307() and (32 * mem[_1758 + mem[_1758]]) + 32 >= 0
                            mem[64] = _1758 + ceil32(return_data.size) + (32 * mem[_1758 + mem[_1758]]) + 32
                            mem[_1758 + ceil32(return_data.size)] = _1782
                            require _1770 + (32 * _1782) + 32 <= return_data.size
                            idx = 0
                            s = _1758 + _1770 + 32
                            t = _1758 + ceil32(return_data.size) + 32
                            while idx < _1782:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1385
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1385
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1902 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1902] == bool(mem[_1902])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg3
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _851 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _875 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _851 + (32 * _875) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _851 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _875:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _875
                            _1387 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1387
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1387
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1451] == bool(mem[_1451])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _852 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _876 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require _852 + (32 * _876) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _852 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _876:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _876
                            _1389 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1452] == bool(mem[_1452])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1531 = mem[_1519]
                            require mem[_1519] == mem[_1519]
                            _1543 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1543]
                            mem[_1543 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1543]
                            mem[_1543 + 64] = address(cd[(arg4 + 164)])
                            mem[_1543 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1543 + 100] = _1531
                            mem[_1543 + 132] = 0
                            mem[_1543 + 164] = 160
                            mem[_1543 + 260] = mem[_1543]
                            idx = 0
                            s = _1543 + 32
                            t = _1543 + 292
                            while idx < mem[_1543]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1543 + 196] = this.address
                            mem[_1543 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1543 + (32 * mem[_1543]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1759 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1771 = mem[_1759]
                            require mem[_1759] <= test266151307()
                            require _1759 + mem[_1759] + 31 < _1759 + return_data.size
                            _1783 = mem[_1759 + mem[_1759]]
                            require mem[_1759 + mem[_1759]] <= test266151307()
                            require _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32 <= test266151307() and (32 * mem[_1759 + mem[_1759]]) + 32 >= 0
                            mem[64] = _1759 + ceil32(return_data.size) + (32 * mem[_1759 + mem[_1759]]) + 32
                            mem[_1759 + ceil32(return_data.size)] = _1783
                            require _1771 + (32 * _1783) + 32 <= return_data.size
                            idx = 0
                            s = _1759 + _1771 + 32
                            t = _1759 + ceil32(return_data.size) + 32
                            while idx < _1783:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1389
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1389
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1903] == bool(mem[_1903])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg3
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg3, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg3
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _847 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _871 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _847 + (32 * _871) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _847 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _871:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _871
                        _1379 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1379
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1379
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1447] == bool(mem[_1447])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _848 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _872 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _848 + (32 * _872) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _848 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _872:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _872
                        _1381 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1448] == bool(mem[_1448])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1529 = mem[_1517]
                        require mem[_1517] == mem[_1517]
                        _1541 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1541]
                        mem[_1541 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1541]
                        mem[_1541 + 64] = address(cd[(arg4 + 164)])
                        mem[_1541 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1541 + 100] = _1529
                        mem[_1541 + 132] = 0
                        mem[_1541 + 164] = 160
                        mem[_1541 + 260] = mem[_1541]
                        idx = 0
                        s = _1541 + 32
                        t = _1541 + 292
                        while idx < mem[_1541]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1541 + 196] = this.address
                        mem[_1541 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1541 + (32 * mem[_1541]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1757 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1769 = mem[_1757]
                        require mem[_1757] <= test266151307()
                        require _1757 + mem[_1757] + 31 < _1757 + return_data.size
                        _1781 = mem[_1757 + mem[_1757]]
                        require mem[_1757 + mem[_1757]] <= test266151307()
                        require _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32 <= test266151307() and (32 * mem[_1757 + mem[_1757]]) + 32 >= 0
                        mem[64] = _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32
                        mem[_1757 + ceil32(return_data.size)] = _1781
                        require _1769 + (32 * _1781) + 32 <= return_data.size
                        idx = 0
                        s = _1757 + _1769 + 32
                        t = _1757 + ceil32(return_data.size) + 32
                        while idx < _1781:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1381
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1381
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1901] == bool(mem[_1901])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _843 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _867 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _867
                            require _843 + (32 * _867) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _843 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _867:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _867
                            _1371 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1371
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1371
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1443] == bool(mem[_1443])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _844 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _868 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _868
                            require _844 + (32 * _868) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _844 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _868:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _868
                            _1373 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1444] == bool(mem[_1444])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1515 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1527 = mem[_1515]
                            require mem[_1515] == mem[_1515]
                            _1539 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1539]
                            mem[_1539 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1539]
                            mem[_1539 + 64] = address(cd[(arg4 + 164)])
                            mem[_1539 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1539 + 100] = _1527
                            mem[_1539 + 132] = 0
                            mem[_1539 + 164] = 160
                            mem[_1539 + 260] = mem[_1539]
                            idx = 0
                            s = _1539 + 32
                            t = _1539 + 292
                            while idx < mem[_1539]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1539 + 196] = this.address
                            mem[_1539 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1539 + (32 * mem[_1539]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1755 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1767 = mem[_1755]
                            require mem[_1755] <= test266151307()
                            require _1755 + mem[_1755] + 31 < _1755 + return_data.size
                            _1779 = mem[_1755 + mem[_1755]]
                            require mem[_1755 + mem[_1755]] <= test266151307()
                            require _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32 <= test266151307() and (32 * mem[_1755 + mem[_1755]]) + 32 >= 0
                            mem[64] = _1755 + ceil32(return_data.size) + (32 * mem[_1755 + mem[_1755]]) + 32
                            mem[_1755 + ceil32(return_data.size)] = _1779
                            require _1767 + (32 * _1779) + 32 <= return_data.size
                            idx = 0
                            s = _1755 + _1767 + 32
                            t = _1755 + ceil32(return_data.size) + 32
                            while idx < _1779:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1373
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1373
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1899] == bool(mem[_1899])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg3 + (3 * arg3 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg3
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _845 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _869 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _869
                            require _845 + (32 * _869) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _845 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _869:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _869
                            _1375 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1375
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1375
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1445] == bool(mem[_1445])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _846 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _870 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _870
                            require _846 + (32 * _870) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _846 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _870:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _870
                            _1377 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1446 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1446] == bool(mem[_1446])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1516 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1528 = mem[_1516]
                            require mem[_1516] == mem[_1516]
                            _1540 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1540]
                            mem[_1540 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1540]
                            mem[_1540 + 64] = address(cd[(arg4 + 164)])
                            mem[_1540 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1540 + 100] = _1528
                            mem[_1540 + 132] = 0
                            mem[_1540 + 164] = 160
                            mem[_1540 + 260] = mem[_1540]
                            idx = 0
                            s = _1540 + 32
                            t = _1540 + 292
                            while idx < mem[_1540]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1540 + 196] = this.address
                            mem[_1540 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1540 + (32 * mem[_1540]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1756 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1768 = mem[_1756]
                            require mem[_1756] <= test266151307()
                            require _1756 + mem[_1756] + 31 < _1756 + return_data.size
                            _1780 = mem[_1756 + mem[_1756]]
                            require mem[_1756 + mem[_1756]] <= test266151307()
                            require _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32 <= test266151307() and (32 * mem[_1756 + mem[_1756]]) + 32 >= 0
                            mem[64] = _1756 + ceil32(return_data.size) + (32 * mem[_1756 + mem[_1756]]) + 32
                            mem[_1756 + ceil32(return_data.size)] = _1780
                            require _1768 + (32 * _1780) + 32 <= return_data.size
                            idx = 0
                            s = _1756 + _1768 + 32
                            t = _1756 + ceil32(return_data.size) + 32
                            while idx < _1780:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1377
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1377
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1900] == bool(mem[_1900])
    else:
        if stor0[address(cd[(arg4 + 68)])]:
            require ext_code.size(stor2)
            call stor2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(4 * ceil32(return_data.size)) + 132] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, address arg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(8 * ceil32(return_data.size)) + 96] = 2
                    mem[(8 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(8 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(8 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 196] = arg2
                    mem[(8 * ceil32(return_data.size)) + 228] = 64
                    mem[(8 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _865 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _889 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _889
                        require _865 + (32 * _889) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _865 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _889:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _889
                        _1415 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1415
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1415
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1465] == bool(mem[_1465])
                    else:
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _866 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                        _890 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(10 * ceil32(return_data.size)) + 192] = _890
                        require _866 + (32 * _890) + 32 <= return_data.size
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + _866 + 224
                        t = (10 * ceil32(return_data.size)) + 224
                        while idx < _890:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _890
                        _1417 = mem[(10 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1466] == bool(mem[_1466])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1538 = mem[_1526]
                        require mem[_1526] == mem[_1526]
                        _1550 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1550]
                        mem[_1550 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1550]
                        mem[_1550 + 64] = address(cd[(arg4 + 164)])
                        mem[_1550 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1550 + 100] = _1538
                        mem[_1550 + 132] = 0
                        mem[_1550 + 164] = 160
                        mem[_1550 + 260] = mem[_1550]
                        idx = 0
                        s = _1550 + 32
                        t = _1550 + 292
                        while idx < mem[_1550]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1550 + 196] = this.address
                        mem[_1550 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1550 + (32 * mem[_1550]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1778 = mem[_1766]
                        require mem[_1766] <= test266151307()
                        require _1766 + mem[_1766] + 31 < _1766 + return_data.size
                        _1790 = mem[_1766 + mem[_1766]]
                        require mem[_1766 + mem[_1766]] <= test266151307()
                        require _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32 <= test266151307() and (32 * mem[_1766 + mem[_1766]]) + 32 >= 0
                        mem[64] = _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32
                        mem[_1766 + ceil32(return_data.size)] = _1790
                        require _1778 + (32 * _1790) + 32 <= return_data.size
                        idx = 0
                        s = _1766 + _1778 + 32
                        t = _1766 + ceil32(return_data.size) + 32
                        while idx < _1790:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1417
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1417
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1910] == bool(mem[_1910])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _861 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _885 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _861 + (32 * _885) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _861 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _885:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _885
                            _1407 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1407
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1407
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1461] == bool(mem[_1461])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _862 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _886 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _862 + (32 * _886) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _862 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _886:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _886
                            _1409 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1462 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1462] == bool(mem[_1462])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1536 = mem[_1524]
                            require mem[_1524] == mem[_1524]
                            _1548 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1548]
                            mem[_1548 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1548]
                            mem[_1548 + 64] = address(cd[(arg4 + 164)])
                            mem[_1548 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1548 + 100] = _1536
                            mem[_1548 + 132] = 0
                            mem[_1548 + 164] = 160
                            mem[_1548 + 260] = mem[_1548]
                            idx = 0
                            s = _1548 + 32
                            t = _1548 + 292
                            while idx < mem[_1548]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1548 + 196] = this.address
                            mem[_1548 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1548 + (32 * mem[_1548]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1764 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1776 = mem[_1764]
                            require mem[_1764] <= test266151307()
                            require _1764 + mem[_1764] + 31 < _1764 + return_data.size
                            _1788 = mem[_1764 + mem[_1764]]
                            require mem[_1764 + mem[_1764]] <= test266151307()
                            require _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32 <= test266151307() and (32 * mem[_1764 + mem[_1764]]) + 32 >= 0
                            mem[64] = _1764 + ceil32(return_data.size) + (32 * mem[_1764 + mem[_1764]]) + 32
                            mem[_1764 + ceil32(return_data.size)] = _1788
                            require _1776 + (32 * _1788) + 32 <= return_data.size
                            idx = 0
                            s = _1764 + _1776 + 32
                            t = _1764 + ceil32(return_data.size) + 32
                            while idx < _1788:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1409
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1409
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1908] == bool(mem[_1908])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(10 * ceil32(return_data.size)) + 96] = 2
                        mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 196] = arg2
                        mem[(10 * ceil32(return_data.size)) + 228] = 64
                        mem[(10 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _863 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _887 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _863 + (32 * _887) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _863 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _887:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _887
                            _1411 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1411
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1411
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1463 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1463] == bool(mem[_1463])
                        else:
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _864 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                            _888 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require _864 + (32 * _888) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _864 + 224
                            t = (11 * ceil32(return_data.size)) + 224
                            while idx < _888:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _888
                            _1413 = mem[(11 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1464 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1464] == bool(mem[_1464])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1537 = mem[_1525]
                            require mem[_1525] == mem[_1525]
                            _1549 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1549]
                            mem[_1549 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1549]
                            mem[_1549 + 64] = address(cd[(arg4 + 164)])
                            mem[_1549 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1549 + 100] = _1537
                            mem[_1549 + 132] = 0
                            mem[_1549 + 164] = 160
                            mem[_1549 + 260] = mem[_1549]
                            idx = 0
                            s = _1549 + 32
                            t = _1549 + 292
                            while idx < mem[_1549]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1549 + 196] = this.address
                            mem[_1549 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1549 + (32 * mem[_1549]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1765 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1777 = mem[_1765]
                            require mem[_1765] <= test266151307()
                            require _1765 + mem[_1765] + 31 < _1765 + return_data.size
                            _1789 = mem[_1765 + mem[_1765]]
                            require mem[_1765 + mem[_1765]] <= test266151307()
                            require _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32 <= test266151307() and (32 * mem[_1765 + mem[_1765]]) + 32 >= 0
                            mem[64] = _1765 + ceil32(return_data.size) + (32 * mem[_1765 + mem[_1765]]) + 32
                            mem[_1765 + ceil32(return_data.size)] = _1789
                            require _1777 + (32 * _1789) + 32 <= return_data.size
                            idx = 0
                            s = _1765 + _1777 + 32
                            t = _1765 + ceil32(return_data.size) + 32
                            while idx < _1789:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1413
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1413
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1909] == bool(mem[_1909])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 68)])
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
            mem[(6 * ceil32(return_data.size)) + 132] = arg2
            mem[(6 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 100)])
            require ext_code.size(address(cd[(arg4 + 68)]))
            call address(cd[(arg4 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 36)]), arg2, address(cd[(arg4 + 100)])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'liquidation failed'
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg4 + 100)]))
            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = address(cd[(arg4 + 100)])
            mem[32] = 0
            if stor0[address(cd[(arg4 + 100)])]:
                require ext_code.size(stor2)
                call stor2.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 132)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(10 * ceil32(return_data.size)) + 96] = 2
                    mem[(10 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                    mem[(10 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                    mem[(10 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + 196] = arg2
                    mem[(10 * ceil32(return_data.size)) + 228] = 64
                    mem[(10 * ceil32(return_data.size)) + 260] = 2
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg4 + 164)]):
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _859 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _883 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _859 + (32 * _883) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _859 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _883:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _883
                        _1403 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1403
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1403
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1459] == bool(mem[_1459])
                    else:
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 128
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _860 = mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (10 * ceil32(return_data.size)) + return_data.size + 192
                        _884 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                        mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(11 * ceil32(return_data.size)) + 192] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _860 + (32 * _884) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _860 + 224
                        t = (11 * ceil32(return_data.size)) + 224
                        while idx < _884:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 0 < _884
                        _1405 = mem[(11 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor3
                        mem[mem[64] + 36] = -1
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor3, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1460] == bool(mem[_1460])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1535 = mem[_1523]
                        require mem[_1523] == mem[_1523]
                        _1547 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1547]
                        mem[_1547 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 1 < mem[_1547]
                        mem[_1547 + 64] = address(cd[(arg4 + 164)])
                        mem[_1547 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1547 + 100] = _1535
                        mem[_1547 + 132] = 0
                        mem[_1547 + 164] = 160
                        mem[_1547 + 260] = mem[_1547]
                        idx = 0
                        s = _1547 + 32
                        t = _1547 + 292
                        while idx < mem[_1547]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1547 + 196] = this.address
                        mem[_1547 + 228] = block.timestamp + 30
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1547 + (32 * mem[_1547]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1763 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1775 = mem[_1763]
                        require mem[_1763] <= test266151307()
                        require _1763 + mem[_1763] + 31 < _1763 + return_data.size
                        _1787 = mem[_1763 + mem[_1763]]
                        require mem[_1763 + mem[_1763]] <= test266151307()
                        require _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32 <= test266151307() and (32 * mem[_1763 + mem[_1763]]) + 32 >= 0
                        mem[64] = _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32
                        mem[_1763 + ceil32(return_data.size)] = _1787
                        require _1775 + (32 * _1787) + 32 <= return_data.size
                        idx = 0
                        s = _1763 + _1775 + 32
                        t = _1763 + ceil32(return_data.size) + 32
                        while idx < _1787:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = _1405
                        require ext_code.size(address(cd[(arg4 + 164)]))
                        call address(cd[(arg4 + 164)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _1405
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1907] == bool(mem[_1907])
            else:
                require ext_code.size(address(cd[(arg4 + 100)]))
                staticcall address(cd[(arg4 + 100)]).underlying() with:
                        gas gas_remaining wei
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if ext_call.return_data[12 len 20] == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if ext_call.return_data[12 len 20] == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _855 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _879 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _879
                            require _855 + (32 * _879) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _855 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _879:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _879
                            _1395 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1395
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1395
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1455] == bool(mem[_1455])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _856 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _880 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _880
                            require _856 + (32 * _880) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _856 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _880:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _880
                            _1397 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1456] == bool(mem[_1456])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1533 = mem[_1521]
                            require mem[_1521] == mem[_1521]
                            _1545 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1545]
                            mem[_1545 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1545]
                            mem[_1545 + 64] = address(cd[(arg4 + 164)])
                            mem[_1545 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1545 + 100] = _1533
                            mem[_1545 + 132] = 0
                            mem[_1545 + 164] = 160
                            mem[_1545 + 260] = mem[_1545]
                            idx = 0
                            s = _1545 + 32
                            t = _1545 + 292
                            while idx < mem[_1545]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1545 + 196] = this.address
                            mem[_1545 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1545 + (32 * mem[_1545]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1761 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1773 = mem[_1761]
                            require mem[_1761] <= test266151307()
                            require _1761 + mem[_1761] + 31 < _1761 + return_data.size
                            _1785 = mem[_1761 + mem[_1761]]
                            require mem[_1761 + mem[_1761]] <= test266151307()
                            require _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32 <= test266151307() and (32 * mem[_1761 + mem[_1761]]) + 32 >= 0
                            mem[64] = _1761 + ceil32(return_data.size) + (32 * mem[_1761 + mem[_1761]]) + 32
                            mem[_1761 + ceil32(return_data.size)] = _1785
                            require _1773 + (32 * _1785) + 32 <= return_data.size
                            idx = 0
                            s = _1761 + _1773 + 32
                            t = _1761 + ceil32(return_data.size) + 32
                            while idx < _1785:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1397
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1397
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1905] == bool(mem[_1905])
                else:
                    require ext_code.size(stor2)
                    call stor2.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(ext_call.return_data[0]) == address(cd[(arg4 + 132)]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2 + (3 * arg2 / 997) + 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(11 * ceil32(return_data.size)) + 96] = 2
                        mem[(11 * ceil32(return_data.size)) + 128] = address(cd[(arg4 + 164)])
                        mem[(11 * ceil32(return_data.size)) + 160] = address(cd[(arg4 + 132)])
                        mem[(11 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(11 * ceil32(return_data.size)) + 196] = arg2
                        mem[(11 * ceil32(return_data.size)) + 228] = 64
                        mem[(11 * ceil32(return_data.size)) + 260] = 2
                        if address(ext_call.return_data[0]) == address(cd[(arg4 + 164)]):
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _857 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _881 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _881
                            require _857 + (32 * _881) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _857 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _881:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _881
                            _1399 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1399
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1457] == bool(mem[_1457])
                        else:
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + 128
                            t = (11 * ceil32(return_data.size)) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor3)
                            staticcall stor3.getAmountsIn(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg2, Array(len=2, data=mem[(11 * ceil32(return_data.size)) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (12 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _858 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                            require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                            _882 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                            require mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                            require (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0
                            mem[64] = (12 * ceil32(return_data.size)) + (32 * mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                            mem[(12 * ceil32(return_data.size)) + 192] = _882
                            require _858 + (32 * _882) + 32 <= return_data.size
                            idx = 0
                            s = (11 * ceil32(return_data.size)) + _858 + 224
                            t = (12 * ceil32(return_data.size)) + 224
                            while idx < _882:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 0 < _882
                            _1401 = mem[(12 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 4] = stor3
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor3, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1458] == bool(mem[_1458])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1534 = mem[_1522]
                            require mem[_1522] == mem[_1522]
                            _1546 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1546]
                            mem[_1546 + 32] = address(ext_call.return_data[0])
                            require 1 < mem[_1546]
                            mem[_1546 + 64] = address(cd[(arg4 + 164)])
                            mem[_1546 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1546 + 100] = _1534
                            mem[_1546 + 132] = 0
                            mem[_1546 + 164] = 160
                            mem[_1546 + 260] = mem[_1546]
                            idx = 0
                            s = _1546 + 32
                            t = _1546 + 292
                            while idx < mem[_1546]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1546 + 196] = this.address
                            mem[_1546 + 228] = block.timestamp + 30
                            require ext_code.size(stor3)
                            call stor3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1546 + (32 * mem[_1546]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1774 = mem[_1762]
                            require mem[_1762] <= test266151307()
                            require _1762 + mem[_1762] + 31 < _1762 + return_data.size
                            _1786 = mem[_1762 + mem[_1762]]
                            require mem[_1762 + mem[_1762]] <= test266151307()
                            require _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32 <= test266151307() and (32 * mem[_1762 + mem[_1762]]) + 32 >= 0
                            mem[64] = _1762 + ceil32(return_data.size) + (32 * mem[_1762 + mem[_1762]]) + 32
                            mem[_1762 + ceil32(return_data.size)] = _1786
                            require _1774 + (32 * _1786) + 32 <= return_data.size
                            idx = 0
                            s = _1762 + _1774 + 32
                            t = _1762 + ceil32(return_data.size) + 32
                            while idx < _1786:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = _1401
                            require ext_code.size(address(cd[(arg4 + 164)]))
                            call address(cd[(arg4 + 164)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), _1401
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1906] == bool(mem[_1906])
}



}
