contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function executeWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a33a22e6(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require msg.sender == stor0
    require ext_code.size(address(arg2))
    call address(arg2).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0d512ee4(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[96] = ('cd', 132).length
    mem[128 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[(32 * ('cd', 132).length) + 128] = ('cd', 36).length
    mem[(32 * ('cd', 132).length) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 192] = 96
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 224] = 96
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 36).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288] = ('cd', 36).length
        mem[64] = (32 * ('cd', 132).length) + (98 * ('cd', 36).length) + 320
        if not ('cd', 36).length:
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 132).length) + 128]:
                    revert with 'NH{q', 50
                _1167 = mem[(32 * idx) + (32 * ('cd', 132).length) + 160]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1178 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1186 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _1194 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1194]:
                    revert with 'NH{q', 50
                if address(_1178) < address(_1186):
                    mem[_1194 + 32] = address(_1178)
                    if 1 >= mem[_1194]:
                        revert with 'NH{q', 50
                    if address(_1178) < address(_1186):
                        mem[_1194 + 64] = address(_1186)
                    else:
                        mem[_1194 + 64] = address(_1178)
                    if 0 >= mem[_1194]:
                        revert with 'NH{q', 50
                    if not address(_1178):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1167))
                    staticcall address(_1167).getReserves() with:
                            gas gas_remaining wei
                    mem[_1194 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1194 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1194]:
                        revert with 'NH{q', 50
                    if address(_1178) == address(_1178):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                else:
                    mem[_1194 + 32] = address(_1186)
                    if 1 >= mem[_1194]:
                        revert with 'NH{q', 50
                    if address(_1178) < address(_1186):
                        mem[_1194 + 64] = address(_1186)
                    else:
                        mem[_1194 + 64] = address(_1178)
                    if 0 >= mem[_1194]:
                        revert with 'NH{q', 50
                    if not address(_1186):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1167))
                    staticcall address(_1167).getReserves() with:
                            gas gas_remaining wei
                    mem[_1194 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1194 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1194]:
                        revert with 'NH{q', 50
                    if address(_1178) == address(_1186):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                    if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                if 997 * s and ext_call.return_data[18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            _1158 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1158] = s
            mem[_1158 + 32] = (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256
            mem[_1158 + 64] = (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288
            require s >= cd[100]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[132] + 36)] == address(cd[((32 * idx + 1) + cd[132] + 36)])
                if address(cd[((32 * idx) + cd[132] + 36)]) == address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _2586 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_2586]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2586 + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 1 >= mem[_2586]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        mem[_2586 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                        if 0 >= mem[_2586]:
                            revert with 'NH{q', 50
                        if not address(cd[((32 * idx) + cd[132] + 36)]):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[mem[_1158 + 32]]:
                            revert with 'NH{q', 50
                        _2698 = mem[(32 * idx) + mem[_1158 + 32] + 32]
                        if idx >= mem[mem[_1158 + 64]]:
                            revert with 'NH{q', 50
                        _2746 = mem[(32 * idx) + mem[_1158 + 64] + 32]
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                            if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                                revert with 'NH{q', 17
                            if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                                revert with 'NH{q', 18
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2586 + 100] = 0 / (1000 * _2698) + (997 * s)
                                mem[_2586 + 132] = 0 / (1000 * _2698) + (997 * s)
                                mem[_2586 + 164] = 160
                                mem[_2586 + 260] = mem[_2586]
                                t = 0
                                u = _2586 + 32
                                v = _2586 + 292
                                while t < mem[_2586]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2586 + 196] = msg.sender
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2586 + 100] = 0 / (1000 * _2698) + (997 * s)
                                mem[_2586 + 132] = 0 / (1000 * _2698) + (997 * s)
                                mem[_2586 + 164] = 160
                                mem[_2586 + 260] = mem[_2586]
                                t = 0
                                u = _2586 + 32
                                v = _2586 + 292
                                while t < mem[_2586]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_2586 + 228] = block.timestamp + 5
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * _2698) + (997 * s)
                            continue 
                        if 997 * s and mem[(32 * idx) + mem[_1158 + 64] + 32] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[(32 * idx) + mem[_1158 + 64] + 32] / mem[(32 * idx) + mem[_1158 + 64] + 32] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2586 + 100] = 997 * s * _2746 / (1000 * _2698) + (997 * s)
                            mem[_2586 + 132] = 997 * s * _2746 / (1000 * _2698) + (997 * s)
                            mem[_2586 + 164] = 160
                            mem[_2586 + 260] = mem[_2586]
                            t = 0
                            u = _2586 + 32
                            v = _2586 + 292
                            while t < mem[_2586]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2586 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2586 + 100] = 997 * s * _2746 / (1000 * _2698) + (997 * s)
                            mem[_2586 + 132] = 997 * s * _2746 / (1000 * _2698) + (997 * s)
                            mem[_2586 + 164] = 160
                            mem[_2586 + 260] = mem[_2586]
                            t = 0
                            u = _2586 + 32
                            v = _2586 + 292
                            while t < mem[_2586]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2586 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * _2746 / (1000 * _2698) + (997 * s)
                        continue 
                    mem[_2586 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 0 >= mem[_2586]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1158 + 32]]:
                        revert with 'NH{q', 50
                    _2701 = mem[(32 * idx) + mem[_1158 + 32] + 32]
                    if idx >= mem[mem[_1158 + 64]]:
                        revert with 'NH{q', 50
                    _2747 = mem[(32 * idx) + mem[_1158 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2586 + 100] = 0 / (1000 * _2701) + (997 * s)
                            mem[_2586 + 132] = 0 / (1000 * _2701) + (997 * s)
                            mem[_2586 + 164] = 160
                            mem[_2586 + 260] = mem[_2586]
                            t = 0
                            u = _2586 + 32
                            v = _2586 + 292
                            while t < mem[_2586]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2586 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2586 + 100] = 0 / (1000 * _2701) + (997 * s)
                            mem[_2586 + 132] = 0 / (1000 * _2701) + (997 * s)
                            mem[_2586 + 164] = 160
                            mem[_2586 + 260] = mem[_2586]
                            t = 0
                            u = _2586 + 32
                            v = _2586 + 292
                            while t < mem[_2586]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2586 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2701) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1158 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1158 + 64] + 32] / mem[(32 * idx) + mem[_1158 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2586 + 100] = 997 * s * _2747 / (1000 * _2701) + (997 * s)
                        mem[_2586 + 132] = 997 * s * _2747 / (1000 * _2701) + (997 * s)
                        mem[_2586 + 164] = 160
                        mem[_2586 + 260] = mem[_2586]
                        t = 0
                        u = _2586 + 32
                        v = _2586 + 292
                        while t < mem[_2586]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2586 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2586 + 100] = 997 * s * _2747 / (1000 * _2701) + (997 * s)
                        mem[_2586 + 132] = 997 * s * _2747 / (1000 * _2701) + (997 * s)
                        mem[_2586 + 164] = 160
                        mem[_2586 + 260] = mem[_2586]
                        t = 0
                        u = _2586 + 32
                        v = _2586 + 292
                        while t < mem[_2586]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2586 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2747 / (1000 * _2701) + (997 * s)
                    continue 
                mem[_2586 + 32] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                if 1 >= mem[_2586]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2586 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                    if 0 >= mem[_2586]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1158 + 32]]:
                        revert with 'NH{q', 50
                    _2704 = mem[(32 * idx) + mem[_1158 + 32] + 32]
                    if idx >= mem[mem[_1158 + 64]]:
                        revert with 'NH{q', 50
                    _2748 = mem[(32 * idx) + mem[_1158 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2586 + 100] = 0 / (1000 * _2704) + (997 * s)
                            mem[_2586 + 132] = 0 / (1000 * _2704) + (997 * s)
                            mem[_2586 + 164] = 160
                            mem[_2586 + 260] = mem[_2586]
                            t = 0
                            u = _2586 + 32
                            v = _2586 + 292
                            while t < mem[_2586]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2586 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2586 + 100] = 0 / (1000 * _2704) + (997 * s)
                            mem[_2586 + 132] = 0 / (1000 * _2704) + (997 * s)
                            mem[_2586 + 164] = 160
                            mem[_2586 + 260] = mem[_2586]
                            t = 0
                            u = _2586 + 32
                            v = _2586 + 292
                            while t < mem[_2586]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2586 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2704) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1158 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1158 + 64] + 32] / mem[(32 * idx) + mem[_1158 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2586 + 100] = 997 * s * _2748 / (1000 * _2704) + (997 * s)
                        mem[_2586 + 132] = 997 * s * _2748 / (1000 * _2704) + (997 * s)
                        mem[_2586 + 164] = 160
                        mem[_2586 + 260] = mem[_2586]
                        t = 0
                        u = _2586 + 32
                        v = _2586 + 292
                        while t < mem[_2586]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2586 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2586 + 100] = 997 * s * _2748 / (1000 * _2704) + (997 * s)
                        mem[_2586 + 132] = 997 * s * _2748 / (1000 * _2704) + (997 * s)
                        mem[_2586 + 164] = 160
                        mem[_2586 + 260] = mem[_2586]
                        t = 0
                        u = _2586 + 32
                        v = _2586 + 292
                        while t < mem[_2586]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2586 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2748 / (1000 * _2704) + (997 * s)
                    continue 
                mem[_2586 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                if 0 >= mem[_2586]:
                    revert with 'NH{q', 50
                if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[mem[_1158 + 32]]:
                    revert with 'NH{q', 50
                _2707 = mem[(32 * idx) + mem[_1158 + 32] + 32]
                if idx >= mem[mem[_1158 + 64]]:
                    revert with 'NH{q', 50
                _2749 = mem[(32 * idx) + mem[_1158 + 64] + 32]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                    if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2586 + 100] = 0 / (1000 * _2707) + (997 * s)
                        mem[_2586 + 132] = 0 / (1000 * _2707) + (997 * s)
                        mem[_2586 + 164] = 160
                        mem[_2586 + 260] = mem[_2586]
                        t = 0
                        u = _2586 + 32
                        v = _2586 + 292
                        while t < mem[_2586]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2586 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2586 + 100] = 0 / (1000 * _2707) + (997 * s)
                        mem[_2586 + 132] = 0 / (1000 * _2707) + (997 * s)
                        mem[_2586 + 164] = 160
                        mem[_2586 + 260] = mem[_2586]
                        t = 0
                        u = _2586 + 32
                        v = _2586 + 292
                        while t < mem[_2586]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2586 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _2707) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + mem[_1158 + 64] + 32] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + mem[_1158 + 64] + 32]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + mem[_1158 + 64] + 32] / mem[(32 * idx) + mem[_1158 + 64] + 32] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + mem[_1158 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1158 + 32] + 32]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1158 + 32] + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + mem[_1158 + 32] + 32]) + (997 * s):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 36).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2586 + 100] = 997 * s * _2749 / (1000 * _2707) + (997 * s)
                    mem[_2586 + 132] = 997 * s * _2749 / (1000 * _2707) + (997 * s)
                    mem[_2586 + 164] = 160
                    mem[_2586 + 260] = mem[_2586]
                    t = 0
                    u = _2586 + 32
                    v = _2586 + 292
                    while t < mem[_2586]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2586 + 196] = msg.sender
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2586 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2586 + 100] = 997 * s * _2749 / (1000 * _2707) + (997 * s)
                    mem[_2586 + 132] = 997 * s * _2749 / (1000 * _2707) + (997 * s)
                    mem[_2586 + 164] = 160
                    mem[_2586 + 260] = mem[_2586]
                    t = 0
                    u = _2586 + 32
                    v = _2586 + 292
                    while t < mem[_2586]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2586 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_2586 + 228] = block.timestamp + 5
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2586 + (32 * mem[_2586]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _2749 / (1000 * _2707) + (997 * s)
                continue 
        else:
            mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 132).length) + 128]:
                    revert with 'NH{q', 50
                _1170 = mem[(32 * idx) + (32 * ('cd', 132).length) + 160]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1179 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1187 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _1195 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1195]:
                    revert with 'NH{q', 50
                if address(_1179) < address(_1187):
                    mem[_1195 + 32] = address(_1179)
                    if 1 >= mem[_1195]:
                        revert with 'NH{q', 50
                    if address(_1179) < address(_1187):
                        mem[_1195 + 64] = address(_1187)
                    else:
                        mem[_1195 + 64] = address(_1179)
                    if 0 >= mem[_1195]:
                        revert with 'NH{q', 50
                    if not address(_1179):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1170))
                    staticcall address(_1170).getReserves() with:
                            gas gas_remaining wei
                    mem[_1195 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1195 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1195]:
                        revert with 'NH{q', 50
                    if address(_1179) == address(_1179):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                else:
                    mem[_1195 + 32] = address(_1187)
                    if 1 >= mem[_1195]:
                        revert with 'NH{q', 50
                    if address(_1179) < address(_1187):
                        mem[_1195 + 64] = address(_1187)
                    else:
                        mem[_1195 + 64] = address(_1179)
                    if 0 >= mem[_1195]:
                        revert with 'NH{q', 50
                    if not address(_1187):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1170))
                    staticcall address(_1170).getReserves() with:
                            gas gas_remaining wei
                    mem[_1195 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1195 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1195]:
                        revert with 'NH{q', 50
                    if address(_1179) == address(_1187):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                    if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                if 997 * s and ext_call.return_data[18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            _1160 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1160] = s
            mem[_1160 + 32] = (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256
            mem[_1160 + 64] = (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288
            require s >= cd[100]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[132] + 36)] == address(cd[((32 * idx + 1) + cd[132] + 36)])
                if address(cd[((32 * idx) + cd[132] + 36)]) == address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _2587 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_2587]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2587 + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 1 >= mem[_2587]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        mem[_2587 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                        if 0 >= mem[_2587]:
                            revert with 'NH{q', 50
                        if not address(cd[((32 * idx) + cd[132] + 36)]):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[mem[_1160 + 32]]:
                            revert with 'NH{q', 50
                        _2710 = mem[(32 * idx) + mem[_1160 + 32] + 32]
                        if idx >= mem[mem[_1160 + 64]]:
                            revert with 'NH{q', 50
                        _2750 = mem[(32 * idx) + mem[_1160 + 64] + 32]
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                            if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                                revert with 'NH{q', 17
                            if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                                revert with 'NH{q', 18
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2587 + 100] = 0 / (1000 * _2710) + (997 * s)
                                mem[_2587 + 132] = 0 / (1000 * _2710) + (997 * s)
                                mem[_2587 + 164] = 160
                                mem[_2587 + 260] = mem[_2587]
                                t = 0
                                u = _2587 + 32
                                v = _2587 + 292
                                while t < mem[_2587]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2587 + 196] = msg.sender
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2587 + 100] = 0 / (1000 * _2710) + (997 * s)
                                mem[_2587 + 132] = 0 / (1000 * _2710) + (997 * s)
                                mem[_2587 + 164] = 160
                                mem[_2587 + 260] = mem[_2587]
                                t = 0
                                u = _2587 + 32
                                v = _2587 + 292
                                while t < mem[_2587]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_2587 + 228] = block.timestamp + 5
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * _2710) + (997 * s)
                            continue 
                        if 997 * s and mem[(32 * idx) + mem[_1160 + 64] + 32] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[(32 * idx) + mem[_1160 + 64] + 32] / mem[(32 * idx) + mem[_1160 + 64] + 32] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2587 + 100] = 997 * s * _2750 / (1000 * _2710) + (997 * s)
                            mem[_2587 + 132] = 997 * s * _2750 / (1000 * _2710) + (997 * s)
                            mem[_2587 + 164] = 160
                            mem[_2587 + 260] = mem[_2587]
                            t = 0
                            u = _2587 + 32
                            v = _2587 + 292
                            while t < mem[_2587]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2587 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2587 + 100] = 997 * s * _2750 / (1000 * _2710) + (997 * s)
                            mem[_2587 + 132] = 997 * s * _2750 / (1000 * _2710) + (997 * s)
                            mem[_2587 + 164] = 160
                            mem[_2587 + 260] = mem[_2587]
                            t = 0
                            u = _2587 + 32
                            v = _2587 + 292
                            while t < mem[_2587]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2587 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * _2750 / (1000 * _2710) + (997 * s)
                        continue 
                    mem[_2587 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 0 >= mem[_2587]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1160 + 32]]:
                        revert with 'NH{q', 50
                    _2713 = mem[(32 * idx) + mem[_1160 + 32] + 32]
                    if idx >= mem[mem[_1160 + 64]]:
                        revert with 'NH{q', 50
                    _2751 = mem[(32 * idx) + mem[_1160 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2587 + 100] = 0 / (1000 * _2713) + (997 * s)
                            mem[_2587 + 132] = 0 / (1000 * _2713) + (997 * s)
                            mem[_2587 + 164] = 160
                            mem[_2587 + 260] = mem[_2587]
                            t = 0
                            u = _2587 + 32
                            v = _2587 + 292
                            while t < mem[_2587]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2587 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2587 + 100] = 0 / (1000 * _2713) + (997 * s)
                            mem[_2587 + 132] = 0 / (1000 * _2713) + (997 * s)
                            mem[_2587 + 164] = 160
                            mem[_2587 + 260] = mem[_2587]
                            t = 0
                            u = _2587 + 32
                            v = _2587 + 292
                            while t < mem[_2587]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2587 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2713) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1160 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1160 + 64] + 32] / mem[(32 * idx) + mem[_1160 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2587 + 100] = 997 * s * _2751 / (1000 * _2713) + (997 * s)
                        mem[_2587 + 132] = 997 * s * _2751 / (1000 * _2713) + (997 * s)
                        mem[_2587 + 164] = 160
                        mem[_2587 + 260] = mem[_2587]
                        t = 0
                        u = _2587 + 32
                        v = _2587 + 292
                        while t < mem[_2587]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2587 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2587 + 100] = 997 * s * _2751 / (1000 * _2713) + (997 * s)
                        mem[_2587 + 132] = 997 * s * _2751 / (1000 * _2713) + (997 * s)
                        mem[_2587 + 164] = 160
                        mem[_2587 + 260] = mem[_2587]
                        t = 0
                        u = _2587 + 32
                        v = _2587 + 292
                        while t < mem[_2587]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2587 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2751 / (1000 * _2713) + (997 * s)
                    continue 
                mem[_2587 + 32] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                if 1 >= mem[_2587]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2587 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                    if 0 >= mem[_2587]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1160 + 32]]:
                        revert with 'NH{q', 50
                    _2716 = mem[(32 * idx) + mem[_1160 + 32] + 32]
                    if idx >= mem[mem[_1160 + 64]]:
                        revert with 'NH{q', 50
                    _2752 = mem[(32 * idx) + mem[_1160 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2587 + 100] = 0 / (1000 * _2716) + (997 * s)
                            mem[_2587 + 132] = 0 / (1000 * _2716) + (997 * s)
                            mem[_2587 + 164] = 160
                            mem[_2587 + 260] = mem[_2587]
                            t = 0
                            u = _2587 + 32
                            v = _2587 + 292
                            while t < mem[_2587]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2587 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2587 + 100] = 0 / (1000 * _2716) + (997 * s)
                            mem[_2587 + 132] = 0 / (1000 * _2716) + (997 * s)
                            mem[_2587 + 164] = 160
                            mem[_2587 + 260] = mem[_2587]
                            t = 0
                            u = _2587 + 32
                            v = _2587 + 292
                            while t < mem[_2587]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2587 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2716) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1160 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1160 + 64] + 32] / mem[(32 * idx) + mem[_1160 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2587 + 100] = 997 * s * _2752 / (1000 * _2716) + (997 * s)
                        mem[_2587 + 132] = 997 * s * _2752 / (1000 * _2716) + (997 * s)
                        mem[_2587 + 164] = 160
                        mem[_2587 + 260] = mem[_2587]
                        t = 0
                        u = _2587 + 32
                        v = _2587 + 292
                        while t < mem[_2587]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2587 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2587 + 100] = 997 * s * _2752 / (1000 * _2716) + (997 * s)
                        mem[_2587 + 132] = 997 * s * _2752 / (1000 * _2716) + (997 * s)
                        mem[_2587 + 164] = 160
                        mem[_2587 + 260] = mem[_2587]
                        t = 0
                        u = _2587 + 32
                        v = _2587 + 292
                        while t < mem[_2587]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2587 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2752 / (1000 * _2716) + (997 * s)
                    continue 
                mem[_2587 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                if 0 >= mem[_2587]:
                    revert with 'NH{q', 50
                if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[mem[_1160 + 32]]:
                    revert with 'NH{q', 50
                _2719 = mem[(32 * idx) + mem[_1160 + 32] + 32]
                if idx >= mem[mem[_1160 + 64]]:
                    revert with 'NH{q', 50
                _2753 = mem[(32 * idx) + mem[_1160 + 64] + 32]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                    if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2587 + 100] = 0 / (1000 * _2719) + (997 * s)
                        mem[_2587 + 132] = 0 / (1000 * _2719) + (997 * s)
                        mem[_2587 + 164] = 160
                        mem[_2587 + 260] = mem[_2587]
                        t = 0
                        u = _2587 + 32
                        v = _2587 + 292
                        while t < mem[_2587]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2587 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2587 + 100] = 0 / (1000 * _2719) + (997 * s)
                        mem[_2587 + 132] = 0 / (1000 * _2719) + (997 * s)
                        mem[_2587 + 164] = 160
                        mem[_2587 + 260] = mem[_2587]
                        t = 0
                        u = _2587 + 32
                        v = _2587 + 292
                        while t < mem[_2587]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2587 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _2719) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + mem[_1160 + 64] + 32] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + mem[_1160 + 64] + 32]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + mem[_1160 + 64] + 32] / mem[(32 * idx) + mem[_1160 + 64] + 32] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + mem[_1160 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1160 + 32] + 32]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1160 + 32] + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + mem[_1160 + 32] + 32]) + (997 * s):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 36).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2587 + 100] = 997 * s * _2753 / (1000 * _2719) + (997 * s)
                    mem[_2587 + 132] = 997 * s * _2753 / (1000 * _2719) + (997 * s)
                    mem[_2587 + 164] = 160
                    mem[_2587 + 260] = mem[_2587]
                    t = 0
                    u = _2587 + 32
                    v = _2587 + 292
                    while t < mem[_2587]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2587 + 196] = msg.sender
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2587 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2587 + 100] = 997 * s * _2753 / (1000 * _2719) + (997 * s)
                    mem[_2587 + 132] = 997 * s * _2753 / (1000 * _2719) + (997 * s)
                    mem[_2587 + 164] = 160
                    mem[_2587 + 260] = mem[_2587]
                    t = 0
                    u = _2587 + 32
                    v = _2587 + 292
                    while t < mem[_2587]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2587 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_2587 + 228] = block.timestamp + 5
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2587 + (32 * mem[_2587]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _2753 / (1000 * _2719) + (997 * s)
                continue 
    else:
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if ('cd', 36).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288] = ('cd', 36).length
        mem[64] = (32 * ('cd', 132).length) + (98 * ('cd', 36).length) + 320
        if not ('cd', 36).length:
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 132).length) + 128]:
                    revert with 'NH{q', 50
                _1173 = mem[(32 * idx) + (32 * ('cd', 132).length) + 160]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1180 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1188 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _1196 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1196]:
                    revert with 'NH{q', 50
                if address(_1180) < address(_1188):
                    mem[_1196 + 32] = address(_1180)
                    if 1 >= mem[_1196]:
                        revert with 'NH{q', 50
                    if address(_1180) < address(_1188):
                        mem[_1196 + 64] = address(_1188)
                    else:
                        mem[_1196 + 64] = address(_1180)
                    if 0 >= mem[_1196]:
                        revert with 'NH{q', 50
                    if not address(_1180):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1173))
                    staticcall address(_1173).getReserves() with:
                            gas gas_remaining wei
                    mem[_1196 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1196 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1196]:
                        revert with 'NH{q', 50
                    if address(_1180) == address(_1180):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                else:
                    mem[_1196 + 32] = address(_1188)
                    if 1 >= mem[_1196]:
                        revert with 'NH{q', 50
                    if address(_1180) < address(_1188):
                        mem[_1196 + 64] = address(_1188)
                    else:
                        mem[_1196 + 64] = address(_1180)
                    if 0 >= mem[_1196]:
                        revert with 'NH{q', 50
                    if not address(_1188):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1173))
                    staticcall address(_1173).getReserves() with:
                            gas gas_remaining wei
                    mem[_1196 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1196 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1196]:
                        revert with 'NH{q', 50
                    if address(_1180) == address(_1188):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                    if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                if 997 * s and ext_call.return_data[18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            _1162 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1162] = s
            mem[_1162 + 32] = (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256
            mem[_1162 + 64] = (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288
            require s >= cd[100]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[132] + 36)] == address(cd[((32 * idx + 1) + cd[132] + 36)])
                if address(cd[((32 * idx) + cd[132] + 36)]) == address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _2588 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_2588]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2588 + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 1 >= mem[_2588]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        mem[_2588 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                        if 0 >= mem[_2588]:
                            revert with 'NH{q', 50
                        if not address(cd[((32 * idx) + cd[132] + 36)]):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[mem[_1162 + 32]]:
                            revert with 'NH{q', 50
                        _2722 = mem[(32 * idx) + mem[_1162 + 32] + 32]
                        if idx >= mem[mem[_1162 + 64]]:
                            revert with 'NH{q', 50
                        _2754 = mem[(32 * idx) + mem[_1162 + 64] + 32]
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                            if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                                revert with 'NH{q', 17
                            if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                                revert with 'NH{q', 18
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2588 + 100] = 0 / (1000 * _2722) + (997 * s)
                                mem[_2588 + 132] = 0 / (1000 * _2722) + (997 * s)
                                mem[_2588 + 164] = 160
                                mem[_2588 + 260] = mem[_2588]
                                t = 0
                                u = _2588 + 32
                                v = _2588 + 292
                                while t < mem[_2588]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2588 + 196] = msg.sender
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2588 + 100] = 0 / (1000 * _2722) + (997 * s)
                                mem[_2588 + 132] = 0 / (1000 * _2722) + (997 * s)
                                mem[_2588 + 164] = 160
                                mem[_2588 + 260] = mem[_2588]
                                t = 0
                                u = _2588 + 32
                                v = _2588 + 292
                                while t < mem[_2588]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_2588 + 228] = block.timestamp + 5
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * _2722) + (997 * s)
                            continue 
                        if 997 * s and mem[(32 * idx) + mem[_1162 + 64] + 32] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[(32 * idx) + mem[_1162 + 64] + 32] / mem[(32 * idx) + mem[_1162 + 64] + 32] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2588 + 100] = 997 * s * _2754 / (1000 * _2722) + (997 * s)
                            mem[_2588 + 132] = 997 * s * _2754 / (1000 * _2722) + (997 * s)
                            mem[_2588 + 164] = 160
                            mem[_2588 + 260] = mem[_2588]
                            t = 0
                            u = _2588 + 32
                            v = _2588 + 292
                            while t < mem[_2588]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2588 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2588 + 100] = 997 * s * _2754 / (1000 * _2722) + (997 * s)
                            mem[_2588 + 132] = 997 * s * _2754 / (1000 * _2722) + (997 * s)
                            mem[_2588 + 164] = 160
                            mem[_2588 + 260] = mem[_2588]
                            t = 0
                            u = _2588 + 32
                            v = _2588 + 292
                            while t < mem[_2588]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2588 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * _2754 / (1000 * _2722) + (997 * s)
                        continue 
                    mem[_2588 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 0 >= mem[_2588]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1162 + 32]]:
                        revert with 'NH{q', 50
                    _2725 = mem[(32 * idx) + mem[_1162 + 32] + 32]
                    if idx >= mem[mem[_1162 + 64]]:
                        revert with 'NH{q', 50
                    _2755 = mem[(32 * idx) + mem[_1162 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2588 + 100] = 0 / (1000 * _2725) + (997 * s)
                            mem[_2588 + 132] = 0 / (1000 * _2725) + (997 * s)
                            mem[_2588 + 164] = 160
                            mem[_2588 + 260] = mem[_2588]
                            t = 0
                            u = _2588 + 32
                            v = _2588 + 292
                            while t < mem[_2588]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2588 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2588 + 100] = 0 / (1000 * _2725) + (997 * s)
                            mem[_2588 + 132] = 0 / (1000 * _2725) + (997 * s)
                            mem[_2588 + 164] = 160
                            mem[_2588 + 260] = mem[_2588]
                            t = 0
                            u = _2588 + 32
                            v = _2588 + 292
                            while t < mem[_2588]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2588 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2725) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1162 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1162 + 64] + 32] / mem[(32 * idx) + mem[_1162 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2588 + 100] = 997 * s * _2755 / (1000 * _2725) + (997 * s)
                        mem[_2588 + 132] = 997 * s * _2755 / (1000 * _2725) + (997 * s)
                        mem[_2588 + 164] = 160
                        mem[_2588 + 260] = mem[_2588]
                        t = 0
                        u = _2588 + 32
                        v = _2588 + 292
                        while t < mem[_2588]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2588 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2588 + 100] = 997 * s * _2755 / (1000 * _2725) + (997 * s)
                        mem[_2588 + 132] = 997 * s * _2755 / (1000 * _2725) + (997 * s)
                        mem[_2588 + 164] = 160
                        mem[_2588 + 260] = mem[_2588]
                        t = 0
                        u = _2588 + 32
                        v = _2588 + 292
                        while t < mem[_2588]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2588 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2755 / (1000 * _2725) + (997 * s)
                    continue 
                mem[_2588 + 32] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                if 1 >= mem[_2588]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2588 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                    if 0 >= mem[_2588]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1162 + 32]]:
                        revert with 'NH{q', 50
                    _2728 = mem[(32 * idx) + mem[_1162 + 32] + 32]
                    if idx >= mem[mem[_1162 + 64]]:
                        revert with 'NH{q', 50
                    _2756 = mem[(32 * idx) + mem[_1162 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2588 + 100] = 0 / (1000 * _2728) + (997 * s)
                            mem[_2588 + 132] = 0 / (1000 * _2728) + (997 * s)
                            mem[_2588 + 164] = 160
                            mem[_2588 + 260] = mem[_2588]
                            t = 0
                            u = _2588 + 32
                            v = _2588 + 292
                            while t < mem[_2588]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2588 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2588 + 100] = 0 / (1000 * _2728) + (997 * s)
                            mem[_2588 + 132] = 0 / (1000 * _2728) + (997 * s)
                            mem[_2588 + 164] = 160
                            mem[_2588 + 260] = mem[_2588]
                            t = 0
                            u = _2588 + 32
                            v = _2588 + 292
                            while t < mem[_2588]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2588 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2728) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1162 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1162 + 64] + 32] / mem[(32 * idx) + mem[_1162 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2588 + 100] = 997 * s * _2756 / (1000 * _2728) + (997 * s)
                        mem[_2588 + 132] = 997 * s * _2756 / (1000 * _2728) + (997 * s)
                        mem[_2588 + 164] = 160
                        mem[_2588 + 260] = mem[_2588]
                        t = 0
                        u = _2588 + 32
                        v = _2588 + 292
                        while t < mem[_2588]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2588 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2588 + 100] = 997 * s * _2756 / (1000 * _2728) + (997 * s)
                        mem[_2588 + 132] = 997 * s * _2756 / (1000 * _2728) + (997 * s)
                        mem[_2588 + 164] = 160
                        mem[_2588 + 260] = mem[_2588]
                        t = 0
                        u = _2588 + 32
                        v = _2588 + 292
                        while t < mem[_2588]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2588 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2756 / (1000 * _2728) + (997 * s)
                    continue 
                mem[_2588 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                if 0 >= mem[_2588]:
                    revert with 'NH{q', 50
                if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[mem[_1162 + 32]]:
                    revert with 'NH{q', 50
                _2731 = mem[(32 * idx) + mem[_1162 + 32] + 32]
                if idx >= mem[mem[_1162 + 64]]:
                    revert with 'NH{q', 50
                _2757 = mem[(32 * idx) + mem[_1162 + 64] + 32]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                    if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2588 + 100] = 0 / (1000 * _2731) + (997 * s)
                        mem[_2588 + 132] = 0 / (1000 * _2731) + (997 * s)
                        mem[_2588 + 164] = 160
                        mem[_2588 + 260] = mem[_2588]
                        t = 0
                        u = _2588 + 32
                        v = _2588 + 292
                        while t < mem[_2588]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2588 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2588 + 100] = 0 / (1000 * _2731) + (997 * s)
                        mem[_2588 + 132] = 0 / (1000 * _2731) + (997 * s)
                        mem[_2588 + 164] = 160
                        mem[_2588 + 260] = mem[_2588]
                        t = 0
                        u = _2588 + 32
                        v = _2588 + 292
                        while t < mem[_2588]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2588 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _2731) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + mem[_1162 + 64] + 32] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + mem[_1162 + 64] + 32]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + mem[_1162 + 64] + 32] / mem[(32 * idx) + mem[_1162 + 64] + 32] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + mem[_1162 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1162 + 32] + 32]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1162 + 32] + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + mem[_1162 + 32] + 32]) + (997 * s):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 36).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2588 + 100] = 997 * s * _2757 / (1000 * _2731) + (997 * s)
                    mem[_2588 + 132] = 997 * s * _2757 / (1000 * _2731) + (997 * s)
                    mem[_2588 + 164] = 160
                    mem[_2588 + 260] = mem[_2588]
                    t = 0
                    u = _2588 + 32
                    v = _2588 + 292
                    while t < mem[_2588]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2588 + 196] = msg.sender
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2588 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2588 + 100] = 997 * s * _2757 / (1000 * _2731) + (997 * s)
                    mem[_2588 + 132] = 997 * s * _2757 / (1000 * _2731) + (997 * s)
                    mem[_2588 + 164] = 160
                    mem[_2588 + 260] = mem[_2588]
                    t = 0
                    u = _2588 + 32
                    v = _2588 + 292
                    while t < mem[_2588]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2588 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_2588 + 228] = block.timestamp + 5
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2588 + (32 * mem[_2588]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _2757 / (1000 * _2731) + (997 * s)
                continue 
        else:
            mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[(32 * ('cd', 132).length) + 128]:
                    revert with 'NH{q', 50
                _1176 = mem[(32 * idx) + (32 * ('cd', 132).length) + 160]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1181 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1189 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _1197 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1197]:
                    revert with 'NH{q', 50
                if address(_1181) < address(_1189):
                    mem[_1197 + 32] = address(_1181)
                    if 1 >= mem[_1197]:
                        revert with 'NH{q', 50
                    if address(_1181) < address(_1189):
                        mem[_1197 + 64] = address(_1189)
                    else:
                        mem[_1197 + 64] = address(_1181)
                    if 0 >= mem[_1197]:
                        revert with 'NH{q', 50
                    if not address(_1181):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1176))
                    staticcall address(_1176).getReserves() with:
                            gas gas_remaining wei
                    mem[_1197 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1197 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1197]:
                        revert with 'NH{q', 50
                    if address(_1181) == address(_1181):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                else:
                    mem[_1197 + 32] = address(_1189)
                    if 1 >= mem[_1197]:
                        revert with 'NH{q', 50
                    if address(_1181) < address(_1189):
                        mem[_1197 + 64] = address(_1189)
                    else:
                        mem[_1197 + 64] = address(_1181)
                    if 0 >= mem[_1197]:
                        revert with 'NH{q', 50
                    if not address(_1189):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(address(_1176))
                    staticcall address(_1176).getReserves() with:
                            gas gas_remaining wei
                    mem[_1197 + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1197 + ceil32(return_data.size) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_1197]:
                        revert with 'NH{q', 50
                    if address(_1181) == address(_1189):
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                                revert with 'NH{q', 18
                            if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                            if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                            continue 
                        if 997 * s and ext_call.return_data[50 len 14] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 18
                        if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * s):
                            revert with 'NH{q', 18
                        if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[18 len 14]
                        if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[32])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                        continue 
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                        revert with 'NH{q', 18
                    if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                    if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                    continue 
                if 997 * s and ext_call.return_data[18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * s * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx >= mem[(32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 288] = ext_call.return_data[50 len 14]
                if idx >= mem[(32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 320] = Mask(112, 0, ext_call.return_data[0])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
                continue 
            _1164 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1164] = s
            mem[_1164 + 32] = (32 * ('cd', 132).length) + (32 * ('cd', 36).length) + 256
            mem[_1164 + 64] = (32 * ('cd', 132).length) + (64 * ('cd', 36).length) + 288
            require s >= cd[100]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(('cd', 36)[0])
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stor1)
            call stor1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(('cd', 36)[0]), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + cd[132] + 36)] == address(cd[((32 * idx + 1) + cd[132] + 36)])
                if address(cd[((32 * idx) + cd[132] + 36)]) == address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                _2589 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_2589]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2589 + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 1 >= mem[_2589]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        mem[_2589 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                        if 0 >= mem[_2589]:
                            revert with 'NH{q', 50
                        if not address(cd[((32 * idx) + cd[132] + 36)]):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[mem[_1164 + 32]]:
                            revert with 'NH{q', 50
                        _2734 = mem[(32 * idx) + mem[_1164 + 32] + 32]
                        if idx >= mem[mem[_1164 + 64]]:
                            revert with 'NH{q', 50
                        _2758 = mem[(32 * idx) + mem[_1164 + 64] + 32]
                        if s and 997 > -1 / s:
                            revert with 'NH{q', 17
                        if 997 * s / 997 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                            if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                                revert with 'NH{q', 17
                            if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                                revert with 'NH{q', 17
                            if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                                revert with 'NH{q', 18
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length - 1:
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2589 + 100] = 0 / (1000 * _2734) + (997 * s)
                                mem[_2589 + 132] = 0 / (1000 * _2734) + (997 * s)
                                mem[_2589 + 164] = 160
                                mem[_2589 + 260] = mem[_2589]
                                t = 0
                                u = _2589 + 32
                                v = _2589 + 292
                                while t < mem[_2589]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2589 + 196] = msg.sender
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                                if idx >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                                if block.timestamp > -6:
                                    revert with 'NH{q', 17
                                mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_2589 + 100] = 0 / (1000 * _2734) + (997 * s)
                                mem[_2589 + 132] = 0 / (1000 * _2734) + (997 * s)
                                mem[_2589 + 164] = 160
                                mem[_2589 + 260] = mem[_2589]
                                t = 0
                                u = _2589 + 32
                                v = _2589 + 292
                                while t < mem[_2589]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[_2589 + 228] = block.timestamp + 5
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (1000 * _2734) + (997 * s)
                            continue 
                        if 997 * s and mem[(32 * idx) + mem[_1164 + 64] + 32] > -1 / 997 * s:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                            revert with 'NH{q', 18
                        if 997 * s * mem[(32 * idx) + mem[_1164 + 64] + 32] / mem[(32 * idx) + mem[_1164 + 64] + 32] != 997 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2589 + 100] = 997 * s * _2758 / (1000 * _2734) + (997 * s)
                            mem[_2589 + 132] = 997 * s * _2758 / (1000 * _2734) + (997 * s)
                            mem[_2589 + 164] = 160
                            mem[_2589 + 260] = mem[_2589]
                            t = 0
                            u = _2589 + 32
                            v = _2589 + 292
                            while t < mem[_2589]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2589 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2589 + 100] = 997 * s * _2758 / (1000 * _2734) + (997 * s)
                            mem[_2589 + 132] = 997 * s * _2758 / (1000 * _2734) + (997 * s)
                            mem[_2589 + 164] = 160
                            mem[_2589 + 260] = mem[_2589]
                            t = 0
                            u = _2589 + 32
                            v = _2589 + 292
                            while t < mem[_2589]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2589 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 997 * s * _2758 / (1000 * _2734) + (997 * s)
                        continue 
                    mem[_2589 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                    if 0 >= mem[_2589]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1164 + 32]]:
                        revert with 'NH{q', 50
                    _2737 = mem[(32 * idx) + mem[_1164 + 32] + 32]
                    if idx >= mem[mem[_1164 + 64]]:
                        revert with 'NH{q', 50
                    _2759 = mem[(32 * idx) + mem[_1164 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2589 + 100] = 0 / (1000 * _2737) + (997 * s)
                            mem[_2589 + 132] = 0 / (1000 * _2737) + (997 * s)
                            mem[_2589 + 164] = 160
                            mem[_2589 + 260] = mem[_2589]
                            t = 0
                            u = _2589 + 32
                            v = _2589 + 292
                            while t < mem[_2589]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2589 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2589 + 100] = 0 / (1000 * _2737) + (997 * s)
                            mem[_2589 + 132] = 0 / (1000 * _2737) + (997 * s)
                            mem[_2589 + 164] = 160
                            mem[_2589 + 260] = mem[_2589]
                            t = 0
                            u = _2589 + 32
                            v = _2589 + 292
                            while t < mem[_2589]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2589 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2737) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1164 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1164 + 64] + 32] / mem[(32 * idx) + mem[_1164 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2589 + 100] = 997 * s * _2759 / (1000 * _2737) + (997 * s)
                        mem[_2589 + 132] = 997 * s * _2759 / (1000 * _2737) + (997 * s)
                        mem[_2589 + 164] = 160
                        mem[_2589 + 260] = mem[_2589]
                        t = 0
                        u = _2589 + 32
                        v = _2589 + 292
                        while t < mem[_2589]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2589 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2589 + 100] = 997 * s * _2759 / (1000 * _2737) + (997 * s)
                        mem[_2589 + 132] = 997 * s * _2759 / (1000 * _2737) + (997 * s)
                        mem[_2589 + 164] = 160
                        mem[_2589 + 260] = mem[_2589]
                        t = 0
                        u = _2589 + 32
                        v = _2589 + 292
                        while t < mem[_2589]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2589 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2759 / (1000 * _2737) + (997 * s)
                    continue 
                mem[_2589 + 32] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                if 1 >= mem[_2589]:
                    revert with 'NH{q', 50
                if address(cd[((32 * idx) + cd[132] + 36)]) < address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    mem[_2589 + 64] = address(cd[((32 * idx + 1) + cd[132] + 36)])
                    if 0 >= mem[_2589]:
                        revert with 'NH{q', 50
                    if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[mem[_1164 + 32]]:
                        revert with 'NH{q', 50
                    _2740 = mem[(32 * idx) + mem[_1164 + 32] + 32]
                    if idx >= mem[mem[_1164 + 64]]:
                        revert with 'NH{q', 50
                    _2760 = mem[(32 * idx) + mem[_1164 + 64] + 32]
                    if s and 997 > -1 / s:
                        revert with 'NH{q', 17
                    if 997 * s / 997 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                        if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 'NH{q', 17
                        if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                            revert with 'NH{q', 17
                        if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                            revert with 'NH{q', 18
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2589 + 100] = 0 / (1000 * _2740) + (997 * s)
                            mem[_2589 + 132] = 0 / (1000 * _2740) + (997 * s)
                            mem[_2589 + 164] = 160
                            mem[_2589 + 260] = mem[_2589]
                            t = 0
                            u = _2589 + 32
                            v = _2589 + 292
                            while t < mem[_2589]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2589 + 196] = msg.sender
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            if block.timestamp > -6:
                                revert with 'NH{q', 17
                            mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2589 + 100] = 0 / (1000 * _2740) + (997 * s)
                            mem[_2589 + 132] = 0 / (1000 * _2740) + (997 * s)
                            mem[_2589 + 164] = 160
                            mem[_2589 + 260] = mem[_2589]
                            t = 0
                            u = _2589 + 32
                            v = _2589 + 292
                            while t < mem[_2589]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_2589 + 228] = block.timestamp + 5
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (1000 * _2740) + (997 * s)
                        continue 
                    if 997 * s and mem[(32 * idx) + mem[_1164 + 64] + 32] > -1 / 997 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                        revert with 'NH{q', 18
                    if 997 * s * mem[(32 * idx) + mem[_1164 + 64] + 32] / mem[(32 * idx) + mem[_1164 + 64] + 32] != 997 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2589 + 100] = 997 * s * _2760 / (1000 * _2740) + (997 * s)
                        mem[_2589 + 132] = 997 * s * _2760 / (1000 * _2740) + (997 * s)
                        mem[_2589 + 164] = 160
                        mem[_2589 + 260] = mem[_2589]
                        t = 0
                        u = _2589 + 32
                        v = _2589 + 292
                        while t < mem[_2589]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2589 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2589 + 100] = 997 * s * _2760 / (1000 * _2740) + (997 * s)
                        mem[_2589 + 132] = 997 * s * _2760 / (1000 * _2740) + (997 * s)
                        mem[_2589 + 164] = 160
                        mem[_2589 + 260] = mem[_2589]
                        t = 0
                        u = _2589 + 32
                        v = _2589 + 292
                        while t < mem[_2589]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2589 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 997 * s * _2760 / (1000 * _2740) + (997 * s)
                    continue 
                mem[_2589 + 64] = address(cd[((32 * idx) + cd[132] + 36)])
                if 0 >= mem[_2589]:
                    revert with 'NH{q', 50
                if not address(cd[((32 * idx + 1) + cd[132] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[mem[_1164 + 32]]:
                    revert with 'NH{q', 50
                _2743 = mem[(32 * idx) + mem[_1164 + 32] + 32]
                if idx >= mem[mem[_1164 + 64]]:
                    revert with 'NH{q', 50
                _2761 = mem[(32 * idx) + mem[_1164 + 64] + 32]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                    if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 'NH{q', 17
                    if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                        revert with 'NH{q', 17
                    if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                        revert with 'NH{q', 18
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2589 + 100] = 0 / (1000 * _2743) + (997 * s)
                        mem[_2589 + 132] = 0 / (1000 * _2743) + (997 * s)
                        mem[_2589 + 164] = 160
                        mem[_2589 + 260] = mem[_2589]
                        t = 0
                        u = _2589 + 32
                        v = _2589 + 292
                        while t < mem[_2589]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2589 + 196] = msg.sender
                    else:
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        if block.timestamp > -6:
                            revert with 'NH{q', 17
                        mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_2589 + 100] = 0 / (1000 * _2743) + (997 * s)
                        mem[_2589 + 132] = 0 / (1000 * _2743) + (997 * s)
                        mem[_2589 + 164] = 160
                        mem[_2589 + 260] = mem[_2589]
                        t = 0
                        u = _2589 + 32
                        v = _2589 + 292
                        while t < mem[_2589]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_2589 + 228] = block.timestamp + 5
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (1000 * _2743) + (997 * s)
                    continue 
                if 997 * s and mem[(32 * idx) + mem[_1164 + 64] + 32] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + mem[_1164 + 64] + 32]:
                    revert with 'NH{q', 18
                if 997 * s * mem[(32 * idx) + mem[_1164 + 64] + 32] / mem[(32 * idx) + mem[_1164 + 64] + 32] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + mem[_1164 + 32] + 32] and 1000 > -1 / mem[(32 * idx) + mem[_1164 + 32] + 32]:
                    revert with 'NH{q', 17
                if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] / 1000 != mem[(32 * idx) + mem[_1164 + 32] + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s) < 1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * mem[(32 * idx) + mem[_1164 + 32] + 32]) + (997 * s):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if idx >= ('cd', 36).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2589 + 100] = 997 * s * _2761 / (1000 * _2743) + (997 * s)
                    mem[_2589 + 132] = 997 * s * _2761 / (1000 * _2743) + (997 * s)
                    mem[_2589 + 164] = 160
                    mem[_2589 + 260] = mem[_2589]
                    t = 0
                    u = _2589 + 32
                    v = _2589 + 292
                    while t < mem[_2589]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2589 + 196] = msg.sender
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if block.timestamp > -6:
                        revert with 'NH{q', 17
                    mem[_2589 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[_2589 + 100] = 997 * s * _2761 / (1000 * _2743) + (997 * s)
                    mem[_2589 + 132] = 997 * s * _2761 / (1000 * _2743) + (997 * s)
                    mem[_2589 + 164] = 160
                    mem[_2589 + 260] = mem[_2589]
                    t = 0
                    u = _2589 + 32
                    v = _2589 + 292
                    while t < mem[_2589]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_2589 + 196] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                mem[_2589 + 228] = block.timestamp + 5
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2589 + (32 * mem[_2589]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * _2761 / (1000 * _2743) + (997 * s)
                continue 
    require msg.sender == stor0
}



}
