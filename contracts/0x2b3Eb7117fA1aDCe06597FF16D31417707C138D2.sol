contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_66c87f6fAddress;
address sub_ef929f92Address;
address landAddress;
address sub_e152bb8fAddress;
address shopAddress;
address sub_974f36bdAddress;
address sub_784145faAddress;

function shop() payable {
    return shopAddress
}

function sub_66c87f6f(?) payable {
    return sub_66c87f6fAddress
}

function sub_784145fa(?) payable {
    return sub_784145faAddress
}

function land() payable {
    return landAddress
}

function owner() payable {
    return owner
}

function sub_974f36bd(?) payable {
    return sub_974f36bdAddress
}

function sub_e152bb8f(?) payable {
    return sub_e152bb8fAddress
}

function sub_ef929f92(?) payable {
    return sub_ef929f92Address
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xe08307600000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000)
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    landAddress = arg1
    sub_e152bb8fAddress = arg4
    sub_ef929f92Address = arg2
    shopAddress = arg5
    sub_66c87f6fAddress = arg3
    sub_974f36bdAddress = arg6
    sub_784145faAddress = arg7
    require ext_code.size(sub_e152bb8fAddress)
    staticcall sub_e152bb8fAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_e152bb8fAddress)
    call sub_e152bb8fAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_66c87f6fAddress)
    call sub_66c87f6fAddress.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_56f848b8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not occupier of this land.'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Can not be contract.'
    require ext_code.size(shopAddress)
    staticcall shopAddress.0xe7572230 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_e152bb8fAddress)
    call sub_e152bb8fAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(shopAddress)
    call shopAddress.0xe75528cc with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ef929f92Address)
    call sub_ef929f92Address.0x15d823f2 with:
         gas gas_remaining wei
        args arg2, arg3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 == 1:
        require ext_code.size(sub_974f36bdAddress)
        call sub_974f36bdAddress.0x33b54973 with:
             gas gas_remaining wei
            args arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 == 2:
            require ext_code.size(sub_784145faAddress)
            call sub_784145faAddress.0x33b54973 with:
                 gas gas_remaining wei
                args arg2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
