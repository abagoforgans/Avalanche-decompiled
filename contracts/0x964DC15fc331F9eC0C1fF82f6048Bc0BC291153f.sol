contract main {




// =====================  Runtime code  =====================


const sub_840b8d49(?) = 5 * 10^18

const liquidityProviderAddress = 0x12adc78ad71d808ba151e2033b83b059bbbea3c6

const treasuryAddress = 0x12adc78ad71d808ba151e2033b83b059bbbea3c6


address owner;
uint256 fee;

function owner() {
    return owner
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function depositUsingVariable() payable {
    require msg.value == fee
    fee = msg.value
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_62b02cf9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.value == arg1
    if eth.balance(this.address) > -arg1 - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + arg1 >= 5 * 10^18:
        revert with 0, 'Whitelist Filled'
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
    call 0x12adc78ad71d808ba151e2033b83b059bbbea3c6 with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    call 0x12adc78ad71d808ba151e2033b83b059bbbea3c6 with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}



}
