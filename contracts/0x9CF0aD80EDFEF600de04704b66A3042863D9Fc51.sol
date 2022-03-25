contract main {




// =====================  Runtime code  =====================


#
#  - sub_b00c260b(?)
#
function _fallback() payable {
    revert
}

function sub_e8813ea0(?) payable {
    require calldata.size - 4 >= 192
    require 67 < calldata.size
    require 132 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 3:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 163 < calldata.size
    require 196 <= calldata.size
    idx = 0
    s = 132
    t = 192
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(mem[192]), cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if cd[4] and 997 > -1 / cd[4]:
        revert with 0, 17
    if 997 * cd[4] / 997 != cd[4]:
        revert with 0, 'ds-math-mul-overflow'
    if mem[108 len 20] >= mem[140 len 20]:
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > !(997 * cd[4]):
                revert with 0, 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * cd[4]) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[4]):
                revert with 0, 18
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[224]), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[236 len 20])
            staticcall mem[236 len 20].getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) and 997 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                revert with 0, 17
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                revert with 0, 'ds-math-mul-overflow'
            if mem[140 len 20] >= mem[172 len 20]:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20] with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, msg.sender, 128, 0
                else:
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) and ext_call.return_data[18 len 14] > -1 / 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(msg.sender), 128, 0, None
            else:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(msg.sender), 128, 0, None
                else:
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) and ext_call.return_data[50 len 14] > -1 / 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20] with:
                         gas gas_remaining wei
                        args 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), msg.sender, 128, 0
        else:
            if 997 * cd[4] and ext_call.return_data[18 len 14] > -1 / 997 * cd[4]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if 997 * cd[4] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * cd[4]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] > !(997 * cd[4]):
                revert with 0, 17
            if (1000 * ext_call.return_data[50 len 14]) + (997 * cd[4]) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[4]):
                revert with 0, 18
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]), 0, address(mem[224]), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[236 len 20])
            staticcall mem[236 len 20].getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) and 997 > -1 / 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                revert with 0, 17
            if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) / 997 != 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                revert with 0, 'ds-math-mul-overflow'
            if mem[140 len 20] >= mem[172 len 20]:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(msg.sender), 128, 0, None
                else:
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), 0, address(msg.sender), 128, 0, None
            else:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(msg.sender), 128, 0, None
                else:
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[4])), address(msg.sender), 128, 0, None
    else:
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] > !(997 * cd[4]):
                revert with 0, 17
            if (1000 * ext_call.return_data[18 len 14]) + (997 * cd[4]) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * cd[4]):
                revert with 0, 18
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20] with:
                 gas gas_remaining wei
                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), mem[236 len 20], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[236 len 20])
            staticcall mem[236 len 20].getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) and 997 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                revert with 0, 17
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                revert with 0, 'ds-math-mul-overflow'
            if mem[140 len 20] >= mem[172 len 20]:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20] with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, msg.sender, 128, 0
                else:
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) and ext_call.return_data[18 len 14] > -1 / 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(msg.sender), 128, 0, None
            else:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(msg.sender), 128, 0, None
                else:
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) and ext_call.return_data[50 len 14] > -1 / 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20] with:
                         gas gas_remaining wei
                        args 0, 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), msg.sender, 128, 0
        else:
            if 997 * cd[4] and ext_call.return_data[50 len 14] > -1 / 997 * cd[4]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if 997 * cd[4] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * cd[4]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] > !(997 * cd[4]):
                revert with 0, 17
            if (1000 * ext_call.return_data[18 len 14]) + (997 * cd[4]) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * cd[4]):
                revert with 0, 18
            require ext_code.size(mem[204 len 20])
            call mem[204 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]), address(mem[224]), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(mem[236 len 20])
            staticcall mem[236 len 20].getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) and 997 > -1 / 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                revert with 0, 17
            if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) / 997 != 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                revert with 0, 'ds-math-mul-overflow'
            if mem[140 len 20] >= mem[172 len 20]:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(msg.sender), 128, 0, None
                else:
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), 0, address(msg.sender), 128, 0, None
            else:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), address(msg.sender), 128, 0, None
                else:
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])):
                        revert with 0, 18
                    if 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])) <= cd[4]:
                        revert with 0, 'BSwap:: NO_DELTA'
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20] with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * cd[4] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[4])), msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
