contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address sub_dbe8d7c6Address;
address sub_ef2d7786Address;
address sub_c82c0bd7Address;

function owner() payable {
    return owner
}

function sub_c82c0bd7(?) payable {
    return sub_c82c0bd7Address
}

function sub_dbe8d7c6(?) payable {
    return sub_dbe8d7c6Address
}

function sub_ef2d7786(?) payable {
    return sub_ef2d7786Address
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

function sub_06eaee1c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dbe8d7c6Address = address(arg1)
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
    if sub_ef2d7786Address != msg.sender:
        if sub_c82c0bd7Address != msg.sender:
            revert with 0, 'Only Boobas or Booties can be wrapped!'
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Only one trap can be minted per wallet!'
    require ext_code.size(stor1)
    call stor1.mint(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
