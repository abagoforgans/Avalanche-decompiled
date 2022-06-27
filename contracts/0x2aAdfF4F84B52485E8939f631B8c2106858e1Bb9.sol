contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address sub_8b375362Address;
address sub_f2bacad4Address;

function sub_8b375362(?) payable {
    return sub_8b375362Address
}

function owner() payable {
    return owner
}

function sub_f2bacad4(?) payable {
    return sub_f2bacad4Address
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

function sub_d0b73eb5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8b375362Address = address(arg1)
    stor1 = address(arg1)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if sub_f2bacad4Address != msg.sender:
        revert with 0, 'Only BattleP-words can be wrapped!'
    require ext_code.size(stor1)
    call stor1.mint(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
