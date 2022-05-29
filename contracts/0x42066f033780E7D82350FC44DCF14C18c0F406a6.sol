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
    mem[96] = '1'
    call stor1 with:
       funct Mask(32, 224, '1') >> 224
       value msg.value wei
         gas gas_remaining wei
        args mem[100 len -3]
    if not ext_call.success:
        revert with 0, 'Failed to send money'
}



}
