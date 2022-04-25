contract main {




// =====================  Runtime code  =====================


#
#  - sub_399d71fd(?)
#  - sub_3b02da01(?)
#  - sub_64b7b71b(?)
#  - sub_a7c3ed23(?)
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

function sub_4e27b7d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
        return 0
    return 1
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
    call arg1.transfer(address rg1, uint256 rg2) with:
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
        if slaveAddress != msg.sender:
            revert with 0, 'not allowed'
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

function sub_790396dd(?) {
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
    require cd[68] + (160 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require calldata.size - s >= 160
        _806 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require cd[s] == address(cd[s])
        mem[_806] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_806 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_806 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_806 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_806 + 128] = cd[(s + 128)]
        mem[t] = _806
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    _805 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _807 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _805 + 1) + 32
    if not _805 + 1:
        if 0 >= mem[_807]:
            revert with 'NH{q', 50
        mem[_807 + 32] = cd[4]
        _1608 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _1608:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1613 = mem[(32 * idx) + 128]
            _1614 = mem[mem[(32 * idx) + 128]]
            if mem[mem[(32 * idx) + 128] + 128] == 1:
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
                    _1657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1657] == mem[_1657 + 18 len 14]
                    require mem[_1657 + 32] == mem[_1657 + 50 len 14]
                    require mem[_1657 + 64] == mem[_1657 + 92 len 4]
                    if idx >= mem[_807]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _807 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_1657 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1657 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[_1613 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_1613 + 96] + 10000:
                            if mem[_1657 + 50 len 14]:
                                if False and mem[_1657 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1657 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1657 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_1657 + 18 len 14] and 10000 > -1 / mem[_1657 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1657 + 18 len 14] / 10000 != mem[_1657 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1657 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1657 + 18 len 14] < 10000 * mem[_1657 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_1657 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1657 + 18 len 14]
                        else:
                            if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1613 + 96] + 10000:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1657 + 50 len 14]:
                                if mem[_1657 + 18 len 14] and 10000 > -1 / mem[_1657 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1657 + 18 len 14] / 10000 != mem[_1657 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1657 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1657 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1657 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1657 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1657 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                            else:
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1657 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1657 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1657 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1657 + 50 len 14]) / mem[_1657 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1657 + 18 len 14] and 10000 > -1 / mem[_1657 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1657 + 18 len 14] / 10000 != mem[_1657 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1657 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1657 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1657 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1657 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1657 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1657 + 50 len 14]) / (10000 * mem[_1657 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                    else:
                        if mem[_1657 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1657 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[_1613 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_1613 + 96] + 10000:
                            if mem[_1657 + 18 len 14]:
                                if False and mem[_1657 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1657 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1657 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_1657 + 50 len 14] and 10000 > -1 / mem[_1657 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1657 + 50 len 14] / 10000 != mem[_1657 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1657 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1657 + 50 len 14] < 10000 * mem[_1657 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_1657 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1657 + 50 len 14]
                        else:
                            if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1613 + 96] + 10000:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1657 + 18 len 14]:
                                if mem[_1657 + 50 len 14] and 10000 > -1 / mem[_1657 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1657 + 50 len 14] / 10000 != mem[_1657 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1657 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1657 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1657 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1657 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1657 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                            else:
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1657 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1657 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1657 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1657 + 18 len 14]) / mem[_1657 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1657 + 50 len 14] and 10000 > -1 / mem[_1657 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1657 + 50 len 14] / 10000 != mem[_1657 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1657 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1657 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1657 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1657 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1657 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1657 + 18 len 14]) / (10000 * mem[_1657 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                else:
                    if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1658] == mem[_1658 + 18 len 14]
                    require mem[_1658 + 32] == mem[_1658 + 50 len 14]
                    require mem[_1658 + 64] == mem[_1658 + 92 len 4]
                    if idx >= mem[_807]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _807 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_1614):
                        if mem[_1658 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1658 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[_1613 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_1613 + 96] + 10000:
                            if mem[_1658 + 50 len 14]:
                                if False and mem[_1658 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1658 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1658 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_1658 + 18 len 14] and 10000 > -1 / mem[_1658 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1658 + 18 len 14] / 10000 != mem[_1658 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1658 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1658 + 18 len 14] < 10000 * mem[_1658 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_1658 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1658 + 18 len 14]
                        else:
                            if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1613 + 96] + 10000:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1658 + 50 len 14]:
                                if mem[_1658 + 18 len 14] and 10000 > -1 / mem[_1658 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1658 + 18 len 14] / 10000 != mem[_1658 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1658 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1658 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1658 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1658 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1658 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                            else:
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1658 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1658 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1658 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1658 + 50 len 14]) / mem[_1658 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1658 + 18 len 14] and 10000 > -1 / mem[_1658 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1658 + 18 len 14] / 10000 != mem[_1658 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1658 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1658 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1658 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1658 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1658 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1658 + 50 len 14]) / (10000 * mem[_1658 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                    else:
                        if mem[_1658 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_1658 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[_1613 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_1613 + 96] + 10000:
                            if mem[_1658 + 18 len 14]:
                                if False and mem[_1658 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_1658 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_1658 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_1658 + 50 len 14] and 10000 > -1 / mem[_1658 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1658 + 50 len 14] / 10000 != mem[_1658 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1658 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1658 + 50 len 14] < 10000 * mem[_1658 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 10000 * mem[_1658 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1658 + 50 len 14]
                        else:
                            if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_1613 + 96] + 10000:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_1658 + 18 len 14]:
                                if mem[_1658 + 50 len 14] and 10000 > -1 / mem[_1658 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1658 + 50 len 14] / 10000 != mem[_1658 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1658 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1658 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1658 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1658 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1658 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                            else:
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1658 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_1658 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1658 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1658 + 18 len 14]) / mem[_1658 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_1658 + 50 len 14] and 10000 > -1 / mem[_1658 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1658 + 50 len 14] / 10000 != mem[_1658 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1658 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_1658 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1658 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * mem[_1658 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1658 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1658 + 18 len 14]) / (10000 * mem[_1658 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 128] != 5:
                    if mem[mem[(32 * idx) + 128] + 128] == 2:
                        _1631 = mem[mem[(32 * idx) + 128] + 32]
                        mem[mem[64] + 4] = address(s)
                        require ext_code.size(address(_1631))
                        staticcall address(_1631).getBalance(address rg1) with:
                                gas gas_remaining wei
                               args address(s)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1693 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1722 = mem[_1693]
                        require mem[_1693] == mem[_1693]
                        mem[mem[64] + 4] = address(_1614)
                        require ext_code.size(address(_1631))
                        staticcall address(_1631).getBalance(address rg1) with:
                                gas gas_remaining wei
                               args address(_1614)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1784 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1784] == mem[_1784]
                        if idx >= mem[_807]:
                            revert with 'NH{q', 50
                        if mem[_1613 + 96] and 10^13 > -1 / mem[_1613 + 96]:
                            revert with 'NH{q', 17
                        if 10^18 < 10^13 * mem[_1613 + 96]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + _807 + 32] and (-1 * 10^13 * mem[_1613 + 96]) + 10^18 > -1 / mem[(32 * idx) + _807 + 32]:
                            revert with 'NH{q', 17
                        if (10^18 * mem[(32 * idx) + _807 + 32]) - (10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) > -500000000000000001:
                            revert with 'NH{q', 17
                        if _1722 > -((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) - 1:
                            revert with 'NH{q', 17
                        if _1722 and 10^18 > -1 / _1722:
                            revert with 'NH{q', 17
                        if 10^18 * _1722 > -(_1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                            revert with 'NH{q', 17
                        if not _1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                            revert with 'NH{q', 18
                        if 10^18 < (10^18 * _1722) + (_1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                            revert with 'NH{q', 17
                        if mem[_1784] and -((10^18 * _1722) + (_1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1784]:
                            revert with 'NH{q', 17
                        if (10^18 * mem[_1784]) - ((10^18 * _1722) + (_1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1784]) > -500000000000000001:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = (10^18 * mem[_1784]) + (-1 * (10^18 * _1722) + (_1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1722 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1784]) + 5 * 10^17 / 10^18
                    else:
                        require mem[mem[(32 * idx) + 128] + 128] == 5
                        require mem[mem[(32 * idx) + 128] + 76 len 20] != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
                        _1674 = mem[mem[(32 * idx) + 128] + 64]
                        _1680 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1680]:
                            revert with 'NH{q', 50
                        mem[_1680 + 32] = address(s)
                        if 1 >= mem[_1680]:
                            revert with 'NH{q', 50
                        mem[_1680 + 64] = address(_1614)
                        if idx >= mem[_807]:
                            revert with 'NH{q', 50
                        _1720 = mem[(32 * idx) + _807 + 32]
                        mem[_1680 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1680 + 100] = _1720
                        mem[_1680 + 132] = 64
                        mem[_1680 + 164] = mem[_1680]
                        s = 0
                        t = _1680 + 32
                        u = _1680 + 196
                        while s < mem[_1680]:
                            mem[u] = mem[t + 12 len 20]
                            _1608 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_1674))
                        staticcall address(_1674).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1680 + (32 * mem[_1680]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2418 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2422 = mem[_2418]
                        require mem[_2418] <= test266151307()
                        require _2418 + mem[_2418] + 31 < _2418 + return_data.size
                        _2426 = mem[_2418 + mem[_2418]]
                        if mem[_2418 + mem[_2418]] > test266151307():
                            revert with 'NH{q', 65
                        if _2418 + ceil32(return_data.size) + floor32(mem[_2418 + mem[_2418]]) + 1 > test266151307() or floor32(mem[_2418 + mem[_2418]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2418 + ceil32(return_data.size) + floor32(mem[_2418 + mem[_2418]]) + 1
                        mem[_2418 + ceil32(return_data.size)] = _2426
                        require _2422 + (32 * _2426) + 32 <= return_data.size
                        s = 0
                        t = _2418 + _2422 + 32
                        u = _2418 + ceil32(return_data.size) + 32
                        while s < _2426:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _1608 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _2426 < 1:
                            revert with 'NH{q', 17
                        if _2426 - 1 >= _2426:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = mem[(32 * _2426 - 1) + _2418 + ceil32(return_data.size) + 32]
                else:
                    if mem[mem[(32 * idx) + 128] + 76 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
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
                            _1714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1714] == mem[_1714 + 18 len 14]
                            require mem[_1714 + 32] == mem[_1714 + 50 len 14]
                            require mem[_1714 + 64] == mem[_1714 + 92 len 4]
                            if idx >= mem[_807]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _807 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if mem[_1714 + 18 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_1714 + 50 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_1613 + 96]:
                                    revert with 'NH{q', 17
                                if not -mem[_1613 + 96] + 10000:
                                    if mem[_1714 + 50 len 14]:
                                        if False and mem[_1714 + 50 len 14] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_1714 + 50 len 14]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_1714 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1714 + 18 len 14] and 10000 > -1 / mem[_1714 + 18 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1714 + 18 len 14] / 10000 != mem[_1714 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1714 + 18 len 14] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1714 + 18 len 14] < 10000 * mem[_1714 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_1714 + 18 len 14]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1714 + 18 len 14]
                                else:
                                    if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_1613 + 96] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_1714 + 50 len 14]:
                                        if mem[_1714 + 18 len 14] and 10000 > -1 / mem[_1714 + 18 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1714 + 18 len 14] / 10000 != mem[_1714 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1714 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1714 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1714 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1714 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1714 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1714 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_1714 + 50 len 14]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1714 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1714 + 50 len 14]) / mem[_1714 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_1714 + 18 len 14] and 10000 > -1 / mem[_1714 + 18 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1714 + 18 len 14] / 10000 != mem[_1714 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1714 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1714 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1714 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1714 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1714 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1714 + 50 len 14]) / (10000 * mem[_1714 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                            else:
                                if mem[_1714 + 50 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_1714 + 18 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_1613 + 96]:
                                    revert with 'NH{q', 17
                                if not -mem[_1613 + 96] + 10000:
                                    if mem[_1714 + 18 len 14]:
                                        if False and mem[_1714 + 18 len 14] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_1714 + 18 len 14]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_1714 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1714 + 50 len 14] and 10000 > -1 / mem[_1714 + 50 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1714 + 50 len 14] / 10000 != mem[_1714 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1714 + 50 len 14] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1714 + 50 len 14] < 10000 * mem[_1714 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_1714 + 50 len 14]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1714 + 50 len 14]
                                else:
                                    if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_1613 + 96] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_1714 + 18 len 14]:
                                        if mem[_1714 + 50 len 14] and 10000 > -1 / mem[_1714 + 50 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1714 + 50 len 14] / 10000 != mem[_1714 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1714 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1714 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1714 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1714 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1714 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1714 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_1714 + 18 len 14]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1714 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1714 + 18 len 14]) / mem[_1714 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_1714 + 50 len 14] and 10000 > -1 / mem[_1714 + 50 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1714 + 50 len 14] / 10000 != mem[_1714 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1714 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1714 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1714 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1714 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1714 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1714 + 18 len 14]) / (10000 * mem[_1714 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                        else:
                            if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                            staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1715 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1715] == mem[_1715 + 18 len 14]
                            require mem[_1715 + 32] == mem[_1715 + 50 len 14]
                            require mem[_1715 + 64] == mem[_1715 + 92 len 4]
                            if idx >= mem[_807]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _807 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(_1614):
                                if mem[_1715 + 18 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_1715 + 50 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_1613 + 96]:
                                    revert with 'NH{q', 17
                                if not -mem[_1613 + 96] + 10000:
                                    if mem[_1715 + 50 len 14]:
                                        if False and mem[_1715 + 50 len 14] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_1715 + 50 len 14]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_1715 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1715 + 18 len 14] and 10000 > -1 / mem[_1715 + 18 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1715 + 18 len 14] / 10000 != mem[_1715 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1715 + 18 len 14] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1715 + 18 len 14] < 10000 * mem[_1715 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_1715 + 18 len 14]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1715 + 18 len 14]
                                else:
                                    if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_1613 + 96] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_1715 + 50 len 14]:
                                        if mem[_1715 + 18 len 14] and 10000 > -1 / mem[_1715 + 18 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1715 + 18 len 14] / 10000 != mem[_1715 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1715 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1715 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1715 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1715 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1715 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1715 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_1715 + 50 len 14]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1715 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1715 + 50 len 14]) / mem[_1715 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_1715 + 18 len 14] and 10000 > -1 / mem[_1715 + 18 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1715 + 18 len 14] / 10000 != mem[_1715 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1715 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1715 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1715 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1715 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1715 + 50 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1715 + 50 len 14]) / (10000 * mem[_1715 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                            else:
                                if mem[_1715 + 50 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_1715 + 18 len 14] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_1613 + 96]:
                                    revert with 'NH{q', 17
                                if not -mem[_1613 + 96] + 10000:
                                    if mem[_1715 + 18 len 14]:
                                        if False and mem[_1715 + 18 len 14] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_1715 + 18 len 14]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_1715 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1715 + 50 len 14] and 10000 > -1 / mem[_1715 + 50 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1715 + 50 len 14] / 10000 != mem[_1715 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1715 + 50 len 14] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1715 + 50 len 14] < 10000 * mem[_1715 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_1715 + 50 len 14]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1715 + 50 len 14]
                                else:
                                    if mem[(32 * idx) + _807 + 32] and -mem[_1613 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_1613 + 96] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1613 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_1715 + 18 len 14]:
                                        if mem[_1715 + 50 len 14] and 10000 > -1 / mem[_1715 + 50 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1715 + 50 len 14] / 10000 != mem[_1715 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1715 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1715 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1715 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1715 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1715 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1715 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_1715 + 18 len 14]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1715 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1715 + 18 len 14]) / mem[_1715 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_1715 + 50 len 14] and 10000 > -1 / mem[_1715 + 50 len 14]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_1715 + 50 len 14] / 10000 != mem[_1715 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_1715 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_1715 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1715 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_1715 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_807]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1715 + 18 len 14]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1715 + 18 len 14]) / (10000 * mem[_1715 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1613 + 96] * mem[(32 * idx) + _807 + 32])
                    else:
                        if mem[mem[(32 * idx) + 128] + 128] == 2:
                            _1660 = mem[mem[(32 * idx) + 128] + 32]
                            mem[mem[64] + 4] = address(s)
                            require ext_code.size(address(_1660))
                            staticcall address(_1660).getBalance(address rg1) with:
                                    gas gas_remaining wei
                                   args address(s)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1735 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1754 = mem[_1735]
                            require mem[_1735] == mem[_1735]
                            mem[mem[64] + 4] = address(_1614)
                            require ext_code.size(address(_1660))
                            staticcall address(_1660).getBalance(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1614)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1830] == mem[_1830]
                            if idx >= mem[_807]:
                                revert with 'NH{q', 50
                            if mem[_1613 + 96] and 10^13 > -1 / mem[_1613 + 96]:
                                revert with 'NH{q', 17
                            if 10^18 < 10^13 * mem[_1613 + 96]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + _807 + 32] and (-1 * 10^13 * mem[_1613 + 96]) + 10^18 > -1 / mem[(32 * idx) + _807 + 32]:
                                revert with 'NH{q', 17
                            if (10^18 * mem[(32 * idx) + _807 + 32]) - (10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) > -500000000000000001:
                                revert with 'NH{q', 17
                            if _1754 > -((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) - 1:
                                revert with 'NH{q', 17
                            if _1754 and 10^18 > -1 / _1754:
                                revert with 'NH{q', 17
                            if 10^18 * _1754 > -(_1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                                revert with 'NH{q', 17
                            if not _1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                                revert with 'NH{q', 18
                            if 10^18 < (10^18 * _1754) + (_1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                                revert with 'NH{q', 17
                            if mem[_1830] and -((10^18 * _1754) + (_1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1830]:
                                revert with 'NH{q', 17
                            if (10^18 * mem[_1830]) - ((10^18 * _1754) + (_1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1830]) > -500000000000000001:
                                revert with 'NH{q', 17
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = (10^18 * mem[_1830]) + (-1 * (10^18 * _1754) + (_1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1754 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1613 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1830]) + 5 * 10^17 / 10^18
                        else:
                            require mem[mem[(32 * idx) + 128] + 128] == 5
                            require mem[mem[(32 * idx) + 128] + 76 len 20] != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
                            _1713 = mem[mem[(32 * idx) + 128] + 64]
                            _1723 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_1723]:
                                revert with 'NH{q', 50
                            mem[_1723 + 32] = address(s)
                            if 1 >= mem[_1723]:
                                revert with 'NH{q', 50
                            mem[_1723 + 64] = address(_1614)
                            if idx >= mem[_807]:
                                revert with 'NH{q', 50
                            _1752 = mem[(32 * idx) + _807 + 32]
                            mem[_1723 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1723 + 100] = _1752
                            mem[_1723 + 132] = 64
                            mem[_1723 + 164] = mem[_1723]
                            s = 0
                            t = _1723 + 32
                            u = _1723 + 196
                            while s < mem[_1723]:
                                mem[u] = mem[t + 12 len 20]
                                _1608 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_1713))
                            staticcall address(_1713).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1723 + (32 * mem[_1723]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2419 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2423 = mem[_2419]
                            require mem[_2419] <= test266151307()
                            require _2419 + mem[_2419] + 31 < _2419 + return_data.size
                            _2427 = mem[_2419 + mem[_2419]]
                            if mem[_2419 + mem[_2419]] > test266151307():
                                revert with 'NH{q', 65
                            if _2419 + ceil32(return_data.size) + floor32(mem[_2419 + mem[_2419]]) + 1 > test266151307() or floor32(mem[_2419 + mem[_2419]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2419 + ceil32(return_data.size) + floor32(mem[_2419 + mem[_2419]]) + 1
                            mem[_2419 + ceil32(return_data.size)] = _2427
                            require _2423 + (32 * _2427) + 32 <= return_data.size
                            s = 0
                            t = _2419 + _2423 + 32
                            u = _2419 + ceil32(return_data.size) + 32
                            while s < _2427:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _1608 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _2427 < 1:
                                revert with 'NH{q', 17
                            if _2427 - 1 >= _2427:
                                revert with 'NH{q', 50
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = mem[(32 * _2427 - 1) + _2419 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            _1608 = mem[96]
            idx = idx + 1
            s = _1614
            continue 
        mem[mem[64]] = 32
        _1624 = mem[_807]
        mem[mem[64] + 32] = mem[_807]
        mem[mem[64] + 64 len 32 * _1624] = mem[_807 + 32 len 32 * _1624]
        return 32, mem[mem[64] + 32 len (32 * _1624) + 32]
    mem[_807 + 32 len 32 * _805 + 1] = call.data[calldata.size len 32 * _805 + 1]
    if 0 >= mem[_807]:
        revert with 'NH{q', 50
    mem[_807 + 32] = cd[4]
    _1609 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _1609:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1617 = mem[(32 * idx) + 128]
        _1618 = mem[mem[(32 * idx) + 128]]
        if mem[mem[(32 * idx) + 128] + 128] == 1:
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
                _1663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1663] == mem[_1663 + 18 len 14]
                require mem[_1663 + 32] == mem[_1663 + 50 len 14]
                require mem[_1663 + 64] == mem[_1663 + 92 len 4]
                if idx >= mem[_807]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _807 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(s):
                    if mem[_1663 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1663 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 10000 < mem[_1617 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_1617 + 96] + 10000:
                        if mem[_1663 + 50 len 14]:
                            if False and mem[_1663 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1663 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1663 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_1663 + 18 len 14] and 10000 > -1 / mem[_1663 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1663 + 18 len 14] / 10000 != mem[_1663 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_1663 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1663 + 18 len 14] < 10000 * mem[_1663 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_1663 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1663 + 18 len 14]
                    else:
                        if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1617 + 96] + 10000:
                            revert with 'NH{q', 18
                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1663 + 50 len 14]:
                            if mem[_1663 + 18 len 14] and 10000 > -1 / mem[_1663 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1663 + 18 len 14] / 10000 != mem[_1663 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1663 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1663 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1663 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1663 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1663 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                        else:
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1663 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1663 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1663 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1663 + 50 len 14]) / mem[_1663 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1663 + 18 len 14] and 10000 > -1 / mem[_1663 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1663 + 18 len 14] / 10000 != mem[_1663 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1663 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1663 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1663 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1663 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1663 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1663 + 50 len 14]) / (10000 * mem[_1663 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                else:
                    if mem[_1663 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1663 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 10000 < mem[_1617 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_1617 + 96] + 10000:
                        if mem[_1663 + 18 len 14]:
                            if False and mem[_1663 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1663 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1663 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_1663 + 50 len 14] and 10000 > -1 / mem[_1663 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1663 + 50 len 14] / 10000 != mem[_1663 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_1663 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1663 + 50 len 14] < 10000 * mem[_1663 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_1663 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1663 + 50 len 14]
                    else:
                        if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1617 + 96] + 10000:
                            revert with 'NH{q', 18
                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1663 + 18 len 14]:
                            if mem[_1663 + 50 len 14] and 10000 > -1 / mem[_1663 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1663 + 50 len 14] / 10000 != mem[_1663 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1663 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1663 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1663 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1663 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1663 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                        else:
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1663 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1663 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1663 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1663 + 18 len 14]) / mem[_1663 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1663 + 50 len 14] and 10000 > -1 / mem[_1663 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1663 + 50 len 14] / 10000 != mem[_1663 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1663 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1663 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1663 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1663 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1663 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1663 + 18 len 14]) / (10000 * mem[_1663 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
            else:
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1664 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1664] == mem[_1664 + 18 len 14]
                require mem[_1664 + 32] == mem[_1664 + 50 len 14]
                require mem[_1664 + 64] == mem[_1664 + 92 len 4]
                if idx >= mem[_807]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _807 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(_1618):
                    if mem[_1664 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1664 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 10000 < mem[_1617 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_1617 + 96] + 10000:
                        if mem[_1664 + 50 len 14]:
                            if False and mem[_1664 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1664 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1664 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_1664 + 18 len 14] and 10000 > -1 / mem[_1664 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1664 + 18 len 14] / 10000 != mem[_1664 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_1664 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1664 + 18 len 14] < 10000 * mem[_1664 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_1664 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1664 + 18 len 14]
                    else:
                        if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1617 + 96] + 10000:
                            revert with 'NH{q', 18
                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1664 + 50 len 14]:
                            if mem[_1664 + 18 len 14] and 10000 > -1 / mem[_1664 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1664 + 18 len 14] / 10000 != mem[_1664 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1664 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1664 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1664 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1664 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1664 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                        else:
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1664 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1664 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1664 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1664 + 50 len 14]) / mem[_1664 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1664 + 18 len 14] and 10000 > -1 / mem[_1664 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1664 + 18 len 14] / 10000 != mem[_1664 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1664 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1664 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1664 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1664 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1664 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1664 + 50 len 14]) / (10000 * mem[_1664 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                else:
                    if mem[_1664 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_1664 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 10000 < mem[_1617 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_1617 + 96] + 10000:
                        if mem[_1664 + 18 len 14]:
                            if False and mem[_1664 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_1664 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_1664 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_1664 + 50 len 14] and 10000 > -1 / mem[_1664 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1664 + 50 len 14] / 10000 != mem[_1664 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[_1664 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_1664 + 50 len 14] < 10000 * mem[_1664 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 10000 * mem[_1664 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1664 + 50 len 14]
                    else:
                        if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_1617 + 96] + 10000:
                            revert with 'NH{q', 18
                        if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_1664 + 18 len 14]:
                            if mem[_1664 + 50 len 14] and 10000 > -1 / mem[_1664 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1664 + 50 len 14] / 10000 != mem[_1664 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1664 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1664 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1664 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1664 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1664 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                        else:
                            if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1664 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_1664 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1664 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1664 + 18 len 14]) / mem[_1664 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_1664 + 50 len 14] and 10000 > -1 / mem[_1664 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 10000 * mem[_1664 + 50 len 14] / 10000 != mem[_1664 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1664 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_1664 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1664 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[_1664 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_807]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1664 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1664 + 18 len 14]) / (10000 * mem[_1664 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
        else:
            if mem[mem[(32 * idx) + 128] + 128] != 5:
                if mem[mem[(32 * idx) + 128] + 128] == 2:
                    _1634 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = address(s)
                    require ext_code.size(address(_1634))
                    staticcall address(_1634).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1727 = mem[_1703]
                    require mem[_1703] == mem[_1703]
                    mem[mem[64] + 4] = address(_1618)
                    require ext_code.size(address(_1634))
                    staticcall address(_1634).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(_1618)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1785] == mem[_1785]
                    if idx >= mem[_807]:
                        revert with 'NH{q', 50
                    if mem[_1617 + 96] and 10^13 > -1 / mem[_1617 + 96]:
                        revert with 'NH{q', 17
                    if 10^18 < 10^13 * mem[_1617 + 96]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + _807 + 32] and (-1 * 10^13 * mem[_1617 + 96]) + 10^18 > -1 / mem[(32 * idx) + _807 + 32]:
                        revert with 'NH{q', 17
                    if (10^18 * mem[(32 * idx) + _807 + 32]) - (10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) > -500000000000000001:
                        revert with 'NH{q', 17
                    if _1727 > -((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if _1727 and 10^18 > -1 / _1727:
                        revert with 'NH{q', 17
                    if 10^18 * _1727 > -(_1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                        revert with 'NH{q', 17
                    if not _1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                        revert with 'NH{q', 18
                    if 10^18 < (10^18 * _1727) + (_1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                        revert with 'NH{q', 17
                    if mem[_1785] and -((10^18 * _1727) + (_1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1785]:
                        revert with 'NH{q', 17
                    if (10^18 * mem[_1785]) - ((10^18 * _1727) + (_1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1785]) > -500000000000000001:
                        revert with 'NH{q', 17
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_807]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _807 + 32] = (10^18 * mem[_1785]) + (-1 * (10^18 * _1727) + (_1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1727 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1785]) + 5 * 10^17 / 10^18
                else:
                    require mem[mem[(32 * idx) + 128] + 128] == 5
                    require mem[mem[(32 * idx) + 128] + 76 len 20] != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
                    _1677 = mem[mem[(32 * idx) + 128] + 64]
                    _1684 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1684]:
                        revert with 'NH{q', 50
                    mem[_1684 + 32] = address(s)
                    if 1 >= mem[_1684]:
                        revert with 'NH{q', 50
                    mem[_1684 + 64] = address(_1618)
                    if idx >= mem[_807]:
                        revert with 'NH{q', 50
                    _1725 = mem[(32 * idx) + _807 + 32]
                    mem[_1684 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1684 + 100] = _1725
                    mem[_1684 + 132] = 64
                    mem[_1684 + 164] = mem[_1684]
                    s = 0
                    t = _1684 + 32
                    u = _1684 + 196
                    while s < mem[_1684]:
                        mem[u] = mem[t + 12 len 20]
                        _1609 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_1677))
                    staticcall address(_1677).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1684 + (32 * mem[_1684]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2420 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2424 = mem[_2420]
                    require mem[_2420] <= test266151307()
                    require _2420 + mem[_2420] + 31 < _2420 + return_data.size
                    _2428 = mem[_2420 + mem[_2420]]
                    if mem[_2420 + mem[_2420]] > test266151307():
                        revert with 'NH{q', 65
                    if _2420 + ceil32(return_data.size) + floor32(mem[_2420 + mem[_2420]]) + 1 > test266151307() or floor32(mem[_2420 + mem[_2420]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2420 + ceil32(return_data.size) + floor32(mem[_2420 + mem[_2420]]) + 1
                    mem[_2420 + ceil32(return_data.size)] = _2428
                    require _2424 + (32 * _2428) + 32 <= return_data.size
                    s = 0
                    t = _2420 + _2424 + 32
                    u = _2420 + ceil32(return_data.size) + 32
                    while s < _2428:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _1609 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _2428 < 1:
                        revert with 'NH{q', 17
                    if _2428 - 1 >= _2428:
                        revert with 'NH{q', 50
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_807]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _807 + 32] = mem[(32 * _2428 - 1) + _2420 + ceil32(return_data.size) + 32]
            else:
                if mem[mem[(32 * idx) + 128] + 76 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
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
                        _1718 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1718] == mem[_1718 + 18 len 14]
                        require mem[_1718 + 32] == mem[_1718 + 50 len 14]
                        require mem[_1718 + 64] == mem[_1718 + 92 len 4]
                        if idx >= mem[_807]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _807 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(s):
                            if mem[_1718 + 18 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_1718 + 50 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_1617 + 96]:
                                revert with 'NH{q', 17
                            if not -mem[_1617 + 96] + 10000:
                                if mem[_1718 + 50 len 14]:
                                    if False and mem[_1718 + 50 len 14] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_1718 + 50 len 14]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_1718 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_1718 + 18 len 14] and 10000 > -1 / mem[_1718 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1718 + 18 len 14] / 10000 != mem[_1718 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1718 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1718 + 18 len 14] < 10000 * mem[_1718 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_1718 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1718 + 18 len 14]
                            else:
                                if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_1617 + 96] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_1718 + 50 len 14]:
                                    if mem[_1718 + 18 len 14] and 10000 > -1 / mem[_1718 + 18 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1718 + 18 len 14] / 10000 != mem[_1718 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1718 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1718 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1718 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1718 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1718 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1718 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_1718 + 50 len 14]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1718 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1718 + 50 len 14]) / mem[_1718 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1718 + 18 len 14] and 10000 > -1 / mem[_1718 + 18 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1718 + 18 len 14] / 10000 != mem[_1718 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1718 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1718 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1718 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1718 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1718 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1718 + 50 len 14]) / (10000 * mem[_1718 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                        else:
                            if mem[_1718 + 50 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_1718 + 18 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_1617 + 96]:
                                revert with 'NH{q', 17
                            if not -mem[_1617 + 96] + 10000:
                                if mem[_1718 + 18 len 14]:
                                    if False and mem[_1718 + 18 len 14] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_1718 + 18 len 14]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_1718 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_1718 + 50 len 14] and 10000 > -1 / mem[_1718 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1718 + 50 len 14] / 10000 != mem[_1718 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1718 + 50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1718 + 50 len 14] < 10000 * mem[_1718 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_1718 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1718 + 50 len 14]
                            else:
                                if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_1617 + 96] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_1718 + 18 len 14]:
                                    if mem[_1718 + 50 len 14] and 10000 > -1 / mem[_1718 + 50 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1718 + 50 len 14] / 10000 != mem[_1718 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1718 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1718 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1718 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1718 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1718 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1718 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_1718 + 18 len 14]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1718 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1718 + 18 len 14]) / mem[_1718 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1718 + 50 len 14] and 10000 > -1 / mem[_1718 + 50 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1718 + 50 len 14] / 10000 != mem[_1718 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1718 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1718 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1718 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1718 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1718 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1718 + 18 len 14]) / (10000 * mem[_1718 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                    else:
                        if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1719 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1719] == mem[_1719 + 18 len 14]
                        require mem[_1719 + 32] == mem[_1719 + 50 len 14]
                        require mem[_1719 + 64] == mem[_1719 + 92 len 4]
                        if idx >= mem[_807]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _807 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(_1618):
                            if mem[_1719 + 18 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_1719 + 50 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_1617 + 96]:
                                revert with 'NH{q', 17
                            if not -mem[_1617 + 96] + 10000:
                                if mem[_1719 + 50 len 14]:
                                    if False and mem[_1719 + 50 len 14] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_1719 + 50 len 14]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_1719 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_1719 + 18 len 14] and 10000 > -1 / mem[_1719 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1719 + 18 len 14] / 10000 != mem[_1719 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1719 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1719 + 18 len 14] < 10000 * mem[_1719 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_1719 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1719 + 18 len 14]
                            else:
                                if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_1617 + 96] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_1719 + 50 len 14]:
                                    if mem[_1719 + 18 len 14] and 10000 > -1 / mem[_1719 + 18 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1719 + 18 len 14] / 10000 != mem[_1719 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1719 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1719 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1719 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1719 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1719 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1719 + 50 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_1719 + 50 len 14]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1719 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1719 + 50 len 14]) / mem[_1719 + 50 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1719 + 18 len 14] and 10000 > -1 / mem[_1719 + 18 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1719 + 18 len 14] / 10000 != mem[_1719 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1719 + 18 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1719 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1719 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1719 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1719 + 50 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1719 + 50 len 14]) / (10000 * mem[_1719 + 18 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                        else:
                            if mem[_1719 + 50 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_1719 + 18 len 14] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_1617 + 96]:
                                revert with 'NH{q', 17
                            if not -mem[_1617 + 96] + 10000:
                                if mem[_1719 + 18 len 14]:
                                    if False and mem[_1719 + 18 len 14] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_1719 + 18 len 14]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_1719 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_1719 + 50 len 14] and 10000 > -1 / mem[_1719 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1719 + 50 len 14] / 10000 != mem[_1719 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1719 + 50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_1719 + 50 len 14] < 10000 * mem[_1719 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_1719 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_807]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _807 + 32] = 0 / 10000 * mem[_1719 + 50 len 14]
                            else:
                                if mem[(32 * idx) + _807 + 32] and -mem[_1617 + 96] + 10000 > -1 / mem[(32 * idx) + _807 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_1617 + 96] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) / -mem[_1617 + 96] + 10000 != mem[(32 * idx) + _807 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_1719 + 18 len 14]:
                                    if mem[_1719 + 50 len 14] and 10000 > -1 / mem[_1719 + 50 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1719 + 50 len 14] / 10000 != mem[_1719 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1719 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1719 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1719 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1719 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = 0 / (10000 * mem[_1719 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) and mem[_1719 + 18 len 14] > -1 / (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_1719 + 18 len 14]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _807 + 32] * mem[_1719 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1719 + 18 len 14]) / mem[_1719 + 18 len 14] != (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_1719 + 50 len 14] and 10000 > -1 / mem[_1719 + 50 len 14]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_1719 + 50 len 14] / 10000 != mem[_1719 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_1719 + 50 len 14] > (-10000 * mem[(32 * idx) + _807 + 32]) + (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_1719 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) < 10000 * mem[_1719 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_1719 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_807]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _807 + 32] = (10000 * mem[(32 * idx) + _807 + 32] * mem[_1719 + 18 len 14]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32] * mem[_1719 + 18 len 14]) / (10000 * mem[_1719 + 50 len 14]) + (10000 * mem[(32 * idx) + _807 + 32]) - (mem[_1617 + 96] * mem[(32 * idx) + _807 + 32])
                else:
                    if mem[mem[(32 * idx) + 128] + 128] == 2:
                        _1666 = mem[mem[(32 * idx) + 128] + 32]
                        mem[mem[64] + 4] = address(s)
                        require ext_code.size(address(_1666))
                        staticcall address(_1666).getBalance(address rg1) with:
                                gas gas_remaining wei
                               args address(s)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1757 = mem[_1741]
                        require mem[_1741] == mem[_1741]
                        mem[mem[64] + 4] = address(_1618)
                        require ext_code.size(address(_1666))
                        staticcall address(_1666).getBalance(address rg1) with:
                                gas gas_remaining wei
                               args address(_1618)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1831 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1831] == mem[_1831]
                        if idx >= mem[_807]:
                            revert with 'NH{q', 50
                        if mem[_1617 + 96] and 10^13 > -1 / mem[_1617 + 96]:
                            revert with 'NH{q', 17
                        if 10^18 < 10^13 * mem[_1617 + 96]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + _807 + 32] and (-1 * 10^13 * mem[_1617 + 96]) + 10^18 > -1 / mem[(32 * idx) + _807 + 32]:
                            revert with 'NH{q', 17
                        if (10^18 * mem[(32 * idx) + _807 + 32]) - (10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) > -500000000000000001:
                            revert with 'NH{q', 17
                        if _1757 > -((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) - 1:
                            revert with 'NH{q', 17
                        if _1757 and 10^18 > -1 / _1757:
                            revert with 'NH{q', 17
                        if 10^18 * _1757 > -(_1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                            revert with 'NH{q', 17
                        if not _1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                            revert with 'NH{q', 18
                        if 10^18 < (10^18 * _1757) + (_1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18):
                            revert with 'NH{q', 17
                        if mem[_1831] and -((10^18 * _1757) + (_1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_1831]:
                            revert with 'NH{q', 17
                        if (10^18 * mem[_1831]) - ((10^18 * _1757) + (_1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1831]) > -500000000000000001:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = (10^18 * mem[_1831]) + (-1 * (10^18 * _1757) + (_1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) / 2) / _1757 + ((10^18 * mem[(32 * idx) + _807 + 32]) + (-1 * 10^13 * mem[_1617 + 96] * mem[(32 * idx) + _807 + 32]) + 5 * 10^17 / 10^18) * mem[_1831]) + 5 * 10^17 / 10^18
                    else:
                        require mem[mem[(32 * idx) + 128] + 128] == 5
                        require mem[mem[(32 * idx) + 128] + 76 len 20] != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d
                        _1717 = mem[mem[(32 * idx) + 128] + 64]
                        _1728 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_1728]:
                            revert with 'NH{q', 50
                        mem[_1728 + 32] = address(s)
                        if 1 >= mem[_1728]:
                            revert with 'NH{q', 50
                        mem[_1728 + 64] = address(_1618)
                        if idx >= mem[_807]:
                            revert with 'NH{q', 50
                        _1755 = mem[(32 * idx) + _807 + 32]
                        mem[_1728 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1728 + 100] = _1755
                        mem[_1728 + 132] = 64
                        mem[_1728 + 164] = mem[_1728]
                        s = 0
                        t = _1728 + 32
                        u = _1728 + 196
                        while s < mem[_1728]:
                            mem[u] = mem[t + 12 len 20]
                            _1609 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_1717))
                        staticcall address(_1717).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1728 + (32 * mem[_1728]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2421 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2425 = mem[_2421]
                        require mem[_2421] <= test266151307()
                        require _2421 + mem[_2421] + 31 < _2421 + return_data.size
                        _2429 = mem[_2421 + mem[_2421]]
                        if mem[_2421 + mem[_2421]] > test266151307():
                            revert with 'NH{q', 65
                        if _2421 + ceil32(return_data.size) + floor32(mem[_2421 + mem[_2421]]) + 1 > test266151307() or floor32(mem[_2421 + mem[_2421]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2421 + ceil32(return_data.size) + floor32(mem[_2421 + mem[_2421]]) + 1
                        mem[_2421 + ceil32(return_data.size)] = _2429
                        require _2425 + (32 * _2429) + 32 <= return_data.size
                        s = 0
                        t = _2421 + _2425 + 32
                        u = _2421 + ceil32(return_data.size) + 32
                        while s < _2429:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _1609 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _2429 < 1:
                            revert with 'NH{q', 17
                        if _2429 - 1 >= _2429:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_807]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _807 + 32] = mem[(32 * _2429 - 1) + _2421 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 'NH{q', 17
        _1609 = mem[96]
        idx = idx + 1
        s = _1618
        continue 
    mem[mem[64]] = 32
    _1625 = mem[_807]
    mem[mem[64] + 32] = mem[_807]
    mem[mem[64] + 64 len 32 * _1625] = mem[_807 + 32 len 32 * _1625]
    return 32, mem[mem[64] + 32 len (32 * _1625) + 32]
}



}
