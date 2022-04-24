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
        _408 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require cd[s] == address(cd[s])
        mem[_408] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_408 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_408 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_408 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_408 + 128] = cd[(s + 128)]
        mem[t] = _408
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    _407 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _409 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _407 + 1) + 32
    if not _407 + 1:
        if 0 >= mem[_409]:
            revert with 'NH{q', 50
        mem[_409 + 32] = cd[4]
        _812 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _812:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _817 = mem[(32 * idx) + 128]
            _818 = mem[mem[(32 * idx) + 128]]
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
                    _862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_862] == mem[_862 + 18 len 14]
                    require mem[_862 + 32] == mem[_862 + 50 len 14]
                    require mem[_862 + 64] == mem[_862 + 92 len 4]
                    if idx >= mem[_409]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _409 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(s):
                        if mem[_862 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_862 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_817 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_817 + 96] + 100000:
                            if mem[_862 + 50 len 14]:
                                if False and mem[_862 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_862 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_862 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_862 + 18 len 14] and 100000 > -1 / mem[_862 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_862 + 18 len 14] / 100000 != mem[_862 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_862 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_862 + 18 len 14] < 100000 * mem[_862 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_862 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_862 + 18 len 14]
                        else:
                            if mem[(32 * idx) + _409 + 32] and -mem[_817 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_817 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_817 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_862 + 50 len 14]:
                                if mem[_862 + 18 len 14] and 100000 > -1 / mem[_862 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_862 + 18 len 14] / 100000 != mem[_862 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_862 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_862 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_862 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_862 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_862 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_862 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_862 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _409 + 32] * mem[_862 + 50 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_862 + 50 len 14]) / mem[_862 + 50 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_862 + 18 len 14] and 100000 > -1 / mem[_862 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_862 + 18 len 14] / 100000 != mem[_862 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_862 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_862 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_862 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_862 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_862 + 50 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_862 + 50 len 14]) / (100000 * mem[_862 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
                    else:
                        if mem[_862 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_862 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_817 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_817 + 96] + 100000:
                            if mem[_862 + 18 len 14]:
                                if False and mem[_862 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_862 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_862 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_862 + 50 len 14] and 100000 > -1 / mem[_862 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_862 + 50 len 14] / 100000 != mem[_862 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_862 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_862 + 50 len 14] < 100000 * mem[_862 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_862 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_862 + 50 len 14]
                        else:
                            if mem[(32 * idx) + _409 + 32] and -mem[_817 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_817 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_817 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_862 + 18 len 14]:
                                if mem[_862 + 50 len 14] and 100000 > -1 / mem[_862 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_862 + 50 len 14] / 100000 != mem[_862 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_862 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_862 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_862 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_862 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_862 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_862 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_862 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _409 + 32] * mem[_862 + 18 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_862 + 18 len 14]) / mem[_862 + 18 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_862 + 50 len 14] and 100000 > -1 / mem[_862 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_862 + 50 len 14] / 100000 != mem[_862 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_862 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_862 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_862 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_862 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_862 + 18 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_862 + 18 len 14]) / (100000 * mem[_862 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
                else:
                    if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _863 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_863] == mem[_863 + 18 len 14]
                    require mem[_863 + 32] == mem[_863 + 50 len 14]
                    require mem[_863 + 64] == mem[_863 + 92 len 4]
                    if idx >= mem[_409]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _409 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_818):
                        if mem[_863 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_863 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_817 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_817 + 96] + 100000:
                            if mem[_863 + 50 len 14]:
                                if False and mem[_863 + 50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_863 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_863 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_863 + 18 len 14] and 100000 > -1 / mem[_863 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_863 + 18 len 14] / 100000 != mem[_863 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_863 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_863 + 18 len 14] < 100000 * mem[_863 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_863 + 18 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_863 + 18 len 14]
                        else:
                            if mem[(32 * idx) + _409 + 32] and -mem[_817 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_817 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_817 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_863 + 50 len 14]:
                                if mem[_863 + 18 len 14] and 100000 > -1 / mem[_863 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_863 + 18 len 14] / 100000 != mem[_863 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_863 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_863 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_863 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_863 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_863 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_863 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_863 + 50 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _409 + 32] * mem[_863 + 50 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_863 + 50 len 14]) / mem[_863 + 50 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_863 + 18 len 14] and 100000 > -1 / mem[_863 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_863 + 18 len 14] / 100000 != mem[_863 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_863 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_863 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_863 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_863 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_863 + 50 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_863 + 50 len 14]) / (100000 * mem[_863 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
                    else:
                        if mem[_863 + 50 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[_863 + 18 len 14] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 100000 < mem[_817 + 96]:
                            revert with 'NH{q', 17
                        if not -mem[_817 + 96] + 100000:
                            if mem[_863 + 18 len 14]:
                                if False and mem[_863 + 18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not mem[_863 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / mem[_863 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if mem[_863 + 50 len 14] and 100000 > -1 / mem[_863 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_863 + 50 len 14] / 100000 != mem[_863 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_863 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 100000 * mem[_863 + 50 len 14] < 100000 * mem[_863 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not 100000 * mem[_863 + 50 len 14]:
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_863 + 50 len 14]
                        else:
                            if mem[(32 * idx) + _409 + 32] and -mem[_817 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                                revert with 'NH{q', 17
                            if not -mem[_817 + 96] + 100000:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_817 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_863 + 18 len 14]:
                                if mem[_863 + 50 len 14] and 100000 > -1 / mem[_863 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_863 + 50 len 14] / 100000 != mem[_863 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_863 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_863 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_863 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_863 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_863 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
                            else:
                                if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_863 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 17
                                if not mem[_863 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if (100000 * mem[(32 * idx) + _409 + 32] * mem[_863 + 18 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_863 + 18 len 14]) / mem[_863 + 18 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if mem[_863 + 50 len 14] and 100000 > -1 / mem[_863 + 50 len 14]:
                                    revert with 'NH{q', 17
                                if 100000 * mem[_863 + 50 len 14] / 100000 != mem[_863 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 100000 * mem[_863 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                    revert with 'NH{q', 17
                                if (100000 * mem[_863 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_863 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (100000 * mem[_863 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32]):
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_409]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_863 + 18 len 14]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32] * mem[_863 + 18 len 14]) / (100000 * mem[_863 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_817 + 96] * mem[(32 * idx) + _409 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 128] == 2:
                    _827 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = address(s)
                    require ext_code.size(address(_827))
                    staticcall address(_827).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(s)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _885 = mem[_873]
                    require mem[_873] == mem[_873]
                    mem[mem[64] + 4] = address(_818)
                    require ext_code.size(address(_827))
                    staticcall address(_827).getBalance(address rg1) with:
                            gas gas_remaining wei
                           args address(_818)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _910 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_910] == mem[_910]
                    if idx >= mem[_409]:
                        revert with 'NH{q', 50
                    if mem[_817 + 96] and 10^13 > -1 / mem[_817 + 96]:
                        revert with 'NH{q', 17
                    if 10^18 < 10^13 * mem[_817 + 96]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + _409 + 32] and (-1 * 10^13 * mem[_817 + 96]) + 10^18 > -1 / mem[(32 * idx) + _409 + 32]:
                        revert with 'NH{q', 17
                    if (10^18 * mem[(32 * idx) + _409 + 32]) - (10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) > -500000000000000001:
                        revert with 'NH{q', 17
                    if _885 > -((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if _885 and 10^18 > -1 / _885:
                        revert with 'NH{q', 17
                    if 10^18 * _885 > -(_885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                        revert with 'NH{q', 17
                    if not _885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18):
                        revert with 'NH{q', 18
                    if 10^18 < (10^18 * _885) + (_885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18):
                        revert with 'NH{q', 17
                    if mem[_910] and -((10^18 * _885) + (_885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_910]:
                        revert with 'NH{q', 17
                    if (10^18 * mem[_910]) - ((10^18 * _885) + (_885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) * mem[_910]) > -500000000000000001:
                        revert with 'NH{q', 17
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_409]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _409 + 32] = (10^18 * mem[_910]) + (-1 * (10^18 * _885) + (_885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _885 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_817 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) * mem[_910]) + 5 * 10^17 / 10^18
                else:
                    require mem[mem[(32 * idx) + 128] + 128] == 5
                    _833 = mem[mem[(32 * idx) + 128] + 64]
                    _838 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_838]:
                        revert with 'NH{q', 50
                    mem[_838 + 32] = address(s)
                    if 1 >= mem[_838]:
                        revert with 'NH{q', 50
                    mem[_838 + 64] = address(_818)
                    mem[_838 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_838 + 100] = cd[4]
                    mem[_838 + 132] = 64
                    mem[_838 + 164] = mem[_838]
                    s = 0
                    t = _838 + 32
                    u = _838 + 196
                    while s < mem[_838]:
                        mem[u] = mem[t + 12 len 20]
                        _812 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_833))
                    staticcall address(_833).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _838 + (32 * mem[_838]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1220 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1222 = mem[_1220]
                    require mem[_1220] <= test266151307()
                    require _1220 + mem[_1220] + 31 < _1220 + return_data.size
                    _1224 = mem[_1220 + mem[_1220]]
                    if mem[_1220 + mem[_1220]] > test266151307():
                        revert with 'NH{q', 65
                    if _1220 + ceil32(return_data.size) + floor32(mem[_1220 + mem[_1220]]) + 1 > test266151307() or floor32(mem[_1220 + mem[_1220]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1220 + ceil32(return_data.size) + floor32(mem[_1220 + mem[_1220]]) + 1
                    mem[_1220 + ceil32(return_data.size)] = _1224
                    require _1222 + (32 * _1224) + 32 <= return_data.size
                    s = 0
                    t = _1220 + _1222 + 32
                    u = _1220 + ceil32(return_data.size) + 32
                    while s < _1224:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _812 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _1224 < 1:
                        revert with 'NH{q', 17
                    if _1224 - 1 >= _1224:
                        revert with 'NH{q', 50
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_409]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _409 + 32] = mem[(32 * _1224 - 1) + _1220 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            _812 = mem[96]
            idx = idx + 1
            s = _818
            continue 
        mem[mem[64]] = 32
        _832 = mem[_409]
        mem[mem[64] + 32] = mem[_409]
        mem[mem[64] + 64 len 32 * _832] = mem[_409 + 32 len 32 * _832]
        return 32, mem[mem[64] + 32 len (32 * _832) + 32]
    mem[_409 + 32 len 32 * _407 + 1] = call.data[calldata.size len 32 * _407 + 1]
    if 0 >= mem[_409]:
        revert with 'NH{q', 50
    mem[_409 + 32] = cd[4]
    _813 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _813:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _821 = mem[(32 * idx) + 128]
        _822 = mem[mem[(32 * idx) + 128]]
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
                _864 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_864] == mem[_864 + 18 len 14]
                require mem[_864 + 32] == mem[_864 + 50 len 14]
                require mem[_864 + 64] == mem[_864 + 92 len 4]
                if idx >= mem[_409]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _409 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(s):
                    if mem[_864 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_864 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_821 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_821 + 96] + 100000:
                        if mem[_864 + 50 len 14]:
                            if False and mem[_864 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_864 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_864 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_864 + 18 len 14] and 100000 > -1 / mem[_864 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_864 + 18 len 14] / 100000 != mem[_864 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_864 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_864 + 18 len 14] < 100000 * mem[_864 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_864 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_409]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_864 + 18 len 14]
                    else:
                        if mem[(32 * idx) + _409 + 32] and -mem[_821 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_821 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_821 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_864 + 50 len 14]:
                            if mem[_864 + 18 len 14] and 100000 > -1 / mem[_864 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_864 + 18 len 14] / 100000 != mem[_864 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_864 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_864 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_864 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_864 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_864 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_864 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_864 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32] * mem[_864 + 50 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_864 + 50 len 14]) / mem[_864 + 50 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_864 + 18 len 14] and 100000 > -1 / mem[_864 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_864 + 18 len 14] / 100000 != mem[_864 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_864 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_864 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_864 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_864 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_864 + 50 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_864 + 50 len 14]) / (100000 * mem[_864 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
                else:
                    if mem[_864 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_864 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_821 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_821 + 96] + 100000:
                        if mem[_864 + 18 len 14]:
                            if False and mem[_864 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_864 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_864 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_864 + 50 len 14] and 100000 > -1 / mem[_864 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_864 + 50 len 14] / 100000 != mem[_864 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_864 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_864 + 50 len 14] < 100000 * mem[_864 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_864 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_409]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_864 + 50 len 14]
                    else:
                        if mem[(32 * idx) + _409 + 32] and -mem[_821 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_821 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_821 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_864 + 18 len 14]:
                            if mem[_864 + 50 len 14] and 100000 > -1 / mem[_864 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_864 + 50 len 14] / 100000 != mem[_864 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_864 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_864 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_864 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_864 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_864 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_864 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_864 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32] * mem[_864 + 18 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_864 + 18 len 14]) / mem[_864 + 18 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_864 + 50 len 14] and 100000 > -1 / mem[_864 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_864 + 50 len 14] / 100000 != mem[_864 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_864 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_864 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_864 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_864 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_864 + 18 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_864 + 18 len 14]) / (100000 * mem[_864 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
            else:
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_865] == mem[_865 + 18 len 14]
                require mem[_865 + 32] == mem[_865 + 50 len 14]
                require mem[_865 + 64] == mem[_865 + 92 len 4]
                if idx >= mem[_409]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _409 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(s) == address(_822):
                    if mem[_865 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_865 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_821 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_821 + 96] + 100000:
                        if mem[_865 + 50 len 14]:
                            if False and mem[_865 + 50 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_865 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_865 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_865 + 18 len 14] and 100000 > -1 / mem[_865 + 18 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_865 + 18 len 14] / 100000 != mem[_865 + 18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_865 + 18 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_865 + 18 len 14] < 100000 * mem[_865 + 18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_865 + 18 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_409]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_865 + 18 len 14]
                    else:
                        if mem[(32 * idx) + _409 + 32] and -mem[_821 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_821 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_821 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_865 + 50 len 14]:
                            if mem[_865 + 18 len 14] and 100000 > -1 / mem[_865 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_865 + 18 len 14] / 100000 != mem[_865 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_865 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_865 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_865 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_865 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_865 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_865 + 50 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_865 + 50 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32] * mem[_865 + 50 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_865 + 50 len 14]) / mem[_865 + 50 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_865 + 18 len 14] and 100000 > -1 / mem[_865 + 18 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_865 + 18 len 14] / 100000 != mem[_865 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_865 + 18 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_865 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_865 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_865 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_865 + 50 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_865 + 50 len 14]) / (100000 * mem[_865 + 18 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
                else:
                    if mem[_865 + 50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[_865 + 18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 100000 < mem[_821 + 96]:
                        revert with 'NH{q', 17
                    if not -mem[_821 + 96] + 100000:
                        if mem[_865 + 18 len 14]:
                            if False and mem[_865 + 18 len 14] > 0:
                                revert with 'NH{q', 17
                            if not mem[_865 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 0 / mem[_865 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                        if mem[_865 + 50 len 14] and 100000 > -1 / mem[_865 + 50 len 14]:
                            revert with 'NH{q', 17
                        if 100000 * mem[_865 + 50 len 14] / 100000 != mem[_865 + 50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 100000 * mem[_865 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 100000 * mem[_865 + 50 len 14] < 100000 * mem[_865 + 50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not 100000 * mem[_865 + 50 len 14]:
                            revert with 'NH{q', 18
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_409]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _409 + 32] = 0 / 100000 * mem[_865 + 50 len 14]
                    else:
                        if mem[(32 * idx) + _409 + 32] and -mem[_821 + 96] + 100000 > -1 / mem[(32 * idx) + _409 + 32]:
                            revert with 'NH{q', 17
                        if not -mem[_821 + 96] + 100000:
                            revert with 'NH{q', 18
                        if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) / -mem[_821 + 96] + 100000 != mem[(32 * idx) + _409 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[_865 + 18 len 14]:
                            if mem[_865 + 50 len 14] and 100000 > -1 / mem[_865 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_865 + 50 len 14] / 100000 != mem[_865 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_865 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_865 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_865 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_865 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = 0 / (100000 * mem[_865 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
                        else:
                            if (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) and mem[_865 + 18 len 14] > -1 / (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 17
                            if not mem[_865 + 18 len 14]:
                                revert with 'NH{q', 18
                            if (100000 * mem[(32 * idx) + _409 + 32] * mem[_865 + 18 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_865 + 18 len 14]) / mem[_865 + 18 len 14] != (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if mem[_865 + 50 len 14] and 100000 > -1 / mem[_865 + 50 len 14]:
                                revert with 'NH{q', 17
                            if 100000 * mem[_865 + 50 len 14] / 100000 != mem[_865 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 100000 * mem[_865 + 50 len 14] > (-100000 * mem[(32 * idx) + _409 + 32]) + (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) - 1:
                                revert with 'NH{q', 17
                            if (100000 * mem[_865 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) < 100000 * mem[_865 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (100000 * mem[_865 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32]):
                                revert with 'NH{q', 18
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_409]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _409 + 32] = (100000 * mem[(32 * idx) + _409 + 32] * mem[_865 + 18 len 14]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32] * mem[_865 + 18 len 14]) / (100000 * mem[_865 + 50 len 14]) + (100000 * mem[(32 * idx) + _409 + 32]) - (mem[_821 + 96] * mem[(32 * idx) + _409 + 32])
        else:
            if mem[mem[(32 * idx) + 128] + 128] == 2:
                _830 = mem[mem[(32 * idx) + 128] + 32]
                mem[mem[64] + 4] = address(s)
                require ext_code.size(address(_830))
                staticcall address(_830).getBalance(address rg1) with:
                        gas gas_remaining wei
                       args address(s)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _877 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _887 = mem[_877]
                require mem[_877] == mem[_877]
                mem[mem[64] + 4] = address(_822)
                require ext_code.size(address(_830))
                staticcall address(_830).getBalance(address rg1) with:
                        gas gas_remaining wei
                       args address(_822)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _911 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_911] == mem[_911]
                if idx >= mem[_409]:
                    revert with 'NH{q', 50
                if mem[_821 + 96] and 10^13 > -1 / mem[_821 + 96]:
                    revert with 'NH{q', 17
                if 10^18 < 10^13 * mem[_821 + 96]:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _409 + 32] and (-1 * 10^13 * mem[_821 + 96]) + 10^18 > -1 / mem[(32 * idx) + _409 + 32]:
                    revert with 'NH{q', 17
                if (10^18 * mem[(32 * idx) + _409 + 32]) - (10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) > -500000000000000001:
                    revert with 'NH{q', 17
                if _887 > -((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) - 1:
                    revert with 'NH{q', 17
                if _887 and 10^18 > -1 / _887:
                    revert with 'NH{q', 17
                if 10^18 * _887 > -(_887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) - 1:
                    revert with 'NH{q', 17
                if not _887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18):
                    revert with 'NH{q', 18
                if 10^18 < (10^18 * _887) + (_887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18):
                    revert with 'NH{q', 17
                if mem[_911] and -((10^18 * _887) + (_887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18)) + 10^18 > -1 / mem[_911]:
                    revert with 'NH{q', 17
                if (10^18 * mem[_911]) - ((10^18 * _887) + (_887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) * mem[_911]) > -500000000000000001:
                    revert with 'NH{q', 17
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[_409]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + _409 + 32] = (10^18 * mem[_911]) + (-1 * (10^18 * _887) + (_887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) / 2) / _887 + ((10^18 * mem[(32 * idx) + _409 + 32]) + (-1 * 10^13 * mem[_821 + 96] * mem[(32 * idx) + _409 + 32]) + 5 * 10^17 / 10^18) * mem[_911]) + 5 * 10^17 / 10^18
            else:
                require mem[mem[(32 * idx) + 128] + 128] == 5
                _836 = mem[mem[(32 * idx) + 128] + 64]
                _839 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_839]:
                    revert with 'NH{q', 50
                mem[_839 + 32] = address(s)
                if 1 >= mem[_839]:
                    revert with 'NH{q', 50
                mem[_839 + 64] = address(_822)
                mem[_839 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_839 + 100] = cd[4]
                mem[_839 + 132] = 64
                mem[_839 + 164] = mem[_839]
                s = 0
                t = _839 + 32
                u = _839 + 196
                while s < mem[_839]:
                    mem[u] = mem[t + 12 len 20]
                    _813 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(_836))
                staticcall address(_836).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _839 + (32 * mem[_839]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1221 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1223 = mem[_1221]
                require mem[_1221] <= test266151307()
                require _1221 + mem[_1221] + 31 < _1221 + return_data.size
                _1225 = mem[_1221 + mem[_1221]]
                if mem[_1221 + mem[_1221]] > test266151307():
                    revert with 'NH{q', 65
                if _1221 + ceil32(return_data.size) + floor32(mem[_1221 + mem[_1221]]) + 1 > test266151307() or floor32(mem[_1221 + mem[_1221]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1221 + ceil32(return_data.size) + floor32(mem[_1221 + mem[_1221]]) + 1
                mem[_1221 + ceil32(return_data.size)] = _1225
                require _1223 + (32 * _1225) + 32 <= return_data.size
                s = 0
                t = _1221 + _1223 + 32
                u = _1221 + ceil32(return_data.size) + 32
                while s < _1225:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _813 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if _1225 < 1:
                    revert with 'NH{q', 17
                if _1225 - 1 >= _1225:
                    revert with 'NH{q', 50
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[_409]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + _409 + 32] = mem[(32 * _1225 - 1) + _1221 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 'NH{q', 17
        _813 = mem[96]
        idx = idx + 1
        s = _822
        continue 
    mem[mem[64]] = 32
    _835 = mem[_409]
    mem[mem[64] + 32] = mem[_409]
    mem[mem[64] + 64 len 32 * _835] = mem[_409 + 32 len 32 * _835]
    return 32, mem[mem[64] + 32 len (32 * _835) + 32]
}



}
