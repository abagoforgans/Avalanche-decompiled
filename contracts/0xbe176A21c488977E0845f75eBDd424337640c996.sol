contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function approve() payable {
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
