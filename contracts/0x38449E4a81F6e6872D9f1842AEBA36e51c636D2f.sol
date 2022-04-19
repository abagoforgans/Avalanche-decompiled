contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;

function _fallback() payable {
  stop
}

function addTrader(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor2[address(arg1)] = 1
}

function getAvax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swap(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require stor2[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(arg3)
            staticcall arg3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * arg4 / 997 != arg4:
                revert with 0, 'ds-math-mul-overflow'
            if arg1 == arg1:
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
            else:
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(arg3)
            staticcall arg3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * arg4 / 997 != arg4:
                revert with 0, 'ds-math-mul-overflow'
            if arg1 == arg2:
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
            else:
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(arg3)
            staticcall arg3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * arg4 / 997 != arg4:
                revert with 0, 'ds-math-mul-overflow'
            if arg1 == arg1:
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
            else:
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(arg3)
            staticcall arg3.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * arg4 / 997 != arg4:
                revert with 0, 'ds-math-mul-overflow'
            if arg1 == arg2:
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg4), 0, address(this.address), 128, 0
            else:
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * arg4)
                    require ext_code.size(arg3)
                    if arg1 == arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), address(this.address), 128, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 997 * arg4 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg4), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
