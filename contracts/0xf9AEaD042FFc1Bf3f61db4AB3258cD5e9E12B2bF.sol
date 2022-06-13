contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized Operation'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_e4e56989(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized Operation (c)'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Nui 8'
    if block.number < arg3:
        revert with 0, 'Onop 3'
    staticcall arg1.isSniper(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Stp1'
    mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[ceil32(return_data.size) + 160] = arg1
    mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(arg4), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall arg1.isSniper(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Stp'
}



}
