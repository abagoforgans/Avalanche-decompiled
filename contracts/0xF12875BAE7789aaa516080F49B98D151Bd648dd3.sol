contract main {




// =====================  Runtime code  =====================


address owner;
address dappAddress;
address dataAddress;
address stor5;
uint256 sub_f713eae7;
uint256 sub_7741f878;
uint8 stor8;
uint256 stor8;

function data() {
    return dataAddress
}

function sub_7741f878(?) {
    return sub_7741f878
}

function owner() {
    return owner
}

function dapp() {
    return dappAddress
}

function sub_f713eae7(?) {
    return sub_f713eae7
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

function sub_90088117(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor8) = not bool(uint8(stor8)) or Mask(248, 8, uint256(stor8))
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_080ec05f(?) {
    if sub_7741f878 <= 250:
        return 20 * 10^18
    if sub_7741f878 <= 500:
        return 40 * 10^18
    if sub_7741f878 <= 750:
        return 60 * 10^18
    if sub_7741f878 <= 1000:
        return 80 * 10^18
    if sub_7741f878 > 1500:
        return 0
    return 100 * 10^18
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

function sub_2a7d1065(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dappAddress)
    call dappAddress.0x9d95f1cc with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e443c2ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'You have to mint at least 1 node'
    if arg1 > 3:
        revert with 0, 'You have to mint at least 1 node'
    if msg.value and arg1 > -1 / msg.value:
        revert with 'NH{q', 17
    require msg.value * arg1 >= sub_f713eae7
    if bool(uint8(stor8)) != 1:
        revert with 0, 'Presale closed.'
    require ext_code.size(dappAddress)
    call dappAddress.0x9d95f1cc with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(dappAddress)
    call dappAddress.0xe274c61d with:
         gas gas_remaining wei
        args msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_7741f878 > -2:
        revert with 'NH{q', 17
    sub_7741f878++
}



}
