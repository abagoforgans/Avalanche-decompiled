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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
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
        _412 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require cd[s] == address(cd[s])
        mem[_412] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_412 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_412 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_412 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_412 + 128] = cd[(s + 128)]
        mem[t] = _412
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    _411 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _413 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _411 + 1) + 32
    if not _411 + 1:
        if 0 >= mem[_413]:
            revert with 'NH{q', 50
        mem[_413 + 32] = cd[4]
        _820 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _820:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _825 = mem[(32 * idx) + 128]
            _826 = mem[mem[(32 * idx) + 128]]
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
                    _872 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_872] == mem[_872 + 18 len 14]
                    require mem[_872 + 32] == mem[_872 + 50 len 14]
                    require mem[_872 + 64] == mem[_872 + 92 len 4]
                    if idx >= mem[_413]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _413 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_872 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_872 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_825 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_825 + 96] + 100000:
                            if mem[_872 + 50 len 14]:
                                if False and mem[_872 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_872 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_872 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_872 + 18 len 14] and 100000 > -1 / mem[_872 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_872 + 18 len 14] / 100000 != mem[_872 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_872 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_872 + 18 len 14] < 100000 * mem[_872 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_872 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_872 + 18 len 14]
                        else:
                            if mem[(32 * idx) + _413 + 32] and -mem[_825 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_825 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_825 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_872 + 50 len 14]:
                                if mem[_872 + 18 len 14] and 100000 > -1 / mem[_872 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_872 + 18 len 14] / 100000 != mem[_872 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_872 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_872 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_872 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_872 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_872 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_872 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_872 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _413 + 32] * mem[_872 + 50 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_872 + 50 len 14]) / mem[_872 + 50 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_872 + 18 len 14] and 100000 > -1 / mem[_872 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_872 + 18 len 14] / 100000 != mem[_872 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_872 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_872 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_872 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_872 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_872 + 50 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_872 + 50 len 14]) / (100000 * mem[_872 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
                    else:
                        if mem[_872 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_872 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_825 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_825 + 96] + 100000:
                            if mem[_872 + 18 len 14]:
                                if False and mem[_872 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_872 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_872 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_872 + 50 len 14] and 100000 > -1 / mem[_872 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_872 + 50 len 14] / 100000 != mem[_872 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_872 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_872 + 50 len 14] < 100000 * mem[_872 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_872 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_872 + 50 len 14]
                        else:
                            if mem[(32 * idx) + _413 + 32] and -mem[_825 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_825 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_825 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_872 + 18 len 14]:
                                if mem[_872 + 50 len 14] and 100000 > -1 / mem[_872 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_872 + 50 len 14] / 100000 != mem[_872 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_872 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_872 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_872 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_872 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_872 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_872 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_872 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _413 + 32] * mem[_872 + 18 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_872 + 18 len 14]) / mem[_872 + 18 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_872 + 50 len 14] and 100000 > -1 / mem[_872 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_872 + 50 len 14] / 100000 != mem[_872 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_872 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_872 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_872 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_872 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_872 + 18 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_872 + 18 len 14]) / (100000 * mem[_872 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
                else:
                    if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_873] == mem[_873 + 18 len 14]
                    require mem[_873 + 32] == mem[_873 + 50 len 14]
                    require mem[_873 + 64] == mem[_873 + 92 len 4]
                    if idx >= mem[_413]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _413 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_826):
                        if mem[_873 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_873 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_825 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_825 + 96] + 100000:
                            if mem[_873 + 50 len 14]:
                                if False and mem[_873 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_873 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_873 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_873 + 18 len 14] and 100000 > -1 / mem[_873 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_873 + 18 len 14] / 100000 != mem[_873 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_873 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_873 + 18 len 14] < 100000 * mem[_873 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_873 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_873 + 18 len 14]
                        else:
                            if mem[(32 * idx) + _413 + 32] and -mem[_825 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_825 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_825 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_873 + 50 len 14]:
                                if mem[_873 + 18 len 14] and 100000 > -1 / mem[_873 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_873 + 18 len 14] / 100000 != mem[_873 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_873 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_873 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_873 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_873 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_873 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_873 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_873 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _413 + 32] * mem[_873 + 50 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_873 + 50 len 14]) / mem[_873 + 50 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_873 + 18 len 14] and 100000 > -1 / mem[_873 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_873 + 18 len 14] / 100000 != mem[_873 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_873 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_873 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_873 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_873 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_873 + 50 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_873 + 50 len 14]) / (100000 * mem[_873 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
                    else:
                        if mem[_873 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_873 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_825 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_825 + 96] + 100000:
                            if mem[_873 + 18 len 14]:
                                if False and mem[_873 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_873 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_873 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_873 + 50 len 14] and 100000 > -1 / mem[_873 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_873 + 50 len 14] / 100000 != mem[_873 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_873 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_873 + 50 len 14] < 100000 * mem[_873 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_873 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_873 + 50 len 14]
                        else:
                            if mem[(32 * idx) + _413 + 32] and -mem[_825 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_825 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_825 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_873 + 18 len 14]:
                                if mem[_873 + 50 len 14] and 100000 > -1 / mem[_873 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_873 + 50 len 14] / 100000 != mem[_873 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_873 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_873 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_873 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_873 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_873 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_873 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_873 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _413 + 32] * mem[_873 + 18 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_873 + 18 len 14]) / mem[_873 + 18 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_873 + 50 len 14] and 100000 > -1 / mem[_873 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_873 + 50 len 14] / 100000 != mem[_873 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_873 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_873 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_873 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_873 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_413]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_873 + 18 len 14]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32] * mem[_873 + 18 len 14]) / (100000 * mem[_873 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_825 + 96] * mem[(32 * idx) + _413 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 128] == 2:
                    _835 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = address(s)
                    require ext_code.size(address(_835))
                    staticcall address(_835).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _896 = mem[_885]
                    require mem[_885] == mem[_885]
                    mem[mem[64] + 4] = address(_826)
                    require ext_code.size(address(_835))
                    staticcall address(_835).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(_826)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _921 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_921] == mem[_921]
                    if idx >= mem[_413]:
                        revert with 'NH{q', 50
                    if mem[_825 + 96] and 10^13 > -1 / mem[_825 + 96]:
                        revert with 'NH{q', 17
                    if 10^18 < 10^13 * mem[_825 + 96]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + _413 + 32] and (-1 * 10^13 * mem[_825 + 96]) + 10^18 > -1 / mem[(32 * idx) + _413 + 32]:
                        revert with 'NH{q', 17
                    if (10^18 * mem[(32 * idx) + _413 + 32]) - (10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) > -500000000000000001:
                        revert with 'NH{q', 17
                    if _896 > -((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if _896 and 10^18 > -1 / _896:
                        revert with 'NH{q', 17
                    if 10^18 * _896 > -(_896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                        revert with 'NH{q', 17
                    if not _896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18):
                        revert with 'NH{q', 18
                    if 10^18 < (10^18 * _896) + (_896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18):
                        revert with 'NH{q', 17
                    if mem[_921] and -((10^18 * _896) + (_896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_921]:
                        revert with 'NH{q', 17
                    if (10^18 * mem[_921]) - ((10^18 * _896) + (_896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) * mem[_921]) > -500000000000000001:
                        revert with 'NH{q', 17
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_413]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _413 + 32] = (10^18 * mem[_921]) + (-1 * (10^18 * _896) + (_896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _896 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_825 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) * mem[_921]) + 5 * 10^17 / 10^18
                else:
                    require mem[mem[(32 * idx) + 128] + 128] == 5
                    _841 = mem[mem[(32 * idx) + 128] + 64]
                    _846 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_846]:
                        revert with 'NH{q', 50
                    mem[_846 + 32] = address(s)
                    if 1 >= mem[_846]:
                        revert with 'NH{q', 50
                    mem[_846 + 64] = address(_826)
                    if idx >= mem[_413]:
                        revert with 'NH{q', 50
                    _870 = mem[(32 * idx) + _413 + 32]
                    mem[_846 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_846 + 100] = _870
                    mem[_846 + 132] = 64
                    mem[_846 + 164] = mem[_846]
                    s = 0
                    t = _846 + 32
                    u = _846 + 196
                    while s < mem[_846]:
                        mem[u] = mem[t + 12 len 20]
                        _820 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_841))
                    staticcall address(_841).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _846 + (32 * mem[_846]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1232 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1234 = mem[_1232]
                    require mem[_1232] <= test266151307()
                    require _1232 + mem[_1232] + 31 < _1232 + return_data.size
                    _1236 = mem[_1232 + mem[_1232]]
                    if mem[_1232 + mem[_1232]] > test266151307():
                        revert with 'NH{q', 65
                    if _1232 + ceil32(return_data.size) + floor32(mem[_1232 + mem[_1232]]) + 1 > test266151307() or floor32(mem[_1232 + mem[_1232]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1232 + ceil32(return_data.size) + floor32(mem[_1232 + mem[_1232]]) + 1
                    mem[_1232 + ceil32(return_data.size)] = _1236
                    require _1234 + (32 * _1236) + 32 <= return_data.size
                    s = 0
                    t = _1232 + _1234 + 32
                    u = _1232 + ceil32(return_data.size) + 32
                    while s < _1236:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _820 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _1236 < 1:
                        revert with 'NH{q', 17
                    if _1236 - 1 >= _1236:
                        revert with 'NH{q', 50
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_413]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _413 + 32] = mem[(32 * _1236 - 1) + _1232 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            _820 = mem[96]
            idx = idx + 1
            s = _826
            continue 
        mem[mem[64]] = 32
        _840 = mem[_413]
        mem[mem[64] + 32] = mem[_413]
        mem[mem[64] + 64 len 32 * _840] = mem[_413 + 32 len 32 * _840]
        return 32, mem[mem[64] + 32 len (32 * _840) + 32]
    mem[_413 + 32 len 32 * _411 + 1] = call.data[calldata.size len 32 * _411 + 1]
    if 0 >= mem[_413]:
        revert with 'NH{q', 50
    mem[_413 + 32] = cd[4]
    _821 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _821:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _829 = mem[(32 * idx) + 128]
        _830 = mem[mem[(32 * idx) + 128]]
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
                _876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_876] == mem[_876 + 18 len 14]
                require mem[_876 + 32] == mem[_876 + 50 len 14]
                require mem[_876 + 64] == mem[_876 + 92 len 4]
                if idx >= mem[_413]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _413 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(s):
                    if mem[_876 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_876 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_829 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_829 + 96] + 100000:
                        if mem[_876 + 50 len 14]:
                            if False and mem[_876 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_876 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_876 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_876 + 18 len 14] and 100000 > -1 / mem[_876 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_876 + 18 len 14] / 100000 != mem[_876 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_876 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_876 + 18 len 14] < 100000 * mem[_876 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_876 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_413]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_876 + 18 len 14]
                    else:
                        if mem[(32 * idx) + _413 + 32] and -mem[_829 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_829 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_829 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_876 + 50 len 14]:
                            if mem[_876 + 18 len 14] and 100000 > -1 / mem[_876 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_876 + 18 len 14] / 100000 != mem[_876 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_876 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_876 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_876 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_876 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_876 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_876 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_876 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32] * mem[_876 + 50 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_876 + 50 len 14]) / mem[_876 + 50 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_876 + 18 len 14] and 100000 > -1 / mem[_876 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_876 + 18 len 14] / 100000 != mem[_876 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_876 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_876 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_876 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_876 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_876 + 50 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_876 + 50 len 14]) / (100000 * mem[_876 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
                else:
                    if mem[_876 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_876 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_829 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_829 + 96] + 100000:
                        if mem[_876 + 18 len 14]:
                            if False and mem[_876 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_876 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_876 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_876 + 50 len 14] and 100000 > -1 / mem[_876 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_876 + 50 len 14] / 100000 != mem[_876 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_876 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_876 + 50 len 14] < 100000 * mem[_876 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_876 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_413]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_876 + 50 len 14]
                    else:
                        if mem[(32 * idx) + _413 + 32] and -mem[_829 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_829 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_829 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_876 + 18 len 14]:
                            if mem[_876 + 50 len 14] and 100000 > -1 / mem[_876 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_876 + 50 len 14] / 100000 != mem[_876 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_876 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_876 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_876 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_876 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_876 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_876 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_876 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32] * mem[_876 + 18 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_876 + 18 len 14]) / mem[_876 + 18 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_876 + 50 len 14] and 100000 > -1 / mem[_876 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_876 + 50 len 14] / 100000 != mem[_876 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_876 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_876 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_876 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_876 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_876 + 18 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_876 + 18 len 14]) / (100000 * mem[_876 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
            else:
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _877 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_877] == mem[_877 + 18 len 14]
                require mem[_877 + 32] == mem[_877 + 50 len 14]
                require mem[_877 + 64] == mem[_877 + 92 len 4]
                if idx >= mem[_413]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _413 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(_830):
                    if mem[_877 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_877 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_829 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_829 + 96] + 100000:
                        if mem[_877 + 50 len 14]:
                            if False and mem[_877 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_877 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_877 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_877 + 18 len 14] and 100000 > -1 / mem[_877 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_877 + 18 len 14] / 100000 != mem[_877 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_877 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_877 + 18 len 14] < 100000 * mem[_877 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_877 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_413]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_877 + 18 len 14]
                    else:
                        if mem[(32 * idx) + _413 + 32] and -mem[_829 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_829 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_829 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_877 + 50 len 14]:
                            if mem[_877 + 18 len 14] and 100000 > -1 / mem[_877 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_877 + 18 len 14] / 100000 != mem[_877 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_877 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_877 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_877 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_877 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_877 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_877 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_877 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32] * mem[_877 + 50 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_877 + 50 len 14]) / mem[_877 + 50 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_877 + 18 len 14] and 100000 > -1 / mem[_877 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_877 + 18 len 14] / 100000 != mem[_877 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_877 + 18 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_877 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_877 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_877 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_877 + 50 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_877 + 50 len 14]) / (100000 * mem[_877 + 18 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
                else:
                    if mem[_877 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_877 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_829 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_829 + 96] + 100000:
                        if mem[_877 + 18 len 14]:
                            if False and mem[_877 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_877 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_877 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_877 + 50 len 14] and 100000 > -1 / mem[_877 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_877 + 50 len 14] / 100000 != mem[_877 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_877 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_877 + 50 len 14] < 100000 * mem[_877 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_877 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_413]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _413 + 32] = 0 / 100000 * mem[_877 + 50 len 14]
                    else:
                        if mem[(32 * idx) + _413 + 32] and -mem[_829 + 96] + 100000 > -1 / mem[(32 * idx) + _413 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_829 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) / -mem[_829 + 96] + 100000 != mem[(32 * idx) + _413 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_877 + 18 len 14]:
                            if mem[_877 + 50 len 14] and 100000 > -1 / mem[_877 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_877 + 50 len 14] / 100000 != mem[_877 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_877 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_877 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_877 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_877 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = 0 / (100000 * mem[_877 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) and mem[_877 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_877 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _413 + 32] * mem[_877 + 18 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_877 + 18 len 14]) / mem[_877 + 18 len 14] != (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_877 + 50 len 14] and 100000 > -1 / mem[_877 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_877 + 50 len 14] / 100000 != mem[_877 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_877 + 50 len 14] > (-100000 * mem[(32 * idx) + _413 + 32]) + (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_877 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) < 100000 * mem[_877 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_877 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_413]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _413 + 32] = (100000 * mem[(32 * idx) + _413 + 32] * mem[_877 + 18 len 14]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32] * mem[_877 + 18 len 14]) / (100000 * mem[_877 + 50 len 14]) + (100000 * mem[(32 * idx) + _413 + 32]) - (mem[_829 + 96] * mem[(32 * idx) + _413 + 32])
            if idx == -1:
                revert with 'NH{q', 17
            _821 = mem[96]
            idx = idx + 1
            s = _830
            continue 
        if mem[mem[(32 * idx) + 128] + 128] == 2:
            _838 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = address(s)
            require ext_code.size(address(_838))
            staticcall address(_838).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(s)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _889 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _897 = mem[_889]
            require mem[_889] == mem[_889]
            mem[mem[64] + 4] = address(_830)
            require ext_code.size(address(_838))
            staticcall address(_838).getBalance(address rg1) with:
                    gas gas_remaining wei
                   args address(_830)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_923] == mem[_923]
            if idx >= mem[_413]:
                revert with 'NH{q', 50
            if mem[_829 + 96] and 10^13 > -1 / mem[_829 + 96]:
                revert with 'NH{q', 17
            if 10^18 < 10^13 * mem[_829 + 96]:
                revert with 'NH{q', 17
            if mem[(32 * idx) + _413 + 32] and (-1 * 10^13 * mem[_829 + 96]) + 10^18 > -1 / mem[(32 * idx) + _413 + 32]:
                revert with 'NH{q', 17
            if (10^18 * mem[(32 * idx) + _413 + 32]) - (10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) > -500000000000000001:
                revert with 'NH{q', 17
            if _897 > -((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) - 1:
                revert with 'NH{q', 17
            if _897 and 10^18 > -1 / _897:
                revert with 'NH{q', 17
            if 10^18 * _897 > -(_897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                revert with 'NH{q', 17
            if not _897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18):
                revert with 'NH{q', 18
            if 10^18 < (10^18 * _897) + (_897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18):
                revert with 'NH{q', 17
            if mem[_923] and -((10^18 * _897) + (_897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_923]:
                revert with 'NH{q', 17
            if (10^18 * mem[_923]) - ((10^18 * _897) + (_897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) * mem[_923]) > -500000000000000001:
                revert with 'NH{q', 17
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[_413]:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + _413 + 32] = (10^18 * mem[_923]) + (-1 * (10^18 * _897) + (_897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) / 2) / _897 + ((10^18 * mem[(32 * idx) + _413 + 32]) + (-1 * 10^13 * mem[_829 + 96] * mem[(32 * idx) + _413 + 32]) + 5 * 10^17 / 10^18) * mem[_923]) + 5 * 10^17 / 10^18
            if idx == -1:
                revert with 'NH{q', 17
            _821 = mem[96]
            idx = idx + 1
            s = _830
            continue 
        require mem[mem[(32 * idx) + 128] + 128] == 5
        _844 = mem[mem[(32 * idx) + 128] + 64]
        _847 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_847]:
            revert with 'NH{q', 50
        mem[_847 + 32] = address(s)
        if 1 >= mem[_847]:
            revert with 'NH{q', 50
        mem[_847 + 64] = address(_830)
        if idx >= mem[_413]:
            revert with 'NH{q', 50
        _874 = mem[(32 * idx) + _413 + 32]
        mem[_847 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_847 + 100] = _874
        mem[_847 + 132] = 64
        _899 = mem[_847]
        mem[_847 + 164] = mem[_847]
        t = 0
        t = _847 + 32
        u = _847 + 196
        while ('cd', 68).length < _899:
            mem[u] = mem[cd[68] + (160 * ('cd', 68).length) + 48 len 20]
            _821 = mem[96]
            t = ('cd', 68).length + 1
            t = cd[68] + (160 * ('cd', 68).length) + 68
            u = u + 32
            continue 
        require ext_code.size(address(_844))
        staticcall address(_844).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1233 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1235 = mem[_1233]
        require mem[_1233] <= test266151307()
        require _1233 + mem[_1233] + 31 < _1233 + return_data.size
        _1237 = mem[_1233 + mem[_1233]]
        if mem[_1233 + mem[_1233]] > test266151307():
            revert with 'NH{q', 65
        if _1233 + ceil32(return_data.size) + floor32(mem[_1233 + mem[_1233]]) + 1 > test266151307() or floor32(mem[_1233 + mem[_1233]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1233 + ceil32(return_data.size) + floor32(mem[_1233 + mem[_1233]]) + 1
        mem[_1233 + ceil32(return_data.size)] = _1237
        require _1235 + (32 * _1237) + 32 <= return_data.size
        idx = 0
        s = _1233 + _1235 + 32
        u = _1233 + ceil32(return_data.size) + 32
        while idx < _1237:
            require mem[s] == mem[s]
            mem[u] = mem[s]
            _821 = mem[96]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        if _1237 < 1:
            revert with 'NH{q', 17
        if _1237 - 1 >= _1237:
            revert with 'NH{q', 50
        if t > -2:
            revert with 'NH{q', 17
        if t + 1 >= mem[_413]:
            revert with 'NH{q', 50
        mem[(32 * t + 1) + _413 + 32] = mem[(32 * _1237 - 1) + _1233 + ceil32(return_data.size) + 32]
        if t == -1:
            revert with 'NH{q', 17
        _821 = mem[96]
        t = t + 1
        t = _830
        continue 
    mem[mem[64]] = 32
    _843 = mem[_413]
    mem[mem[64] + 32] = mem[_413]
    mem[mem[64] + 64 len 32 * _843] = mem[_413 + 32 len 32 * _843]
    return 32, mem[mem[64] + 32 len (32 * _843) + 32]
}



}
