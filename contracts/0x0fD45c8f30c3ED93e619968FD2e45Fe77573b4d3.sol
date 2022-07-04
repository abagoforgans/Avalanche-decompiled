contract main {




// =====================  Runtime code  =====================


address stor0;
address stor3;
address stor4;

function _fallback() payable {
  stop
}

function sub_2180a542(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall 'console.log'.log(bytes32 arg1) with:
            gas gas_remaining wei
           args sha3(arg1)
    return sha3(arg1), 64, 32, arg1
}

function approveToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, 0x8000000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5fd7e761(?) {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == address(arg2)
    require 132 <= calldata.size
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 < 2
    if address(call.data[68]) == address(call.data[100]):
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(call.data[68]) < address(call.data[100]):
        if not address(call.data[68]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg2))
        staticcall address(arg2).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 and 997 > -1 / arg1:
            revert with 'NH{q', 17
        if 997 * arg1 / 997 != arg1:
            revert with 0, 'ds-math-mul-overflow'
        if address(call.data[68]) == address(call.data[68]):
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
            else:
                if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
        else:
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            else:
                if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
    else:
        if not address(call.data[100]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg2))
        staticcall address(arg2).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg1 and 997 > -1 / arg1:
            revert with 'NH{q', 17
        if 997 * arg1 / 997 != arg1:
            revert with 0, 'ds-math-mul-overflow'
        if address(call.data[68]) == address(call.data[100]):
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
            else:
                if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)
        else:
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
            else:
                if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * arg1 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg1:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                    revert with 'NH{q', 18
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg3):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    mem[ceil32(return_data.size) + 356 len 0] = None
                    require ext_code.size(address(arg2))
                    if address(arg3) == address(arg4):
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(this.address), 128, 0
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                call stor3.0x68205ba0 with:
                     gas gas_remaining wei
                    args address(this.address), arg8, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 260] = arg6
    if arg10 >= 2:
        revert with 'NH{q', 33
    mem[ceil32(return_data.size) + 292] = arg10
    mem[ceil32(return_data.size) + 324] = 1
    require ext_code.size(stor4)
    call stor4.0x45cd989b with:
         gas gas_remaining wei
        args arg9, arg5, arg6, arg10, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.getBalance(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), 'AVAX'
    mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] < 3
    if ext_call.return_data[32] < arg1:
        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 12
        mem[(2 * ceil32(return_data.size)) + 260] = 'DEXALOTOJ-02'
        revert with memory
          from (2 * ceil32(return_data.size)) + 192
           len ceil32(return_data.size) + 100
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[32]
    require ext_code.size(stor3)
    call stor3.withdrawNative(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 == address(arg3)
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    call address(arg3).deposit() with:
       value ext_call.return_data[32] wei
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 == address(arg3)
    mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[32]
    require ext_code.size(address(arg3))
    call address(arg3).0xa9059cbb with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require msg.sender == stor0
}

