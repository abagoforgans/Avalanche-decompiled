contract main {




// =====================  Runtime code  =====================


address owner;
address sharkAddress;
address mimAddress;
mapping of struct stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;

function hasBought(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function owner() payable {
    return owner
}

function mim() payable {
    return mimAddress
}

function shark() payable {
    return sharkAddress
}

function sub_fc2e0c2f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function send(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sharkAddress)
    call sharkAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), stor5[address(arg1)].field_1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor5[address(msg.sender)].field_0 = 0
}

function participate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6[address(msg.sender)]:
        revert with 0, 'You are not whitelisted.'
    if arg1 > 2000 * 10^18:
        revert with 0, 'Incorrect value.'
    if stor7[address(msg.sender)]:
        revert with 0, 'You already participated'
    require ext_code.size(mimAddress)
    call mimAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xd370a97ddab6d61f0db59f70e0165dffb7914adb, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sharkAddress)
    call sharkAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, stor5[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor5[address(msg.sender)].field_0 = arg1
    stor7[address(msg.sender)] = 1
}



}
