contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 minAmount;
address stor2;

function minAmount() {
    return minAmount
}

function _fallback() payable {
    revert
}

function changeMinAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    minAmount = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    staticcall stor2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'INSUFFICIENT_BALANCE'
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        if arg1 != stor0:
            revert with 0, 'UNAUTHORIZED'
    if arg2 > -minAmount - 1:
        revert with 'NH{q', 17
    staticcall stor2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2 + minAmount:
        revert with 0, 'INSUFFICIENT_BALANCE'
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0e07fa4d(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    if cd[132] < block.timestamp:
        revert with 0, 'EXPIRED'
    if cd[36] <= cd[4]:
        revert with 0, 'INVALID_MIN_OUTPUT'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if address(('cd', 100)[0]) != stor2:
        revert with 0, 'INVALID_INPUT'
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]) != stor2:
        revert with 0, 'INVALID_OUTPUT'
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    if ('cd', 100).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ('cd', 100).length
    mem[64] = (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 192
    if not ('cd', 100).length:
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = cd[4]
        if var240003 < 1:
            revert with 'NH{q', 17
        if var244002 < var244001:
            if var246001 < ('cd', 68).length:
                if var248006 < ('cd', 100).length:
                    if var260003 > -2:
                        revert with 'NH{q', 17
                    idx = var262002 + 1
                    s = var262006
                    t = var262007
                    u = var262011
                    while idx < ('cd', 100).length:
                        _11880 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        if address(s) == mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        else:
                            if address(s) < mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                else:
                                    staticcall address(t).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _11900 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_11900] == mem[_11900 + 18 len 14]
                                        require mem[_11900 + 32] == mem[_11900 + 50 len 14]
                                        require mem[_11900 + 64] == mem[_11900 + 92 len 4]
                                        if address(s) == address(s):
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11900 + 18 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11900 + 50 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11900 + 50 len 14]:
                                                                        if mem[_11900 + 18 len 14] and 1000 > -1 / mem[_11900 + 18 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11900 + 18 len 14] / 1000 != mem[_11900 + 18 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11900 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11900 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11900 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11900 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11900 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12638 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12638
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12638
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12686 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12686] == bool(mem[_12686])
                                                                                                                                        if not mem[_12686]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12726 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12726] = ('cd', 68).length
                                                                                                                                            mem[_12726 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12726 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12727 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12727] = ('cd', 100).length
                                                                                                                                            mem[_12727 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12727 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12798 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12798:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12727 + 44 len 20] != mem[_12727 + 76 len 20]:
                                                                                                                                                                if mem[_12727 + 44 len 20] < mem[_12727 + 76 len 20]:
                                                                                                                                                                    if mem[_12727 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12727 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11900 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11900 + 50 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11900 + 50 len 14] / mem[_11900 + 50 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11900 + 18 len 14] and 1000 > -1 / mem[_11900 + 18 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11900 + 18 len 14] / 1000 != mem[_11900 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11900 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11900 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11900 + 18 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11900 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11900 + 50 len 14] / (1000 * mem[_11900 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12702 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12702
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12702
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12758 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12758] == bool(mem[_12758])
                                                                                                                                                    if not mem[_12758]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
                                        else:
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11900 + 50 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11900 + 18 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11900 + 18 len 14]:
                                                                        if mem[_11900 + 50 len 14] and 1000 > -1 / mem[_11900 + 50 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11900 + 50 len 14] / 1000 != mem[_11900 + 50 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11900 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11900 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11900 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11900 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11900 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12641 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12641
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12641
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12687 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12687] == bool(mem[_12687])
                                                                                                                                        if not mem[_12687]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12728 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12728] = ('cd', 68).length
                                                                                                                                            mem[_12728 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12728 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12729 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12729] = ('cd', 100).length
                                                                                                                                            mem[_12729 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12729 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12801 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12801:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12729 + 44 len 20] != mem[_12729 + 76 len 20]:
                                                                                                                                                                if mem[_12729 + 44 len 20] < mem[_12729 + 76 len 20]:
                                                                                                                                                                    if mem[_12729 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12729 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11900 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11900 + 18 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11900 + 18 len 14] / mem[_11900 + 18 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11900 + 50 len 14] and 1000 > -1 / mem[_11900 + 50 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11900 + 50 len 14] / 1000 != mem[_11900 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11900 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11900 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11900 + 50 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11900 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11900 + 18 len 14] / (1000 * mem[_11900 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12704 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12704
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12704
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12759 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12759] == bool(mem[_12759])
                                                                                                                                                    if not mem[_12759]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
                            else:
                                if not mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                else:
                                    staticcall address(t).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _11901 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_11901] == mem[_11901 + 18 len 14]
                                        require mem[_11901 + 32] == mem[_11901 + 50 len 14]
                                        require mem[_11901 + 64] == mem[_11901 + 92 len 4]
                                        if address(s) == address(_11880):
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11901 + 18 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11901 + 50 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11901 + 50 len 14]:
                                                                        if mem[_11901 + 18 len 14] and 1000 > -1 / mem[_11901 + 18 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11901 + 18 len 14] / 1000 != mem[_11901 + 18 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11901 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11901 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11901 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11901 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11901 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12644 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12644
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12644
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12688 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12688] == bool(mem[_12688])
                                                                                                                                        if not mem[_12688]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12730 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12730] = ('cd', 68).length
                                                                                                                                            mem[_12730 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12730 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12731 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12731] = ('cd', 100).length
                                                                                                                                            mem[_12731 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12731 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12804 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12804:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12731 + 44 len 20] != mem[_12731 + 76 len 20]:
                                                                                                                                                                if mem[_12731 + 44 len 20] < mem[_12731 + 76 len 20]:
                                                                                                                                                                    if mem[_12731 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12731 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11901 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11901 + 50 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11901 + 50 len 14] / mem[_11901 + 50 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11901 + 18 len 14] and 1000 > -1 / mem[_11901 + 18 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11901 + 18 len 14] / 1000 != mem[_11901 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11901 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11901 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11901 + 18 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11901 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11901 + 50 len 14] / (1000 * mem[_11901 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12706 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12706
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12706
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12760 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12760] == bool(mem[_12760])
                                                                                                                                                    if not mem[_12760]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
                                        else:
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11901 + 50 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11901 + 18 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11901 + 18 len 14]:
                                                                        if mem[_11901 + 50 len 14] and 1000 > -1 / mem[_11901 + 50 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11901 + 50 len 14] / 1000 != mem[_11901 + 50 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11901 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11901 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11901 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11901 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11901 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12647 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12647
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12647
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12689 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12689] == bool(mem[_12689])
                                                                                                                                        if not mem[_12689]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12732 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12732] = ('cd', 68).length
                                                                                                                                            mem[_12732 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12732 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12733 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12733] = ('cd', 100).length
                                                                                                                                            mem[_12733 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12733 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12807 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12807:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12733 + 44 len 20] != mem[_12733 + 76 len 20]:
                                                                                                                                                                if mem[_12733 + 44 len 20] < mem[_12733 + 76 len 20]:
                                                                                                                                                                    if mem[_12733 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12733 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11901 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11901 + 18 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11901 + 18 len 14] / mem[_11901 + 18 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11901 + 50 len 14] and 1000 > -1 / mem[_11901 + 50 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11901 + 50 len 14] / 1000 != mem[_11901 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11901 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11901 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11901 + 50 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11901 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11901 + 18 len 14] / (1000 * mem[_11901 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12708 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12708
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12708
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12761 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12761] == bool(mem[_12761])
                                                                                                                                                    if not mem[_12761]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
            revert with 'NH{q', 50
        if ('cd', 100).length < 1:
            revert with 'NH{q', 17
        if ('cd', 100).length - 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 100).length - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 196] = 32
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 228] = 19
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 260] = 'INSUFFICIENT_OUTPUT'
            revert with memory
              from (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 192
               len (127 * ('cd', 100).length) + 100
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 196] = address(('cd', 68)[0])
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 228] = cd[4]
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 196 len (127 * ('cd', 100).length) + 64]
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 'NH{q', 1
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 192] = ('cd', 68).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 224 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(64 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 224] = ('cd', 100).length
        mem[(64 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 256 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(64 * ('cd', 68).length) + (98 * ('cd', 100).length) + ceil32(return_data.size) + 256] = 0
        if var241003 < 1:
            revert with 'NH{q', 17
        if var245002 < var245001:
            if var247001 >= ('cd', 100).length:
                revert with 'NH{q', 50
            # nil
        else:
            mem[(64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 256] = 32
            mem[(64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 288] = ('cd', 100).length
            mem[(64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 320 len 32 * ('cd', 100).length] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192 len 32 * ('cd', 100).length]
            return memory
              from (64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 256
               len (158 * ('cd', 100).length) + 64
    else:
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = cd[4]
        if var241003 < 1:
            revert with 'NH{q', 17
        if var245002 < var245001:
            if var247001 < ('cd', 68).length:
                if var249006 < ('cd', 100).length:
                    if var261003 > -2:
                        revert with 'NH{q', 17
                    idx = var263002 + 1
                    s = var263006
                    t = var263007
                    u = var263011
                    while idx < ('cd', 100).length:
                        _11881 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        if address(s) == mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        else:
                            if address(s) < mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                else:
                                    staticcall address(t).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _11902 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_11902] == mem[_11902 + 18 len 14]
                                        require mem[_11902 + 32] == mem[_11902 + 50 len 14]
                                        require mem[_11902 + 64] == mem[_11902 + 92 len 4]
                                        if address(s) == address(s):
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11902 + 18 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11902 + 50 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11902 + 50 len 14]:
                                                                        if mem[_11902 + 18 len 14] and 1000 > -1 / mem[_11902 + 18 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11902 + 18 len 14] / 1000 != mem[_11902 + 18 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11902 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11902 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11902 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11902 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11902 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12650 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12650
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12650
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12690 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12690] == bool(mem[_12690])
                                                                                                                                        if not mem[_12690]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12734 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12734] = ('cd', 68).length
                                                                                                                                            mem[_12734 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12734 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12735 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12735] = ('cd', 100).length
                                                                                                                                            mem[_12735 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12735 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12810 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12810:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12735 + 44 len 20] != mem[_12735 + 76 len 20]:
                                                                                                                                                                if mem[_12735 + 44 len 20] < mem[_12735 + 76 len 20]:
                                                                                                                                                                    if mem[_12735 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12735 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11902 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11902 + 50 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11902 + 50 len 14] / mem[_11902 + 50 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11902 + 18 len 14] and 1000 > -1 / mem[_11902 + 18 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11902 + 18 len 14] / 1000 != mem[_11902 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11902 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11902 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11902 + 18 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11902 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11902 + 50 len 14] / (1000 * mem[_11902 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12710 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12710
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12710
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12762 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12762] == bool(mem[_12762])
                                                                                                                                                    if not mem[_12762]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
                                        else:
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11902 + 50 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11902 + 18 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11902 + 18 len 14]:
                                                                        if mem[_11902 + 50 len 14] and 1000 > -1 / mem[_11902 + 50 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11902 + 50 len 14] / 1000 != mem[_11902 + 50 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11902 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11902 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11902 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11902 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11902 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12653 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12653
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12653
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12691 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12691] == bool(mem[_12691])
                                                                                                                                        if not mem[_12691]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12736 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12736] = ('cd', 68).length
                                                                                                                                            mem[_12736 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12736 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12737 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12737] = ('cd', 100).length
                                                                                                                                            mem[_12737 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12737 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12813 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12813:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12737 + 44 len 20] != mem[_12737 + 76 len 20]:
                                                                                                                                                                if mem[_12737 + 44 len 20] < mem[_12737 + 76 len 20]:
                                                                                                                                                                    if mem[_12737 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12737 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11902 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11902 + 18 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11902 + 18 len 14] / mem[_11902 + 18 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11902 + 50 len 14] and 1000 > -1 / mem[_11902 + 50 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11902 + 50 len 14] / 1000 != mem[_11902 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11902 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11902 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11902 + 50 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11902 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11902 + 18 len 14] / (1000 * mem[_11902 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12712 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12712
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12712
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12763 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12763] == bool(mem[_12763])
                                                                                                                                                    if not mem[_12763]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
                            else:
                                if not mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                else:
                                    staticcall address(t).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _11903 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_11903] == mem[_11903 + 18 len 14]
                                        require mem[_11903 + 32] == mem[_11903 + 50 len 14]
                                        require mem[_11903 + 64] == mem[_11903 + 92 len 4]
                                        if address(s) == address(_11881):
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11903 + 18 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11903 + 50 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11903 + 50 len 14]:
                                                                        if mem[_11903 + 18 len 14] and 1000 > -1 / mem[_11903 + 18 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11903 + 18 len 14] / 1000 != mem[_11903 + 18 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11903 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11903 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11903 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11903 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11903 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12656 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12656
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12656
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12692 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12692] == bool(mem[_12692])
                                                                                                                                        if not mem[_12692]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12738 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12738] = ('cd', 68).length
                                                                                                                                            mem[_12738 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12738 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12739 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12739] = ('cd', 100).length
                                                                                                                                            mem[_12739 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12739 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12816 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12816:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12739 + 44 len 20] != mem[_12739 + 76 len 20]:
                                                                                                                                                                if mem[_12739 + 44 len 20] < mem[_12739 + 76 len 20]:
                                                                                                                                                                    if mem[_12739 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12739 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11903 + 50 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11903 + 50 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11903 + 50 len 14] / mem[_11903 + 50 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11903 + 18 len 14] and 1000 > -1 / mem[_11903 + 18 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11903 + 18 len 14] / 1000 != mem[_11903 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11903 + 18 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11903 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11903 + 18 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11903 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11903 + 50 len 14] / (1000 * mem[_11903 + 18 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12714 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12714
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12714
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12764 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12764] == bool(mem[_12764])
                                                                                                                                                    if not mem[_12764]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
                                        else:
                                            if u >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                revert with 'NH{q', 50
                                            else:
                                                if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= 0:
                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                                else:
                                                    if mem[_11903 + 50 len 14] <= 0:
                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                    else:
                                                        if mem[_11903 + 18 len 14] <= 0:
                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                        else:
                                                            if mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and 997 > -1 / mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / 997 != mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                else:
                                                                    if not mem[_11903 + 18 len 14]:
                                                                        if mem[_11903 + 50 len 14] and 1000 > -1 / mem[_11903 + 50 len 14]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 1000 * mem[_11903 + 50 len 14] / 1000 != mem[_11903 + 50 len 14]:
                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                            else:
                                                                                if 1000 * mem[_11903 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if (1000 * mem[_11903 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11903 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-add-overflow'
                                                                                    else:
                                                                                        if not (1000 * mem[_11903 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if u > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 0 / (1000 * mem[_11903 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                    if u == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                            revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                        else:
                                                                                                                            if 0 >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _12659 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                    mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                    mem[mem[64] + 36] = _12659
                                                                                                                                    call stor2.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(('cd', 68)[0]), _12659
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _12693 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_12693] == bool(mem[_12693])
                                                                                                                                        if not mem[_12693]:
                                                                                                                                            revert with 'NH{q', 1
                                                                                                                                        else:
                                                                                                                                            _12740 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                                                                                                                                            mem[_12740] = ('cd', 68).length
                                                                                                                                            mem[_12740 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                                                                                                                            mem[_12740 + (32 * ('cd', 68).length) + 32] = 0
                                                                                                                                            _12741 = mem[64]
                                                                                                                                            mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                                                                                                                                            mem[_12741] = ('cd', 100).length
                                                                                                                                            mem[_12741 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                                                                                                                            mem[_12741 + (32 * ('cd', 100).length) + 32] = 0
                                                                                                                                            if ('cd', 100).length < 1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if 0 >= ('cd', 100).length - 1:
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _12819 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                                                                                                                                                    if 0 >= _12819:
                                                                                                                                                        return 32, mem[mem[64] + 32]
                                                                                                                                                    else:
                                                                                                                                                        # nil
                                                                                                                                                else:
                                                                                                                                                    if 0 >= ('cd', 100).length:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= ('cd', 100).length:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            if mem[_12741 + 44 len 20] != mem[_12741 + 76 len 20]:
                                                                                                                                                                if mem[_12741 + 44 len 20] < mem[_12741 + 76 len 20]:
                                                                                                                                                                    if mem[_12741 + 44 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                                else:
                                                                                                                                                                    if mem[_12741 + 76 len 20]:
                                                                                                                                                                        # nil
                                                                                                                                                                    else:
                                                                                                                                                                        # nil
                                                                                                                                                            else:
                                                                                                                                                                # nil
                                                                                                            else:
                                                                                                                if u + 1 >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if u + 1 > -2:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = u + 2
                                                                                                                            s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                            t = mem[(32 * u + 1) + 128]
                                                                                                                            u = u + 1
                                                                                                                            continue 
                                                                    else:
                                                                        if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] and mem[_11903 + 18 len 14] > -1 / 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if not mem[_11903 + 18 len 14]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11903 + 18 len 14] / mem[_11903 + 18 len 14] != 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                else:
                                                                                    if mem[_11903 + 50 len 14] and 1000 > -1 / mem[_11903 + 50 len 14]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 1000 * mem[_11903 + 50 len 14] / 1000 != mem[_11903 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if 1000 * mem[_11903 + 50 len 14] > (-997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if (1000 * mem[_11903 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]) < 1000 * mem[_11903 + 50 len 14]:
                                                                                                    revert with 0, 'ds-math-add-overflow'
                                                                                                else:
                                                                                                    if not (1000 * mem[_11903 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]):
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if u > -2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if u + 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * u + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = 997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] * mem[_11903 + 18 len 14] / (1000 * mem[_11903 + 50 len 14]) + (997 * mem[(32 * u) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192])
                                                                                                                if u == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[(32 * ('cd', 68).length) + 128] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if u + 1 >= mem[(32 * ('cd', 68).length) + 128] - 1:
                                                                                                                            if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] < 1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
                                                                                                                                        revert with 0, 'INSUFFICIENT_OUTPUT'
                                                                                                                                    else:
                                                                                                                                        if 0 >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require ('cd', 68)[0] == address(('cd', 68)[0])
                                                                                                                                            if 0 >= mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _12716 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                                                                                                                                                mem[mem[64] + 4] = address(('cd', 68)[0])
                                                                                                                                                mem[mem[64] + 36] = _12716
                                                                                                                                                call stor2.0xa9059cbb with:
                                                                                                                                                     gas gas_remaining wei
                                                                                                                                                    args address(('cd', 68)[0]), _12716
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _12765 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_12765] == bool(mem[_12765])
                                                                                                                                                    if not mem[_12765]:
                                                                                                                                                        revert with 'NH{q', 1
                                                                                                                                                    else:
                                                                                                                                                        if ('cd', 100).length < 1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            if 0 >= ('cd', 100).length - 1:
                                                                                                                                                                # nil
                                                                                                                                                            else:
                                                                                                                                                                if 0 >= ('cd', 100).length:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    # nil
                                                                                                                        else:
                                                                                                                            if u + 1 >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if u + 1 >= mem[(32 * ('cd', 68).length) + 128]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if u + 1 > -2:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = u + 2
                                                                                                                                        s = mem[(32 * u + 1) + (32 * ('cd', 68).length) + 160]
                                                                                                                                        t = mem[(32 * u + 1) + 128]
                                                                                                                                        u = u + 1
                                                                                                                                        continue 
            revert with 'NH{q', 50
        if ('cd', 100).length < 1:
            revert with 'NH{q', 17
        if ('cd', 100).length - 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 100).length - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] <= cd[36]:
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 196] = 32
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 228] = 19
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 260] = 'INSUFFICIENT_OUTPUT'
            revert with memory
              from (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 192
               len (127 * ('cd', 100).length) + 100
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 196] = address(('cd', 68)[0])
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 228] = cd[4]
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 196 len (127 * ('cd', 100).length) + 64]
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 'NH{q', 1
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 192] = ('cd', 68).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 224 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(64 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 224] = ('cd', 100).length
        mem[(64 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(return_data.size) + 256 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(64 * ('cd', 68).length) + (98 * ('cd', 100).length) + ceil32(return_data.size) + 256] = 0
        if var242003 < 1:
            revert with 'NH{q', 17
        if var246002 < var246001:
            if var248001 >= ('cd', 100).length:
                revert with 'NH{q', 50
            # nil
        else:
            mem[(64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 256] = 32
            mem[(64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 288] = ('cd', 100).length
            mem[(64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 320 len 32 * ('cd', 100).length] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192 len 32 * ('cd', 100).length]
            return memory
              from (64 * ('cd', 68).length) + (3 * 32 * ('cd', 100).length) + ceil32(return_data.size) + 256
               len (158 * ('cd', 100).length) + 64
}



}
