contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint8 stor3;
mapping of uint256 stor4;

function destroy() {
    if stor2 != msg.sender:
        revert with 0, '5'
    selfdestruct(stor2)
}

function sub_b51f1f84(?) {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, '1'
    stor0 = arg1
}

function sub_b6a9a334(?) {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, '1'
    stor1 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor2 = arg1
}

function sub_fa0f9eb9(?) {
    if stor2 != msg.sender:
        revert with 0, '1'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d7ba9ae1(?) {
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args 0x60ae616a2155ee3d9a68541ba4544862310933d4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args 0x60ae616a2155ee3d9a68541ba4544862310933d4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > stor1:
        return 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, ext_call.return_data[0]
    if ext_call.return_data[0] <= stor1:
        return 0
    return 0x136acd46c134e8269052c62a67042d6bdedde3c9, ext_call.return_data[0]
}

function sub_af4ea46b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args 0x60ae616a2155ee3d9a68541ba4544862310933d4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'GIGACHAD'
    if stor3[address(arg1)]:
        if stor3[address(arg1)]:
            mem[ceil32(return_data.size) + 100] = address(arg1)
            mem[ceil32(return_data.size) + 132] = stor4[address(arg1)] / 10
            mem[ceil32(return_data.size) + 164] = 0
            mem[ceil32(return_data.size) + 196] = 0
            if address(arg1) == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(arg1), stor4[address(arg1)] / 10, 0, 0, stor2, block.timestamp
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor4[address(arg1)] < stor4[address(arg1)] / 10:
                    revert with 'NH{q', 17
                stor4[address(arg1)] -= stor4[address(arg1)] / 10
                if this.address == stor2:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor2 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            else:
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(arg1), stor4[address(arg1)] / 10, 0, 0, address(this.address), block.timestamp
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor4[address(arg1)] < stor4[address(arg1)] / 10:
                    revert with 'NH{q', 17
                stor4[address(arg1)] -= stor4[address(arg1)] / 10
                if this.address == this.address:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor2 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
    else:
        mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(return_data.size) + 160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 324] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 260] = this.address
        mem[ceil32(return_data.size) + 292] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 260] = 0
        mem[(2 * ceil32(return_data.size)) + 292] = 0
        mem[(2 * ceil32(return_data.size)) + 324] = this.address
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0], 0, 0, this.address, block.timestamp
        mem[(2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if stor4[address(arg1)] > !ext_call.return_data[64]:
            revert with 'NH{q', 17
        stor4[address(arg1)] += ext_call.return_data[64]
        stor3[address(arg1)] = 1
        if 100000 <= stor4[address(arg1)]:
            if stor3[address(arg1)]:
                mem[(4 * ceil32(return_data.size)) + 196] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 228] = stor4[address(arg1)] / 10
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292] = 0
                if address(arg1) == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                    mem[(4 * ceil32(return_data.size)) + 324] = stor2
                    mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), stor4[address(arg1)] / 10, 0, 0, stor2, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor4[address(arg1)] < stor4[address(arg1)] / 10:
                        revert with 'NH{q', 17
                    stor4[address(arg1)] -= stor4[address(arg1)] / 10
                    if this.address == stor2:
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 224] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(7 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 224
                        t = (7 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 484 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), stor4[address(arg1)] / 10, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor4[address(arg1)] < stor4[address(arg1)] / 10:
                        revert with 'NH{q', 17
                    stor4[address(arg1)] -= stor4[address(arg1)] / 10
                    if this.address == this.address:
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(7 * ceil32(return_data.size)) + 224] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(7 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 224
                        t = (7 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 484 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
        else:
            stor3[address(arg1)] = 0
            mem[(4 * ceil32(return_data.size)) + 196] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(4 * ceil32(return_data.size)) + 228] = address(arg1)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor4[address(arg1)] = ext_call.return_data[0]
            if stor3[address(arg1)]:
                mem[(7 * ceil32(return_data.size)) + 228] = stor4[address(arg1)] / 10
                mem[(7 * ceil32(return_data.size)) + 260] = 0
                mem[(7 * ceil32(return_data.size)) + 292] = 0
                if address(arg1) == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                    mem[(7 * ceil32(return_data.size)) + 324] = stor2
                    mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), stor4[address(arg1)] / 10, 0, 0, stor2, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor4[address(arg1)] < stor4[address(arg1)] / 10:
                        revert with 'NH{q', 17
                    stor4[address(arg1)] -= stor4[address(arg1)] / 10
                    if this.address == stor2:
                        mem[(8 * ceil32(return_data.size)) + 196] = this.address
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 224] = address(arg1)
                        mem[(10 * ceil32(return_data.size)) + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(10 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 224
                        t = (10 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 484 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    mem[(7 * ceil32(return_data.size)) + 324] = this.address
                    mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), stor4[address(arg1)] / 10, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor4[address(arg1)] < stor4[address(arg1)] / 10:
                        revert with 'NH{q', 17
                    stor4[address(arg1)] -= stor4[address(arg1)] / 10
                    if this.address == this.address:
                        mem[(8 * ceil32(return_data.size)) + 196] = this.address
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(10 * ceil32(return_data.size)) + 224] = address(arg1)
                        mem[(10 * ceil32(return_data.size)) + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(10 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + 224
                        t = (10 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 484 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    idx = 0
    s = 0
    t = 0
    while idx < 2:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        mem[224] = mem[(32 * idx) + 140 len 20]
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        _399 = mem[224]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        staticcall address(_399).0x70a08231 with:
                gas gas_remaining wei
               args 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _402 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _403 = mem[_402]
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        if mem[236 len 20] != 0x136acd46c134e8269052c62a67042d6bdedde3c9:
            if not mem[_402]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = mem[_402]
                continue 
            _406 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _403
            mem[mem[64] + 36] = 64
            _408 = mem[192]
            mem[mem[64] + 68] = mem[192]
            s = 0
            t = 224
            u = mem[64] + 100
            while s < _408:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _406 + (32 * _408) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _791 = mem[_786]
            require mem[_786] <= test266151307()
            require _786 + mem[_786] + 31 < _786 + return_data.size
            _794 = mem[_786 + mem[_786]]
            if mem[_786 + mem[_786]] > test266151307():
                revert with 'NH{q', 65
            if _786 + ceil32(return_data.size) + ceil32(32 * mem[_786 + mem[_786]]) + 1 > test266151307() or ceil32(32 * mem[_786 + mem[_786]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _786 + ceil32(return_data.size) + ceil32(32 * mem[_786 + mem[_786]]) + 1
            mem[_786 + ceil32(return_data.size)] = _794
            require (32 * _794) + _791 + 32 <= return_data.size
            t = _786 + ceil32(return_data.size) + 32
            s = _786 + _791 + 32
            while s < (32 * _794) + _786 + _791 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if 1 >= _794:
                revert with 'NH{q', 50
            if mem[_786 + ceil32(return_data.size) + 64] <= stor0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_786 + ceil32(return_data.size) + 64]
                t = _403
                continue 
            if 0 >= mem[192]:
                revert with 'NH{q', 50
            _1138 = mem[224]
            if not mem[236 len 20]:
                revert with 0, 'GIGACHAD'
            mem[0] = mem[236 len 20]
            mem[32] = 3
            if stor3[mem[236 len 20]]:
                if stor3[address(mem[224])]:
                    if mem[236 len 20] == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                        _1156 = sha3(address(mem[224]), 4)
                        mem[mem[64] + 4] = mem[236 len 20]
                        mem[mem[64] + 36] = stor[_1156] / 10
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = stor2
                        mem[mem[64] + 164] = block.timestamp
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[_1156] / 10, 0, 0, stor2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = address(_1138)
                        mem[32] = 4
                        if stor4[address(_1138)] < stor4[address(_1138)] / 10:
                            revert with 'NH{q', 17
                        stor4[address(_1138)] -= stor4[address(_1138)] / 10
                        if this.address == stor2:
                            mem[mem[64] + 4] = this.address
                            staticcall address(_1138).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1218 = mem[_1212]
                            _1228 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1218
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1234 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _1234:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1228 + 100] = this.address
                            mem[_1228 + 132] = block.timestamp
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1228 + (32 * _1234) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor2 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        _1157 = sha3(address(mem[224]), 4)
                        mem[mem[64] + 4] = mem[236 len 20]
                        mem[mem[64] + 36] = stor[_1157] / 10
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[_1157] / 10, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = address(_1138)
                        mem[32] = 4
                        if stor4[address(_1138)] < stor4[address(_1138)] / 10:
                            revert with 'NH{q', 17
                        stor4[address(_1138)] -= stor4[address(_1138)] / 10
                        if this.address == this.address:
                            mem[mem[64] + 4] = this.address
                            staticcall address(_1138).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1219 = mem[_1213]
                            _1229 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1219
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1235 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _1235:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1229 + 100] = this.address
                            mem[_1229 + 132] = block.timestamp
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1229 + (32 * _1235) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor2 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
            else:
                _1147 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1147]:
                    revert with 'NH{q', 50
                mem[_1147 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 1 >= mem[_1147]:
                    revert with 'NH{q', 50
                mem[_1147 + 64] = address(_1138)
                mem[_1147 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[_1147 + 100] = 0
                mem[_1147 + 132] = 128
                mem[_1147 + 228] = mem[_1147]
                idx = 0
                s = _1147 + 32
                t = _1147 + 260
                while idx < mem[_1147]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1147 + 164] = this.address
                mem[_1147 + 196] = block.timestamp
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1147 + (32 * mem[_1147]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                staticcall address(_1138).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                _1426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1428 = mem[_1426]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(_1138), _1428, 0, 0, this.address, block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                if stor4[address(_1138)] > !mem[_1434 + 64]:
                    revert with 'NH{q', 17
                stor4[address(_1138)] += mem[_1434 + 64]
                stor3[address(_1138)] = 1
                if 100000 <= stor4[address(_1138)]:
                    if stor3[address(_1138)]:
                        mem[mem[64] + 36] = stor4[address(_1138)] / 10
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        if address(_1138) == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                            mem[mem[64] + 132] = stor2
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(_1138), stor4[address(_1138)] / 10, 0, 0, stor2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = address(_1138)
                            mem[32] = 4
                            if stor4[address(_1138)] < stor4[address(_1138)] / 10:
                                revert with 'NH{q', 17
                            stor4[address(_1138)] -= stor4[address(_1138)] / 10
                            if this.address == stor2:
                                mem[mem[64] + 4] = this.address
                                staticcall address(_1138).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1512 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1528 = mem[_1512]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1528
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1544 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < mem[192]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1544) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(_1138), stor4[address(_1138)] / 10, 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = address(_1138)
                            mem[32] = 4
                            if stor4[address(_1138)] < stor4[address(_1138)] / 10:
                                revert with 'NH{q', 17
                            stor4[address(_1138)] -= stor4[address(_1138)] / 10
                            if this.address == this.address:
                                mem[mem[64] + 4] = this.address
                                staticcall address(_1138).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1513 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1529 = mem[_1513]
                                _1533 = mem[64]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1529
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1545 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < _1545:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1533 + 100] = this.address
                                mem[_1533 + 132] = block.timestamp
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1533 + (32 * _1545) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    mem[0] = address(_1138)
                    mem[32] = 3
                    stor3[address(_1138)] = 0
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = address(_1138)
                    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(_1138)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1455 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1458 = mem[_1455]
                    require mem[_1455] == mem[_1455 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_1458).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    stor4[address(_1138)] = mem[_1478]
                    if stor3[address(_1138)]:
                        mem[mem[64] + 36] = stor4[address(_1138)] / 10
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        if address(_1138) == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                            mem[mem[64] + 132] = stor2
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(_1138), stor4[address(_1138)] / 10, 0, 0, stor2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = address(_1138)
                            mem[32] = 4
                            if stor4[address(_1138)] < stor4[address(_1138)] / 10:
                                revert with 'NH{q', 17
                            stor4[address(_1138)] -= stor4[address(_1138)] / 10
                            if this.address == stor2:
                                mem[mem[64] + 4] = this.address
                                staticcall address(_1138).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1572 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1576 = mem[_1572]
                                _1580 = mem[64]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1576
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1584 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < _1584:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1580 + 100] = this.address
                                mem[_1580 + 132] = block.timestamp
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1580 + (32 * _1584) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(_1138), stor4[address(_1138)] / 10, 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = address(_1138)
                            mem[32] = 4
                            if stor4[address(_1138)] < stor4[address(_1138)] / 10:
                                revert with 'NH{q', 17
                            stor4[address(_1138)] -= stor4[address(_1138)] / 10
                            if this.address == this.address:
                                mem[mem[64] + 4] = this.address
                                staticcall address(_1138).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1573 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1577 = mem[_1573]
                                _1581 = mem[64]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1577
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1585 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < _1585:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1581 + 100] = this.address
                                mem[_1581 + 132] = block.timestamp
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1581 + (32 * _1585) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
        else:
            if mem[_402] >= stor1:
                mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                mem[32] = 3
                if stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9]:
                    if stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9]:
                        mem[mem[64] + 36] = stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = stor2
                        mem[mem[64] + 164] = block.timestamp
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args 0x136acd46c134e8269052c62a67042d6bdedde3c9, stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10, 0, 0, stor2, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                        mem[32] = 4
                        if stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] < stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10:
                            revert with 'NH{q', 17
                        stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] -= stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                        if this.address == stor2:
                            mem[mem[64] + 4] = this.address
                            staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _466 = mem[_456]
                            _475 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _466
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _480 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _480:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_475 + 100] = this.address
                            mem[_475 + 132] = block.timestamp
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _475 + (32 * _480) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor2 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    _412 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_412]:
                        revert with 'NH{q', 50
                    mem[_412 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 1 >= mem[_412]:
                        revert with 'NH{q', 50
                    mem[_412 + 64] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                    mem[_412 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[_412 + 100] = 0
                    mem[_412 + 132] = 128
                    mem[_412 + 228] = mem[_412]
                    idx = 0
                    s = _412 + 32
                    t = _412 + 260
                    while idx < mem[_412]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_412 + 164] = this.address
                    mem[_412 + 196] = block.timestamp
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _412 + (32 * mem[_412]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _796 = mem[_793]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args 0x136acd46c134e8269052c62a67042d6bdedde3c9, _796, 0, 0, this.address, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    if stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] > !mem[_801 + 64]:
                        revert with 'NH{q', 17
                    stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] += mem[_801 + 64]
                    stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9] = 1
                    if 100000 <= stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9]:
                        if stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9]:
                            mem[mem[64] + 36] = stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = stor2
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args 0x136acd46c134e8269052c62a67042d6bdedde3c9, stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10, 0, 0, stor2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                            mem[32] = 4
                            if stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] < stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10:
                                revert with 'NH{q', 17
                            stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] -= stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                            if this.address == stor2:
                                mem[mem[64] + 4] = this.address
                                staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _920 = mem[_898]
                                _921 = mem[64]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _920
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _940 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < _940:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_921 + 100] = this.address
                                mem[_921 + 132] = block.timestamp
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _921 + (32 * _940) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                        mem[32] = 3
                        stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9] = 0
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0x136acd46c134e8269052c62a67042d6bdedde3c9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _835 = mem[_822]
                        require mem[_822] == mem[_822 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_835).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _850 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] = mem[_850]
                        if stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9]:
                            mem[mem[64] + 36] = stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = stor2
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args 0x136acd46c134e8269052c62a67042d6bdedde3c9, stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10, 0, 0, stor2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                            mem[32] = 4
                            if stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] < stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10:
                                revert with 'NH{q', 17
                            stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] -= stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                            if this.address == stor2:
                                mem[mem[64] + 4] = this.address
                                staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _975 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _984 = mem[_975]
                                _985 = mem[64]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _984
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1004 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < _1004:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_985 + 100] = this.address
                                mem[_985 + 132] = block.timestamp
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _985 + (32 * _1004) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
            else:
                if not mem[_402]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = mem[_402]
                    continue 
                _407 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _403
                mem[mem[64] + 36] = 64
                _410 = mem[192]
                mem[mem[64] + 68] = mem[192]
                s = 0
                t = 224
                u = mem[64] + 100
                while s < _410:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _407 + (32 * _410) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _787 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _792 = mem[_787]
                require mem[_787] <= test266151307()
                require _787 + mem[_787] + 31 < _787 + return_data.size
                _795 = mem[_787 + mem[_787]]
                if mem[_787 + mem[_787]] > test266151307():
                    revert with 'NH{q', 65
                if _787 + ceil32(return_data.size) + ceil32(32 * mem[_787 + mem[_787]]) + 1 > test266151307() or ceil32(32 * mem[_787 + mem[_787]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _787 + ceil32(return_data.size) + ceil32(32 * mem[_787 + mem[_787]]) + 1
                mem[_787 + ceil32(return_data.size)] = _795
                require (32 * _795) + _792 + 32 <= return_data.size
                t = _787 + ceil32(return_data.size) + 32
                s = _787 + _792 + 32
                while s < (32 * _795) + _787 + _792 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _795:
                    revert with 'NH{q', 50
                if mem[_787 + ceil32(return_data.size) + 64] <= stor0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_787 + ceil32(return_data.size) + 64]
                    t = _403
                    continue 
                if 0 >= mem[192]:
                    revert with 'NH{q', 50
                _1139 = mem[224]
                if not mem[236 len 20]:
                    revert with 0, 'GIGACHAD'
                mem[0] = mem[236 len 20]
                mem[32] = 3
                if stor3[mem[236 len 20]]:
                    if stor3[address(mem[224])]:
                        if mem[236 len 20] != 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                            _1159 = sha3(address(mem[224]), 4)
                            mem[mem[64] + 4] = mem[236 len 20]
                            mem[mem[64] + 36] = stor[_1159] / 10
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor[_1159] / 10, 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = address(_1139)
                            mem[32] = 4
                            if stor4[address(_1139)] < stor4[address(_1139)] / 10:
                                revert with 'NH{q', 17
                            stor4[address(_1139)] -= stor4[address(_1139)] / 10
                            if this.address == this.address:
                                mem[mem[64] + 4] = this.address
                                staticcall address(_1139).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1216 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1224 = mem[_1216]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1224
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1237 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < mem[192]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1237) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            _1158 = sha3(address(mem[224]), 4)
                            mem[mem[64] + 4] = mem[236 len 20]
                            mem[mem[64] + 36] = stor[_1158] / 10
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = stor2
                            mem[mem[64] + 164] = block.timestamp
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor[_1158] / 10, 0, 0, stor2, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[0] = address(_1139)
                            mem[32] = 4
                            if stor4[address(_1139)] < stor4[address(_1139)] / 10:
                                revert with 'NH{q', 17
                            stor4[address(_1139)] -= stor4[address(_1139)] / 10
                            if this.address == stor2:
                                mem[mem[64] + 4] = this.address
                                staticcall address(_1139).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1215 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1223 = mem[_1215]
                                _1231 = mem[64]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1223
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _1236 = mem[192]
                                mem[mem[64] + 164] = mem[192]
                                idx = 0
                                s = 224
                                t = mem[64] + 196
                                while idx < _1236:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1231 + 100] = this.address
                                mem[_1231 + 132] = block.timestamp
                                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1231 + (32 * _1236) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor2 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    _1151 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1151]:
                        revert with 'NH{q', 50
                    mem[_1151 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 1 >= mem[_1151]:
                        revert with 'NH{q', 50
                    mem[_1151 + 64] = address(_1139)
                    mem[_1151 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[_1151 + 100] = 0
                    mem[_1151 + 132] = 128
                    mem[_1151 + 228] = mem[_1151]
                    idx = 0
                    s = _1151 + 32
                    t = _1151 + 260
                    while idx < mem[_1151]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1151 + 164] = this.address
                    mem[_1151 + 196] = block.timestamp
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1151 + (32 * mem[_1151]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_1139).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    _1427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1429 = mem[_1427]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args address(_1139), _1429, 0, 0, this.address, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    if stor4[address(_1139)] > !mem[_1435 + 64]:
                        revert with 'NH{q', 17
                    stor4[address(_1139)] += mem[_1435 + 64]
                    stor3[address(_1139)] = 1
                    if 100000 <= stor4[address(_1139)]:
                        if stor3[address(_1139)]:
                            mem[mem[64] + 36] = stor4[address(_1139)] / 10
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            if address(_1139) == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                                mem[mem[64] + 132] = stor2
                                mem[mem[64] + 164] = block.timestamp
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(_1139), stor4[address(_1139)] / 10, 0, 0, stor2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[0] = address(_1139)
                                mem[32] = 4
                                if stor4[address(_1139)] < stor4[address(_1139)] / 10:
                                    revert with 'NH{q', 17
                                stor4[address(_1139)] -= stor4[address(_1139)] / 10
                                if this.address == stor2:
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_1139).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1518 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1530 = mem[_1518]
                                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1530
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _1546 = mem[192]
                                    mem[mem[64] + 164] = mem[192]
                                    idx = 0
                                    s = 224
                                    t = mem[64] + 196
                                    while idx < mem[192]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1546) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call stor2 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(_1139), stor4[address(_1139)] / 10, 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[0] = address(_1139)
                                mem[32] = 4
                                if stor4[address(_1139)] < stor4[address(_1139)] / 10:
                                    revert with 'NH{q', 17
                                stor4[address(_1139)] -= stor4[address(_1139)] / 10
                                if this.address == this.address:
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_1139).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1519 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1531 = mem[_1519]
                                    _1537 = mem[64]
                                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1531
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _1547 = mem[192]
                                    mem[mem[64] + 164] = mem[192]
                                    idx = 0
                                    s = 224
                                    t = mem[64] + 196
                                    while idx < _1547:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1537 + 100] = this.address
                                    mem[_1537 + 132] = block.timestamp
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1537 + (32 * _1547) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call stor2 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                    else:
                        mem[0] = address(_1139)
                        mem[32] = 3
                        stor3[address(_1139)] = 0
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = address(_1139)
                        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(_1139)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1459 = mem[_1457]
                        require mem[_1457] == mem[_1457 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_1459).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1481 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        stor4[address(_1139)] = mem[_1481]
                        if stor3[address(_1139)]:
                            mem[mem[64] + 36] = stor4[address(_1139)] / 10
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            if address(_1139) != 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(_1139), stor4[address(_1139)] / 10, 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[0] = address(_1139)
                                mem[32] = 4
                                if stor4[address(_1139)] < stor4[address(_1139)] / 10:
                                    revert with 'NH{q', 17
                                stor4[address(_1139)] -= stor4[address(_1139)] / 10
                                if this.address == this.address:
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_1139).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1575 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1579 = mem[_1575]
                                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1579
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _1587 = mem[192]
                                    mem[mem[64] + 164] = mem[192]
                                    idx = 0
                                    s = 224
                                    t = mem[64] + 196
                                    while idx < mem[192]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1587) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call stor2 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                mem[mem[64] + 132] = stor2
                                mem[mem[64] + 164] = block.timestamp
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(_1139), stor4[address(_1139)] / 10, 0, 0, stor2, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[0] = address(_1139)
                                mem[32] = 4
                                if stor4[address(_1139)] < stor4[address(_1139)] / 10:
                                    revert with 'NH{q', 17
                                stor4[address(_1139)] -= stor4[address(_1139)] / 10
                                if this.address == stor2:
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_1139).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1574 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1578 = mem[_1574]
                                    _1582 = mem[64]
                                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1578
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _1586 = mem[192]
                                    mem[mem[64] + 164] = mem[192]
                                    idx = 0
                                    s = 224
                                    t = mem[64] + 196
                                    while idx < _1586:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1582 + 100] = this.address
                                    mem[_1582 + 132] = block.timestamp
                                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1582 + (32 * _1586) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call stor2 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
    revert with 0, 'GIGACHAD'
}



}
