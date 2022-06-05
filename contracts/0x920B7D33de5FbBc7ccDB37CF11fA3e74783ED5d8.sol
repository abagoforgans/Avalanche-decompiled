contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_14327eee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[128] = address(arg1)
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[228] = arg2
    idx = 0
    s = 420
    t = 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