function sub_49ffe1f1(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == arg2
    require 132 <= calldata.size
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 < 2
    call stor3 with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to send Avax to Dexalot Portfolio'
        if arg9 >= 2:
            revert with 'NH{q', 33
        require ext_code.size(stor4)
        call stor4.0x45cd989b with:
             gas gas_remaining wei
            args 0, uint32(arg8), arg5, arg6, arg9, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.getBalance(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] < 3
        require ext_code.size(stor3)
        call stor3.0x6357752 with:
             gas gas_remaining wei
            args address(this.address), arg7, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(call.data[68]) == address(call.data[100]):
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(call.data[68]) < address(call.data[100]):
            if not address(call.data[68]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(arg1))
            staticcall address(arg1).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[32] and 997 > -1 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if 997 * ext_call.return_data[32] / 997 != ext_call.return_data[32]:
                revert with 0, 'ds-math-mul-overflow'
            if address(call.data[68]) == address(call.data[68]):
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
                else:
                    if 997 * ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
            else:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
                else:
                    if 997 * ext_call.return_data[32] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
        else:
            if not address(call.data[100]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(address(arg1))
            staticcall address(arg1).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[32] and 997 > -1 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if 997 * ext_call.return_data[32] / 997 != ext_call.return_data[32]:
                revert with 0, 'ds-math-mul-overflow'
            if address(call.data[68]) == address(call.data[100]):
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
                else:
                    if 997 * ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
            else:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
                else:
                    if 997 * ext_call.return_data[32] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                        revert with 0, 'DEXALOTOJ-01'
                    require arg3 == address(arg3)
                    require ext_code.size(address(arg3))
                    call address(arg3).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    if address(arg3) == address(arg4):
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if address(arg3) < address(arg4):
                        if not address(arg3):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg3):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    else:
                        if not address(arg4):
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require arg3 == address(arg3)
                        require ext_code.size(address(arg1))
                        if address(arg3) == address(arg4):
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                        else:
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg4 == address(arg4)
                    require ext_code.size(address(arg4))
                    call address(arg4).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                         gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Avax back to Wallet'
        require msg.sender == stor0
    if not ext_call.success:
        revert with 0, 'Failed to send Avax to Dexalot Portfolio'
    if arg9 >= 2:
        revert with 'NH{q', 33
    mem[ceil32(return_data.size) + 197] = arg9
    mem[ceil32(return_data.size) + 229] = 1
    require ext_code.size(stor4)
    call stor4.0x45cd989b with:
         gas gas_remaining wei
        args arg8, arg5, arg6, arg9, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.getBalance(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] < 3
    require ext_code.size(stor3)
    call stor3.0x6357752 with:
         gas gas_remaining wei
        args address(this.address), arg7, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(call.data[68]) == address(call.data[100]):
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(call.data[68]) < address(call.data[100]):
        if not address(call.data[68]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 161 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[32] and 997 > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if 997 * ext_call.return_data[32] / 997 != ext_call.return_data[32]:
            revert with 0, 'ds-math-mul-overflow'
        if address(call.data[68]) == address(call.data[68]):
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
            else:
                if 997 * ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[32]:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
        else:
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
            else:
                if 997 * ext_call.return_data[32] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[32]:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
    else:
        if not address(call.data[100]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 161 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[32] and 997 > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if 997 * ext_call.return_data[32] / 997 != ext_call.return_data[32]:
            revert with 0, 'ds-math-mul-overflow'
        if address(call.data[68]) == address(call.data[100]):
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
            else:
                if 997 * ext_call.return_data[32] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * ext_call.return_data[32]:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
        else:
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
            else:
                if 997 * ext_call.return_data[32] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[32]:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[32]) - 1:
                    revert with 'NH{q', 17
                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[32] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[32]) < msg.value:
                    revert with 0, 'DEXALOTOJ-01'
                require arg3 == address(arg3)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = address(arg1)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[32]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                if address(arg3) == address(arg4):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(arg3) < address(arg4):
                    if not address(arg3):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg3):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                else:
                    if not address(arg4):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require arg3 == address(arg3)
                    if address(arg3) == address(arg4):
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 229] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 261] = this.address
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 293] = 128
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 325] = 0
                        mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 357 len 0] = None
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32])
                require ext_code.size(address(arg4))
                call address(arg4).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value 997 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[32]) wei
                     gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Failed to send Avax back to Wallet'
        require msg.sender == stor0
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 193] = return_data.size
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        require msg.sender == stor0
    mem[(8 * ceil32(return_data.size)) + 194] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 198] = 32
    mem[(8 * ceil32(return_data.size)) + 230] = 34
    mem[(8 * ceil32(return_data.size)) + 262] = 'Failed to send Avax back to Wall'
    mem[(8 * ceil32(return_data.size)) + 294] = 'et'
    revert with memory
      from (8 * ceil32(return_data.size)) + 194
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
