contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_e3c51724;
address tokenAddress;
mapping of uint256 creditBalances;

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function creditBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return creditBalances[arg1]
}

function owner() payable {
    return owner
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_e3c51724(?) payable {
    return sub_e3c51724
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0a6a06e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e3c51724 = arg1
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function sub_ec2dd3cf(?) payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require creditBalances[address(msg.sender)] > 0
    if not creditBalances[address(msg.sender)]:
        revert with 'NH{q', 17
    creditBalances[address(msg.sender)]--
    emit 0x6131bcc2: msg.sender, 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_0c4dfe3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require arg1 > 0
    if sub_e3c51724 and arg1 > -1 / sub_e3c51724:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_e3c51724 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if creditBalances[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    creditBalances[address(msg.sender)] += arg1
    emit BuyEvent(msg.sender, arg1);
}

function burn() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
