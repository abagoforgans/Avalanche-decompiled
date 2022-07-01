contract main {




// =====================  Runtime code  =====================


#
#  - sub_825200cd(?)
#  - sub_d449fda9(?)
#  - _fallback()
#
address owner;
address stor1;
address stor2;
address sub_354951e5Address;
address sub_13764611Address;
address sub_76e058b6Address;
mapping of uint8 sub_b5c76586;
mapping of uint8 sub_c9e2a75d;

function sub_13764611(?) {
    return sub_13764611Address
}

function sub_354951e5(?) {
    return sub_354951e5Address
}

function sub_76e058b6(?) {
    return sub_76e058b6Address
}

function owner() {
    return owner
}

function sub_b5c76586(?) {
    require calldata.size - 4 >= 32
    return sub_b5c76586[arg1]
}

function sub_c9e2a75d(?) {
    require calldata.size - 4 >= 32
    return sub_c9e2a75d[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_36dfe482(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_354951e5Address = address(arg1)
    stor1 = address(arg1)
}

function sub_835c4ca6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_13764611Address = address(arg1)
    stor2 = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_7ea25ca1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_53757e64(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_76e058b6Address)
    call sub_76e058b6Address.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg2), arg1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_047177e6(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_354951e5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the wAvaxApes contract can call this function!'
    require ext_code.size(sub_76e058b6Address)
    call sub_76e058b6Address.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg2), arg1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    if sub_76e058b6Address != msg.sender:
        revert with 0, 'Only Bridging Bears can be wrapped!'
    if arg3 >= 6711:
        if sub_b5c76586[arg3] != 1:
            revert with 0, 'This token can't be wrapped!'
    if sub_c9e2a75d[arg3]:
        revert with 0, 'This token is banned!'
    require ext_code.size(stor1)
    call stor1.mint(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
