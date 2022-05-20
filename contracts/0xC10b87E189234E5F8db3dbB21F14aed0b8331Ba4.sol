contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_840b8d49;
address treasuryAddress;
address liquidityProviderAddress;
uint256 contractBalance;
uint256 sub_81900318;

function sub_81900318(?) {
    return sub_81900318
}

function sub_840b8d49(?) {
    return sub_840b8d49
}

function contractBalance() {
    return contractBalance
}

function owner() {
    return owner
}

function liquidityProviderAddress() {
    return liquidityProviderAddress
}

function treasuryAddress() {
    return treasuryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_a18f080a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_840b8d49 = arg1
}

function changeTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_035ceca2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    call treasuryAddress with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    call liquidityProviderAddress with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_62b02cf9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.value == arg1
    if eth.balance(this.address) >= sub_840b8d49:
        revert with 0, 'Whitelist Filled'
    if eth.balance(this.address) > -arg1 - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + arg1 >= sub_840b8d49:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Deposit Over Whitelist Max - Check Contract Balance if its below limit'
}



}
