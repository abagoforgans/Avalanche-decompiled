contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function isMember(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function kill() {
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    if stor1[address(arg1)]:
        revert with 0, 'Address is member already.'
    stor1[address(arg1)] = 1
    emit MemberAdded(arg1);
}

function removeMember(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    if not stor1[address(arg1)]:
        revert with 0, 'Not member of whitelist.'
    stor1[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function sub_e85a0c3f(?) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a7331b38(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    call arg1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, arg2, arg3, 160, address(arg5), arg6, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_726c8c62(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, arg2, arg3, 160, address(arg5), arg6, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b6f69f35(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require stor1[address(msg.sender)]
    if eth.balance(this.address):
        require ext_code.size(arg1)
        call arg1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, arg2, 128, address(arg4), arg5, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
