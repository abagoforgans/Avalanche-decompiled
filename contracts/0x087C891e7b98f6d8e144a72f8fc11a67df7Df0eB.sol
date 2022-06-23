contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdrawEth() payable {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdrawEth failed'
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_61b2f920(?) payable {
    require calldata.size - 4 >= 192
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 164).length:
        mem[96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[36]
        mem[196] = address(cd[((32 * idx) + cd[164] + 36)])
        mem[228] = cd[100]
        mem[164] = 160
        mem[260] = ('cd', 68).length
        mem[292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 292] = 0
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[((32 * idx) + cd[164] + 36)]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
