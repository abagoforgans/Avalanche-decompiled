contract main {




// =====================  Runtime code  =====================


uint256 totalDonations;
address stor1;

function getTotalDonations() {
    return totalDonations
}

function _fallback() payable {
    revert
}

function donate() payable {
    call stor1 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send money'
}



}
