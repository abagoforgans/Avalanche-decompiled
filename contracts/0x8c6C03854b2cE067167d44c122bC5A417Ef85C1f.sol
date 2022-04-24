contract main {




// =====================  Runtime code  =====================


#
#  - sub_09f242ca(?)
#  - sub_32a8f69f(?)
#  - sub_399d71fd(?)
#  - sub_9ffe00d9(?)
#
address owner;
address slaveAddress;

function owner() {
    return owner
}

function slave() {
    return slaveAddress
}

function _fallback() payable {
  stop
}

function isAllowed() {
    if owner != msg.sender:
        if slaveAddress != msg.sender:
            revert with 0, 'not allowed'
    return 1
}

function sub_91a6eddf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require owner == msg.sender
    slaveAddress = address(arg1)
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'not found'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_d03c0992(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'bad sender'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args address(arg2), arg4, address(arg3), arg5, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
}

function sub_0d2d11a8(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (128 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require calldata.size - s >= 128
        _620 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_620] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_620 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_620 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_620 + 96] = cd[(s + 96)]
        mem[t] = _620
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _619 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _621 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _619 + 1) + 32
    if not _619 + 1:
        if 0 >= mem[_621]:
            revert with 'NH{q', 50
        mem[_621 + 32] = cd[4]
        _1404 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _1404:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1409 = mem[(32 * idx) + 128]
            _1410 = mem[mem[(32 * idx) + 128]]
            if mem[mem[(32 * idx) + 128] + 96] != 1:
                if mem[mem[(32 * idx) + 128] + 96] != 2:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1404 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128]]
                    continue 
                _1418 = mem[mem[(32 * idx) + 128] + 32]
                mem[mem[64] + 4] = address(s)
                require ext_code.size(address(_1418))
                staticcall address(_1418).getBalance(address rg1) with:
                        gas gas_remaining wei
                       args address(s)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1464 = mem[_1453]
                require mem[_1453] == mem[_1453]
                mem[mem[64] + 4] = address(_1410)
                require ext_code.size(address(_1418))
                staticcall address(_1418).getBalance(address rg1) with:
                        gas gas_remaining wei
                       args address(_1410)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1478] == mem[_1478]
                if idx >= mem[_621]:
                    revert with 'NH{q', 50
                if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                    revert with 'NH{q', 17
                if 10^18 < 10^13 * mem[_1409 + 64]:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                    revert with 'NH{q', 17
                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                    revert with 'NH{q', 17
                if _1464 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                    revert with 'NH{q', 17
                if _1464 and 10^18 > -1 / _1464:
                    revert with 'NH{q', 17
                if 10^18 * _1464 > -(_1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                    revert with 'NH{q', 17
                if not _1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                    revert with 'NH{q', 18
                if 10^18 < (10^18 * _1464) + (_1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                    revert with 'NH{q', 17
                if mem[_1478] and -((10^18 * _1464) + (_1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1478]:
                    revert with 'NH{q', 17
                if (10^18 * mem[_1478]) - ((10^18 * _1464) + (_1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1478]) > -500000000000000001:
                    revert with 'NH{q', 17
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[_621]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1478]) + (-1 * (10^18 * _1464) + (_1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1464 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1478]) + 5 * 10^17 / 10^18
            else:
                if address(s) == mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(s) < mem[mem[(32 * idx) + 128] + 12 len 20]:
                    if not address(s):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1442 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1442] == mem[_1442 + 18 len 14]
                    require mem[_1442 + 32] == mem[_1442 + 50 len 14]
                    require mem[_1442 + 64] == mem[_1442 + 92 len 4]
                    if idx >= mem[_621]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _621 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_1442 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1442 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_1409 + 64]:
                            revert with 'NH{q', 17
                        if not -mem[_1409 + 64] + 100000:
                            if not mem[_1442 + 50 len 14]:
                                if mem[_1442 + 18 len 14] and 100000 > -1 / mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 18 len 14] / 100000 != mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 18 len 14] < 100000 * mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1442 + 18 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1704 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1704))
                                    staticcall address(_1704).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1760 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1792 = mem[_1760]
                                    require mem[_1760] == mem[_1760]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1704))
                                    staticcall address(_1704).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1936 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1936] == mem[_1936]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1792 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1792 and 10^18 > -1 / _1792:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1792 > -(_1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1792) + (_1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_1936] and -((10^18 * _1792) + (_1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1936]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_1936]) - ((10^18 * _1792) + (_1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1936]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1936]) + (-1 * (10^18 * _1792) + (_1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1792 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1936]) + 5 * 10^17 / 10^18
                            else:
                                if False and mem[_1442 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1442 + 18 len 14] and 100000 > -1 / mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 18 len 14] / 100000 != mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 18 len 14] < 100000 * mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1442 + 18 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1816 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1816))
                                    staticcall address(_1816).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1880 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1905 = mem[_1880]
                                    require mem[_1880] == mem[_1880]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1816))
                                    staticcall address(_1816).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2048 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2048] == mem[_2048]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1905 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1905 and 10^18 > -1 / _1905:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1905 > -(_1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1905) + (_1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2048] and -((10^18 * _1905) + (_1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2048]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2048]) - ((10^18 * _1905) + (_1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2048]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2048]) + (-1 * (10^18 * _1905) + (_1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1905 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2048]) + 5 * 10^17 / 10^18
                        else:
                            if mem[(32 * idx) + _621 + 32] and -mem[_1409 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1409 + 64] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1409 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1442 + 50 len 14]:
                                if mem[_1442 + 18 len 14] and 100000 > -1 / mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 18 len 14] / 100000 != mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1442 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1442 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1442 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1818 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1818))
                                    staticcall address(_1818).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1881 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1906 = mem[_1881]
                                    require mem[_1881] == mem[_1881]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1818))
                                    staticcall address(_1818).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2049 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2049] == mem[_2049]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1906 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1906 and 10^18 > -1 / _1906:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1906 > -(_1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1906) + (_1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2049] and -((10^18 * _1906) + (_1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2049]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2049]) - ((10^18 * _1906) + (_1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2049]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2049]) + (-1 * (10^18 * _1906) + (_1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1906 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2049]) + 5 * 10^17 / 10^18
                            else:
                                if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1442 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1442 + 50 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1442 + 50 len 14]) / mem[_1442 + 50 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1442 + 18 len 14] and 100000 > -1 / mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 18 len 14] / 100000 != mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1442 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1442 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1442 + 50 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1442 + 50 len 14]) / (100000 * mem[_1442 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1937 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1937))
                                    staticcall address(_1937).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1993 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2026 = mem[_1993]
                                    require mem[_1993] == mem[_1993]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1937))
                                    staticcall address(_1937).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2144 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2144] == mem[_2144]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _2026 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _2026 and 10^18 > -1 / _2026:
                                        revert with 'NH{q', 17
                                    if 10^18 * _2026 > -(_2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _2026) + (_2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2144] and -((10^18 * _2026) + (_2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2144]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2144]) - ((10^18 * _2026) + (_2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2144]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2144]) + (-1 * (10^18 * _2026) + (_2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2026 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2144]) + 5 * 10^17 / 10^18
                    else:
                        if mem[_1442 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1442 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_1409 + 64]:
                            revert with 'NH{q', 17
                        if not -mem[_1409 + 64] + 100000:
                            if not mem[_1442 + 18 len 14]:
                                if mem[_1442 + 50 len 14] and 100000 > -1 / mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 50 len 14] / 100000 != mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 50 len 14] < 100000 * mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1442 + 50 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1706 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1706))
                                    staticcall address(_1706).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1761 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1793 = mem[_1761]
                                    require mem[_1761] == mem[_1761]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1706))
                                    staticcall address(_1706).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1939 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1939] == mem[_1939]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1793 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1793 and 10^18 > -1 / _1793:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1793 > -(_1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1793) + (_1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_1939] and -((10^18 * _1793) + (_1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1939]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_1939]) - ((10^18 * _1793) + (_1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1939]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1939]) + (-1 * (10^18 * _1793) + (_1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1793 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1939]) + 5 * 10^17 / 10^18
                            else:
                                if False and mem[_1442 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1442 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1442 + 50 len 14] and 100000 > -1 / mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 50 len 14] / 100000 != mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 50 len 14] < 100000 * mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1442 + 50 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1820 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1820))
                                    staticcall address(_1820).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1882 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1908 = mem[_1882]
                                    require mem[_1882] == mem[_1882]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1820))
                                    staticcall address(_1820).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2050 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2050] == mem[_2050]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1908 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1908 and 10^18 > -1 / _1908:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1908 > -(_1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1908) + (_1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2050] and -((10^18 * _1908) + (_1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2050]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2050]) - ((10^18 * _1908) + (_1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2050]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2050]) + (-1 * (10^18 * _1908) + (_1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1908 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2050]) + 5 * 10^17 / 10^18
                        else:
                            if mem[(32 * idx) + _621 + 32] and -mem[_1409 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1409 + 64] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1409 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1442 + 18 len 14]:
                                if mem[_1442 + 50 len 14] and 100000 > -1 / mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 50 len 14] / 100000 != mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1442 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1442 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1442 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1822 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1822))
                                    staticcall address(_1822).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1883 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1909 = mem[_1883]
                                    require mem[_1883] == mem[_1883]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1822))
                                    staticcall address(_1822).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2051 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2051] == mem[_2051]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1909 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1909 and 10^18 > -1 / _1909:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1909 > -(_1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1909) + (_1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2051] and -((10^18 * _1909) + (_1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2051]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2051]) - ((10^18 * _1909) + (_1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2051]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2051]) + (-1 * (10^18 * _1909) + (_1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1909 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2051]) + 5 * 10^17 / 10^18
                            else:
                                if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1442 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1442 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1442 + 18 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1442 + 18 len 14]) / mem[_1442 + 18 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1442 + 50 len 14] and 100000 > -1 / mem[_1442 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1442 + 50 len 14] / 100000 != mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1442 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1442 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1442 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1442 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1442 + 18 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1442 + 18 len 14]) / (100000 * mem[_1442 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1940 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1940))
                                    staticcall address(_1940).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1995 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2029 = mem[_1995]
                                    require mem[_1995] == mem[_1995]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1940))
                                    staticcall address(_1940).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2145 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2145] == mem[_2145]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _2029 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _2029 and 10^18 > -1 / _2029:
                                        revert with 'NH{q', 17
                                    if 10^18 * _2029 > -(_2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _2029) + (_2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2145] and -((10^18 * _2029) + (_2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2145]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2145]) - ((10^18 * _2029) + (_2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2145]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2145]) + (-1 * (10^18 * _2029) + (_2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2029 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2145]) + 5 * 10^17 / 10^18
                else:
                    if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1443 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1443] == mem[_1443 + 18 len 14]
                    require mem[_1443 + 32] == mem[_1443 + 50 len 14]
                    require mem[_1443 + 64] == mem[_1443 + 92 len 4]
                    if idx >= mem[_621]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _621 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_1410):
                        if mem[_1443 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1443 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_1409 + 64]:
                            revert with 'NH{q', 17
                        if not -mem[_1409 + 64] + 100000:
                            if not mem[_1443 + 50 len 14]:
                                if mem[_1443 + 18 len 14] and 100000 > -1 / mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 18 len 14] / 100000 != mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 18 len 14] < 100000 * mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1443 + 18 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1708 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1708))
                                    staticcall address(_1708).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1762 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1794 = mem[_1762]
                                    require mem[_1762] == mem[_1762]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1708))
                                    staticcall address(_1708).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1942 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1942] == mem[_1942]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1794 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1794 and 10^18 > -1 / _1794:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1794 > -(_1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1794) + (_1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_1942] and -((10^18 * _1794) + (_1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1942]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_1942]) - ((10^18 * _1794) + (_1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1942]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1942]) + (-1 * (10^18 * _1794) + (_1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1794 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1942]) + 5 * 10^17 / 10^18
                            else:
                                if False and mem[_1443 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1443 + 18 len 14] and 100000 > -1 / mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 18 len 14] / 100000 != mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 18 len 14] < 100000 * mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1443 + 18 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1824 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1824))
                                    staticcall address(_1824).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1884 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1911 = mem[_1884]
                                    require mem[_1884] == mem[_1884]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1824))
                                    staticcall address(_1824).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2052 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2052] == mem[_2052]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1911 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1911 and 10^18 > -1 / _1911:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1911 > -(_1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1911) + (_1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2052] and -((10^18 * _1911) + (_1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2052]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2052]) - ((10^18 * _1911) + (_1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2052]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2052]) + (-1 * (10^18 * _1911) + (_1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1911 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2052]) + 5 * 10^17 / 10^18
                        else:
                            if mem[(32 * idx) + _621 + 32] and -mem[_1409 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1409 + 64] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1409 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1443 + 50 len 14]:
                                if mem[_1443 + 18 len 14] and 100000 > -1 / mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 18 len 14] / 100000 != mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1443 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1443 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1443 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1826 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1826))
                                    staticcall address(_1826).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1885 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1912 = mem[_1885]
                                    require mem[_1885] == mem[_1885]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1826))
                                    staticcall address(_1826).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2053 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2053] == mem[_2053]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1912 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1912 and 10^18 > -1 / _1912:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1912 > -(_1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1912) + (_1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2053] and -((10^18 * _1912) + (_1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2053]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2053]) - ((10^18 * _1912) + (_1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2053]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2053]) + (-1 * (10^18 * _1912) + (_1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1912 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2053]) + 5 * 10^17 / 10^18
                            else:
                                if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1443 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1443 + 50 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1443 + 50 len 14]) / mem[_1443 + 50 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1443 + 18 len 14] and 100000 > -1 / mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 18 len 14] / 100000 != mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1443 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1443 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1443 + 50 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1443 + 50 len 14]) / (100000 * mem[_1443 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1943 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1943))
                                    staticcall address(_1943).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1997 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2032 = mem[_1997]
                                    require mem[_1997] == mem[_1997]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1943))
                                    staticcall address(_1943).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2146 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2146] == mem[_2146]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _2032 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _2032 and 10^18 > -1 / _2032:
                                        revert with 'NH{q', 17
                                    if 10^18 * _2032 > -(_2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _2032) + (_2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2146] and -((10^18 * _2032) + (_2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2146]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2146]) - ((10^18 * _2032) + (_2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2146]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2146]) + (-1 * (10^18 * _2032) + (_2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2032 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2146]) + 5 * 10^17 / 10^18
                    else:
                        if mem[_1443 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1443 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_1409 + 64]:
                            revert with 'NH{q', 17
                        if not -mem[_1409 + 64] + 100000:
                            if not mem[_1443 + 18 len 14]:
                                if mem[_1443 + 50 len 14] and 100000 > -1 / mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 50 len 14] / 100000 != mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 50 len 14] < 100000 * mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1443 + 50 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1710 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1710))
                                    staticcall address(_1710).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1763 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1795 = mem[_1763]
                                    require mem[_1763] == mem[_1763]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1710))
                                    staticcall address(_1710).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1945 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1945] == mem[_1945]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1795 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1795 and 10^18 > -1 / _1795:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1795 > -(_1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1795) + (_1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_1945] and -((10^18 * _1795) + (_1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1945]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_1945]) - ((10^18 * _1795) + (_1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1945]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1945]) + (-1 * (10^18 * _1795) + (_1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1795 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1945]) + 5 * 10^17 / 10^18
                            else:
                                if False and mem[_1443 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1443 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1443 + 50 len 14] and 100000 > -1 / mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 50 len 14] / 100000 != mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 50 len 14] < 100000 * mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 100000 * mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1443 + 50 len 14]
                                if mem[_1409 + 96] == 2:
                                    _1828 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1828))
                                    staticcall address(_1828).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1886 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1914 = mem[_1886]
                                    require mem[_1886] == mem[_1886]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1828))
                                    staticcall address(_1828).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2054 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2054] == mem[_2054]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1914 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1914 and 10^18 > -1 / _1914:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1914 > -(_1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1914) + (_1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2054] and -((10^18 * _1914) + (_1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2054]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2054]) - ((10^18 * _1914) + (_1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2054]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2054]) + (-1 * (10^18 * _1914) + (_1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1914 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2054]) + 5 * 10^17 / 10^18
                        else:
                            if mem[(32 * idx) + _621 + 32] and -mem[_1409 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1409 + 64] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1409 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1443 + 18 len 14]:
                                if mem[_1443 + 50 len 14] and 100000 > -1 / mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 50 len 14] / 100000 != mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1443 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1443 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1443 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1830 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1830))
                                    staticcall address(_1830).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1887 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1915 = mem[_1887]
                                    require mem[_1887] == mem[_1887]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1830))
                                    staticcall address(_1830).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2055 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2055] == mem[_2055]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _1915 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _1915 and 10^18 > -1 / _1915:
                                        revert with 'NH{q', 17
                                    if 10^18 * _1915 > -(_1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _1915) + (_1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2055] and -((10^18 * _1915) + (_1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2055]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2055]) - ((10^18 * _1915) + (_1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2055]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2055]) + (-1 * (10^18 * _1915) + (_1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1915 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2055]) + 5 * 10^17 / 10^18
                            else:
                                if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1443 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1443 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1443 + 18 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1443 + 18 len 14]) / mem[_1443 + 18 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1443 + 50 len 14] and 100000 > -1 / mem[_1443 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_1443 + 50 len 14] / 100000 != mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_1443 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_1443 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1443 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_1443 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1443 + 18 len 14]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1443 + 18 len 14]) / (100000 * mem[_1443 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1409 + 64] * mem[(32 * idx) + _621 + 32])
                                if mem[_1409 + 96] == 2:
                                    _1946 = mem[_1409 + 32]
                                    mem[mem[64] + 4] = address(s)
                                    require ext_code.size(address(_1946))
                                    staticcall address(_1946).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(s)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1999 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2035 = mem[_1999]
                                    require mem[_1999] == mem[_1999]
                                    mem[mem[64] + 4] = address(_1410)
                                    require ext_code.size(address(_1946))
                                    staticcall address(_1946).getBalance(address rg1) with:
                                            gas gas_remaining wei
                                           args address(_1410)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2147 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2147] == mem[_2147]
                                    if idx >= mem[_621]:
                                        revert with 'NH{q', 50
                                    if mem[_1409 + 64] and 10^13 > -1 / mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if 10^18 < 10^13 * mem[_1409 + 64]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1409 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if _2035 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if _2035 and 10^18 > -1 / _2035:
                                        revert with 'NH{q', 17
                                    if 10^18 * _2035 > -(_2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                        revert with 'NH{q', 17
                                    if not _2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 18
                                    if 10^18 < (10^18 * _2035) + (_2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                        revert with 'NH{q', 17
                                    if mem[_2147] and -((10^18 * _2035) + (_2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2147]:
                                        revert with 'NH{q', 17
                                    if (10^18 * mem[_2147]) - ((10^18 * _2035) + (_2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2147]) > -500000000000000001:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_621]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2147]) + (-1 * (10^18 * _2035) + (_2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2035 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1409 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2147]) + 5 * 10^17 / 10^18
            if idx == -1:
                revert with 'NH{q', 17
            _1404 = mem[96]
            idx = idx + 1
            s = _1410
            continue 
        mem[mem[64]] = 32
        _1422 = mem[_621]
        mem[mem[64] + 32] = mem[_621]
        mem[mem[64] + 64 len 32 * _1422] = mem[_621 + 32 len 32 * _1422]
        return 32, mem[mem[64] + 32 len (32 * _1422) + 32]
    mem[_621 + 32 len 32 * _619 + 1] = call.data[calldata.size len 32 * _619 + 1]
    if 0 >= mem[_621]:
        revert with 'NH{q', 50
    mem[_621 + 32] = cd[4]
    _1405 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _1405:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1413 = mem[(32 * idx) + 128]
        _1414 = mem[mem[(32 * idx) + 128]]
        if mem[mem[(32 * idx) + 128] + 96] != 1:
            if mem[mem[(32 * idx) + 128] + 96] != 2:
                if idx == -1:
                    revert with 'NH{q', 17
                _1405 = mem[96]
                idx = idx + 1
                s = mem[mem[(32 * idx) + 128]]
                continue 
            _1420 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = address(s)
            require ext_code.size(address(_1420))
            staticcall address(_1420).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1465 = mem[_1457]
            require mem[_1457] == mem[_1457]
            mem[mem[64] + 4] = address(_1414)
            require ext_code.size(address(_1420))
            staticcall address(_1420).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(_1414)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1479] == mem[_1479]
            if idx >= mem[_621]:
                revert with 'NH{q', 50
            if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                revert with 'NH{q', 17
            if 10^18 < 10^13 * mem[_1413 + 64]:
                revert with 'NH{q', 17
            if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                revert with 'NH{q', 17
            if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                revert with 'NH{q', 17
            if _1465 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                revert with 'NH{q', 17
            if _1465 and 10^18 > -1 / _1465:
                revert with 'NH{q', 17
            if 10^18 * _1465 > -(_1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                revert with 'NH{q', 17
            if not _1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                revert with 'NH{q', 18
            if 10^18 < (10^18 * _1465) + (_1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                revert with 'NH{q', 17
            if mem[_1479] and -((10^18 * _1465) + (_1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1479]:
                revert with 'NH{q', 17
            if (10^18 * mem[_1479]) - ((10^18 * _1465) + (_1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1479]) > -500000000000000001:
                revert with 'NH{q', 17
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[_621]:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1479]) + (-1 * (10^18 * _1465) + (_1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1465 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1479]) + 5 * 10^17 / 10^18
        else:
            if address(s) == mem[mem[(32 * idx) + 128] + 12 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(s) < mem[mem[(32 * idx) + 128] + 12 len 20]:
                if not address(s):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1444 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1444] == mem[_1444 + 18 len 14]
                require mem[_1444 + 32] == mem[_1444 + 50 len 14]
                require mem[_1444 + 64] == mem[_1444 + 92 len 4]
                if idx >= mem[_621]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _621 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(s):
                    if mem[_1444 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1444 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_1413 + 64]:
                        revert with 'NH{q', 17
                    if not -mem[_1413 + 64] + 100000:
                        if not mem[_1444 + 50 len 14]:
                            if mem[_1444 + 18 len 14] and 100000 > -1 / mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 18 len 14] / 100000 != mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 18 len 14] < 100000 * mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1444 + 18 len 14]
                            if mem[_1413 + 96] == 2:
                                _1712 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1712))
                                staticcall address(_1712).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1764 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1796 = mem[_1764]
                                require mem[_1764] == mem[_1764]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1712))
                                staticcall address(_1712).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1948 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1948] == mem[_1948]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1796 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1796 and 10^18 > -1 / _1796:
                                    revert with 'NH{q', 17
                                if 10^18 * _1796 > -(_1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1796) + (_1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_1948] and -((10^18 * _1796) + (_1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1948]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_1948]) - ((10^18 * _1796) + (_1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1948]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1948]) + (-1 * (10^18 * _1796) + (_1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1796 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1948]) + 5 * 10^17 / 10^18
                        else:
                            if False and mem[_1444 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1444 + 18 len 14] and 100000 > -1 / mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 18 len 14] / 100000 != mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 18 len 14] < 100000 * mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1444 + 18 len 14]
                            if mem[_1413 + 96] == 2:
                                _1832 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1832))
                                staticcall address(_1832).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1888 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1917 = mem[_1888]
                                require mem[_1888] == mem[_1888]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1832))
                                staticcall address(_1832).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2056 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2056] == mem[_2056]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1917 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1917 and 10^18 > -1 / _1917:
                                    revert with 'NH{q', 17
                                if 10^18 * _1917 > -(_1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1917) + (_1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2056] and -((10^18 * _1917) + (_1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2056]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2056]) - ((10^18 * _1917) + (_1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2056]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2056]) + (-1 * (10^18 * _1917) + (_1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1917 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2056]) + 5 * 10^17 / 10^18
                    else:
                        if mem[(32 * idx) + _621 + 32] and -mem[_1413 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1413 + 64] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1413 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1444 + 50 len 14]:
                            if mem[_1444 + 18 len 14] and 100000 > -1 / mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 18 len 14] / 100000 != mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1444 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1444 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1444 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1834 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1834))
                                staticcall address(_1834).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1889 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1918 = mem[_1889]
                                require mem[_1889] == mem[_1889]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1834))
                                staticcall address(_1834).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2057 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2057] == mem[_2057]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1918 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1918 and 10^18 > -1 / _1918:
                                    revert with 'NH{q', 17
                                if 10^18 * _1918 > -(_1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1918) + (_1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2057] and -((10^18 * _1918) + (_1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2057]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2057]) - ((10^18 * _1918) + (_1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2057]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2057]) + (-1 * (10^18 * _1918) + (_1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1918 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2057]) + 5 * 10^17 / 10^18
                        else:
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1444 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1444 + 50 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1444 + 50 len 14]) / mem[_1444 + 50 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1444 + 18 len 14] and 100000 > -1 / mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 18 len 14] / 100000 != mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1444 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1444 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1444 + 50 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1444 + 50 len 14]) / (100000 * mem[_1444 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1949 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1949))
                                staticcall address(_1949).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2001 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2038 = mem[_2001]
                                require mem[_2001] == mem[_2001]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1949))
                                staticcall address(_1949).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2148 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2148] == mem[_2148]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _2038 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _2038 and 10^18 > -1 / _2038:
                                    revert with 'NH{q', 17
                                if 10^18 * _2038 > -(_2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _2038) + (_2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2148] and -((10^18 * _2038) + (_2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2148]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2148]) - ((10^18 * _2038) + (_2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2148]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2148]) + (-1 * (10^18 * _2038) + (_2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2038 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2148]) + 5 * 10^17 / 10^18
                else:
                    if mem[_1444 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1444 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_1413 + 64]:
                        revert with 'NH{q', 17
                    if not -mem[_1413 + 64] + 100000:
                        if not mem[_1444 + 18 len 14]:
                            if mem[_1444 + 50 len 14] and 100000 > -1 / mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 50 len 14] / 100000 != mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 50 len 14] < 100000 * mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1444 + 50 len 14]
                            if mem[_1413 + 96] == 2:
                                _1714 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1714))
                                staticcall address(_1714).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1797 = mem[_1765]
                                require mem[_1765] == mem[_1765]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1714))
                                staticcall address(_1714).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1951 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1951] == mem[_1951]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1797 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1797 and 10^18 > -1 / _1797:
                                    revert with 'NH{q', 17
                                if 10^18 * _1797 > -(_1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1797) + (_1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_1951] and -((10^18 * _1797) + (_1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1951]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_1951]) - ((10^18 * _1797) + (_1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1951]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1951]) + (-1 * (10^18 * _1797) + (_1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1797 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1951]) + 5 * 10^17 / 10^18
                        else:
                            if False and mem[_1444 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1444 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1444 + 50 len 14] and 100000 > -1 / mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 50 len 14] / 100000 != mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 50 len 14] < 100000 * mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1444 + 50 len 14]
                            if mem[_1413 + 96] == 2:
                                _1836 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1836))
                                staticcall address(_1836).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1890 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1920 = mem[_1890]
                                require mem[_1890] == mem[_1890]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1836))
                                staticcall address(_1836).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2058 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2058] == mem[_2058]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1920 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1920 and 10^18 > -1 / _1920:
                                    revert with 'NH{q', 17
                                if 10^18 * _1920 > -(_1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1920) + (_1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2058] and -((10^18 * _1920) + (_1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2058]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2058]) - ((10^18 * _1920) + (_1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2058]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2058]) + (-1 * (10^18 * _1920) + (_1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1920 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2058]) + 5 * 10^17 / 10^18
                    else:
                        if mem[(32 * idx) + _621 + 32] and -mem[_1413 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1413 + 64] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1413 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1444 + 18 len 14]:
                            if mem[_1444 + 50 len 14] and 100000 > -1 / mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 50 len 14] / 100000 != mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1444 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1444 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1444 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1838 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1838))
                                staticcall address(_1838).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1891 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1921 = mem[_1891]
                                require mem[_1891] == mem[_1891]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1838))
                                staticcall address(_1838).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2059 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2059] == mem[_2059]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1921 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1921 and 10^18 > -1 / _1921:
                                    revert with 'NH{q', 17
                                if 10^18 * _1921 > -(_1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1921) + (_1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2059] and -((10^18 * _1921) + (_1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2059]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2059]) - ((10^18 * _1921) + (_1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2059]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2059]) + (-1 * (10^18 * _1921) + (_1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1921 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2059]) + 5 * 10^17 / 10^18
                        else:
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1444 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1444 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1444 + 18 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1444 + 18 len 14]) / mem[_1444 + 18 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1444 + 50 len 14] and 100000 > -1 / mem[_1444 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1444 + 50 len 14] / 100000 != mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1444 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1444 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1444 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1444 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1444 + 18 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1444 + 18 len 14]) / (100000 * mem[_1444 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1952 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1952))
                                staticcall address(_1952).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2041 = mem[_2003]
                                require mem[_2003] == mem[_2003]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1952))
                                staticcall address(_1952).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2149 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2149] == mem[_2149]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _2041 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _2041 and 10^18 > -1 / _2041:
                                    revert with 'NH{q', 17
                                if 10^18 * _2041 > -(_2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _2041) + (_2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2149] and -((10^18 * _2041) + (_2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2149]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2149]) - ((10^18 * _2041) + (_2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2149]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2149]) + (-1 * (10^18 * _2041) + (_2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2041 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2149]) + 5 * 10^17 / 10^18
            else:
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1445] == mem[_1445 + 18 len 14]
                require mem[_1445 + 32] == mem[_1445 + 50 len 14]
                require mem[_1445 + 64] == mem[_1445 + 92 len 4]
                if idx >= mem[_621]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _621 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(_1414):
                    if mem[_1445 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1445 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_1413 + 64]:
                        revert with 'NH{q', 17
                    if not -mem[_1413 + 64] + 100000:
                        if not mem[_1445 + 50 len 14]:
                            if mem[_1445 + 18 len 14] and 100000 > -1 / mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 18 len 14] / 100000 != mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 18 len 14] < 100000 * mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1445 + 18 len 14]
                            if mem[_1413 + 96] == 2:
                                _1716 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1716))
                                staticcall address(_1716).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1766 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1798 = mem[_1766]
                                require mem[_1766] == mem[_1766]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1716))
                                staticcall address(_1716).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1954 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1954] == mem[_1954]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1798 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1798 and 10^18 > -1 / _1798:
                                    revert with 'NH{q', 17
                                if 10^18 * _1798 > -(_1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1798) + (_1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_1954] and -((10^18 * _1798) + (_1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1954]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_1954]) - ((10^18 * _1798) + (_1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1954]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1954]) + (-1 * (10^18 * _1798) + (_1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1798 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1954]) + 5 * 10^17 / 10^18
                        else:
                            if False and mem[_1445 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1445 + 18 len 14] and 100000 > -1 / mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 18 len 14] / 100000 != mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 18 len 14] < 100000 * mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1445 + 18 len 14]
                            if mem[_1413 + 96] == 2:
                                _1840 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1840))
                                staticcall address(_1840).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1892 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1923 = mem[_1892]
                                require mem[_1892] == mem[_1892]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1840))
                                staticcall address(_1840).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2060 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2060] == mem[_2060]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1923 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1923 and 10^18 > -1 / _1923:
                                    revert with 'NH{q', 17
                                if 10^18 * _1923 > -(_1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1923) + (_1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2060] and -((10^18 * _1923) + (_1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2060]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2060]) - ((10^18 * _1923) + (_1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2060]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2060]) + (-1 * (10^18 * _1923) + (_1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1923 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2060]) + 5 * 10^17 / 10^18
                    else:
                        if mem[(32 * idx) + _621 + 32] and -mem[_1413 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1413 + 64] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1413 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1445 + 50 len 14]:
                            if mem[_1445 + 18 len 14] and 100000 > -1 / mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 18 len 14] / 100000 != mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1445 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1445 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1445 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1842 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1842))
                                staticcall address(_1842).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1893 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1924 = mem[_1893]
                                require mem[_1893] == mem[_1893]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1842))
                                staticcall address(_1842).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2061] == mem[_2061]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1924 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1924 and 10^18 > -1 / _1924:
                                    revert with 'NH{q', 17
                                if 10^18 * _1924 > -(_1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1924) + (_1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2061] and -((10^18 * _1924) + (_1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2061]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2061]) - ((10^18 * _1924) + (_1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2061]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2061]) + (-1 * (10^18 * _1924) + (_1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1924 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2061]) + 5 * 10^17 / 10^18
                        else:
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1445 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1445 + 50 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1445 + 50 len 14]) / mem[_1445 + 50 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1445 + 18 len 14] and 100000 > -1 / mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 18 len 14] / 100000 != mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 18 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1445 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1445 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1445 + 50 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1445 + 50 len 14]) / (100000 * mem[_1445 + 18 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1955 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1955))
                                staticcall address(_1955).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2005 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2044 = mem[_2005]
                                require mem[_2005] == mem[_2005]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1955))
                                staticcall address(_1955).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2150 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2150] == mem[_2150]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _2044 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _2044 and 10^18 > -1 / _2044:
                                    revert with 'NH{q', 17
                                if 10^18 * _2044 > -(_2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _2044) + (_2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2150] and -((10^18 * _2044) + (_2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2150]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2150]) - ((10^18 * _2044) + (_2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2150]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2150]) + (-1 * (10^18 * _2044) + (_2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2044 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2150]) + 5 * 10^17 / 10^18
                else:
                    if mem[_1445 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1445 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_1413 + 64]:
                        revert with 'NH{q', 17
                    if not -mem[_1413 + 64] + 100000:
                        if not mem[_1445 + 18 len 14]:
                            if mem[_1445 + 50 len 14] and 100000 > -1 / mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 50 len 14] / 100000 != mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 50 len 14] < 100000 * mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1445 + 50 len 14]
                            if mem[_1413 + 96] == 2:
                                _1718 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1718))
                                staticcall address(_1718).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1767 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1799 = mem[_1767]
                                require mem[_1767] == mem[_1767]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1718))
                                staticcall address(_1718).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1957 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1957] == mem[_1957]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1799 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1799 and 10^18 > -1 / _1799:
                                    revert with 'NH{q', 17
                                if 10^18 * _1799 > -(_1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1799) + (_1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_1957] and -((10^18 * _1799) + (_1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1957]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_1957]) - ((10^18 * _1799) + (_1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1957]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_1957]) + (-1 * (10^18 * _1799) + (_1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1799 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_1957]) + 5 * 10^17 / 10^18
                        else:
                            if False and mem[_1445 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1445 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1445 + 50 len 14] and 100000 > -1 / mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 50 len 14] / 100000 != mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 50 len 14] < 100000 * mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / 100000 * mem[_1445 + 50 len 14]
                            if mem[_1413 + 96] == 2:
                                _1844 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1844))
                                staticcall address(_1844).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1894 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1926 = mem[_1894]
                                require mem[_1894] == mem[_1894]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1844))
                                staticcall address(_1844).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2062 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2062] == mem[_2062]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1926 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1926 and 10^18 > -1 / _1926:
                                    revert with 'NH{q', 17
                                if 10^18 * _1926 > -(_1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1926) + (_1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2062] and -((10^18 * _1926) + (_1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2062]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2062]) - ((10^18 * _1926) + (_1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2062]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2062]) + (-1 * (10^18 * _1926) + (_1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1926 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2062]) + 5 * 10^17 / 10^18
                    else:
                        if mem[(32 * idx) + _621 + 32] and -mem[_1413 + 64] + 100000 > -1 / mem[(32 * idx) + _621 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1413 + 64] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) / -mem[_1413 + 64] + 100000 != mem[(32 * idx) + _621 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1445 + 18 len 14]:
                            if mem[_1445 + 50 len 14] and 100000 > -1 / mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 50 len 14] / 100000 != mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1445 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1445 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = 0 / (100000 * mem[_1445 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1846 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1846))
                                staticcall address(_1846).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1895 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1927 = mem[_1895]
                                require mem[_1895] == mem[_1895]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1846))
                                staticcall address(_1846).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2063 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2063] == mem[_2063]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _1927 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _1927 and 10^18 > -1 / _1927:
                                    revert with 'NH{q', 17
                                if 10^18 * _1927 > -(_1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _1927) + (_1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2063] and -((10^18 * _1927) + (_1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2063]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2063]) - ((10^18 * _1927) + (_1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2063]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2063]) + (-1 * (10^18 * _1927) + (_1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _1927 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2063]) + 5 * 10^17 / 10^18
                        else:
                            if (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) and mem[_1445 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1445 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _621 + 32] * mem[_1445 + 18 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1445 + 18 len 14]) / mem[_1445 + 18 len 14] != (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1445 + 50 len 14] and 100000 > -1 / mem[_1445 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_1445 + 50 len 14] / 100000 != mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_1445 + 50 len 14] > (-100000 * mem[(32 * idx) + _621 + 32]) + (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_1445 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) < 100000 * mem[_1445 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_1445 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_621]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _621 + 32] = (100000 * mem[(32 * idx) + _621 + 32] * mem[_1445 + 18 len 14]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32] * mem[_1445 + 18 len 14]) / (100000 * mem[_1445 + 50 len 14]) + (100000 * mem[(32 * idx) + _621 + 32]) - (mem[_1413 + 64] * mem[(32 * idx) + _621 + 32])
                            if mem[_1413 + 96] == 2:
                                _1958 = mem[_1413 + 32]
                                mem[mem[64] + 4] = address(s)
                                require ext_code.size(address(_1958))
                                staticcall address(_1958).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(s)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2007 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2047 = mem[_2007]
                                require mem[_2007] == mem[_2007]
                                mem[mem[64] + 4] = address(_1414)
                                require ext_code.size(address(_1958))
                                staticcall address(_1958).getBalance(address rg1) with:
                                        gas gas_remaining wei
                                       args address(_1414)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2151 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2151] == mem[_2151]
                                if idx >= mem[_621]:
                                    revert with 'NH{q', 50
                                if mem[_1413 + 64] and 10^13 > -1 / mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if 10^18 < 10^13 * mem[_1413 + 64]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + _621 + 32] and (-1 * 10^13 * mem[_1413 + 64]) + 10^18 > -1 / mem[(32 * idx) + _621 + 32]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[(32 * idx) + _621 + 32]) - (10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if _2047 > -((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if _2047 and 10^18 > -1 / _2047:
                                    revert with 'NH{q', 17
                                if 10^18 * _2047 > -(_2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                    revert with 'NH{q', 17
                                if not _2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 18
                                if 10^18 < (10^18 * _2047) + (_2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18):
                                    revert with 'NH{q', 17
                                if mem[_2151] and -((10^18 * _2047) + (_2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_2151]:
                                    revert with 'NH{q', 17
                                if (10^18 * mem[_2151]) - ((10^18 * _2047) + (_2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2151]) > -500000000000000001:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_621]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _621 + 32] = (10^18 * mem[_2151]) + (-1 * (10^18 * _2047) + (_2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) / 2) / _2047 + ((10^18 * mem[(32 * idx) + _621 + 32]) + (-1 * 10^13 * mem[_1413 + 64] * mem[(32 * idx) + _621 + 32]) + 5 * 10^17 / 10^18) * mem[_2151]) + 5 * 10^17 / 10^18
        if idx == -1:
            revert with 'NH{q', 17
        _1405 = mem[96]
        idx = idx + 1
        s = _1414
        continue 
    mem[mem[64]] = 32
    _1424 = mem[_621]
    mem[mem[64] + 32] = mem[_621]
    mem[mem[64] + 64 len 32 * _1424] = mem[_621 + 32 len 32 * _1424]
    return 32, mem[mem[64] + 32 len (32 * _1424) + 32]
}



}
