contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;

function destroy() {
    if stor2 != msg.sender:
        revert with 0, '5'
    selfdestruct(stor2)
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xb6a9a334(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x83197ef0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor2 != msg.sender:
                        revert with 0, '1'
                    stor2 = address(arg1)
                else:
                    if unknown_0x5a6b26ba(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if stor2 != msg.sender:
                            revert with 0, '1'
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor2, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x83197ef0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if stor2 != msg.sender:
                        revert with 0, '5'
                    selfdestruct(stor2)
                if uint32(call.func_hash) >> 224 != unknown_0xaf4ea46b(?????):
                    if unknown_0xb51f1f84(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if stor2 != msg.sender:
                            revert with 0, '1'
                        stor0 = arg1
                else:
                    require not msg.value
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
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), 10^6, 0, 0, 0xcde44a5520bbff9f8be14d6e991ec82a275e683c, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            if unknown_0xe477eacd(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xb6a9a334(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if stor2 != msg.sender:
                        revert with 0, '1'
                    stor1 = arg1
                if uint32(call.func_hash) >> 224 != unknown_0xd7ba9ae1(?????):
                require not msg.value
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
            if unknown_0xe477eacd(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(arg2):
                    mem[192] = address(arg1)
                    mem[224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[228] = 0
                    idx = 0
                    s = 388
                    t = 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[388 len 64]
                else:
                    mem[192] = address(arg2)
                    mem[224] = address(arg1)
                    mem[256] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[260] = 0
                    idx = 0
                    s = 420
                    t = 160
                    while idx < 3:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0], 0, 0, stor2, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xea45faf8(?????):
                    if unknown_0xfa0f9eb9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if stor2 != msg.sender:
                            revert with 0, '1'
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
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
                    mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[ceil32(return_data.size) + 192] = address(arg1)
                    mem[ceil32(return_data.size) + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = 0
                    idx = 0
                    s = ceil32(return_data.size) + 388
                    t = ceil32(return_data.size) + 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    require return_data.size >= 32
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), 100000, 0, 0, stor2, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
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

function sub_af4ea46b(?) {
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
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg1), 10^6, 0, 0, 0xcde44a5520bbff9f8be14d6e991ec82a275e683c, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ea45faf8(?) payable {
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
    mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[ceil32(return_data.size) + 160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = ceil32(return_data.size) + 356
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
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
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg1), 100000, 0, 0, stor2, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e477eacd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(arg2):
        mem[160] = address(arg1)
        mem[192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        idx = 0
        s = 356
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    else:
        mem[160] = address(arg2)
        mem[192] = address(arg1)
        mem[224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[228] = 0
        idx = 0
        s = 388
        t = 128
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], 0, 0, stor2, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
