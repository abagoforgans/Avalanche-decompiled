contract main {




// =====================  Runtime code  =====================


address feeTokenAddress;
address tokenStakingAddress;

function feeToken() payable {
    return feeTokenAddress
}

function tokenStaking() payable {
    return tokenStakingAddress
}

function _fallback() payable {
    revert
}

function increaseBorrowingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(feeTokenAddress)
    call feeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args tokenStakingAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenStakingAddress)
    call tokenStakingAddress.0x2fc86ddc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseRedeemingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(feeTokenAddress)
    call feeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args tokenStakingAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenStakingAddress)
    call tokenStakingAddress.0x7c872909 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
