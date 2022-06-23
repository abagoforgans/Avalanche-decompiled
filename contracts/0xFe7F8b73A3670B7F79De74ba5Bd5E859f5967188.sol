contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint16 stor3; offset 160
uint32 stor3;
address stor3;
uint256 stor4;
uint16 stor5;
uint16 stor5; offset 16
address stor5; offset 32

function owner() payable {
    return owner
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

function sub_82cce368(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function setFarmToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function setFarmWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function setDevWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor3.field_0) = arg1
}

function sub_9bd52ec6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor5.field_0) = uint16(arg1)
}

function sub_9371e327(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor5.field_16) = uint16(arg1)
}

function sub_63542a11(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor3.field_160) = uint16(arg1)
}

function sub_339db5bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor5.field_32) = address(arg1)
}

function releaseTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg2, 9, 'Minted %s', 0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 23, 'balance before burn: %s', 0
    require ext_code.size(stor1)
    call stor1.0x9dc29fac with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg1, 9, 'Burned %s', 0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 652] = 64
    mem[(2 * ceil32(return_data.size)) + 716] = 22
    mem[(2 * ceil32(return_data.size)) + 748] = 'balance after burn: %s'
    mem[(2 * ceil32(return_data.size)) + 770] = 0
    mem[(2 * ceil32(return_data.size)) + 684] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 652 len 28] = 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 652 len ceil32(return_data.size) + 128]
}

function buy(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(address(stor5.field_32))
    staticcall address(stor5.field_32).0x7ecc4a43 with:
            gas gas_remaining wei
           args 0, uint32(stor3.field_0), address(arg2), arg1, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 16, 'purchaseCost: %s', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg1, 18, 'amountOfTokens: %s', 0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 652] = 64
    mem[(2 * ceil32(return_data.size)) + 716] = 11
    mem[(2 * ceil32(return_data.size)) + 748] = 'balance: %s'
    mem[(2 * ceil32(return_data.size)) + 759] = 0
    mem[(2 * ceil32(return_data.size)) + 684] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 652 len 28] = 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 652 len ceil32(return_data.size) + 128]
    mem[(2 * ceil32(return_data.size)) + 784] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 816] = stor2
    mem[(2 * ceil32(return_data.size)) + 848] = ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor2, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 780] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 784] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 816] = arg1
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 784 len (5 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and uint16(stor5.field_0) > -1 / arg1:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 784] = address(stor3.field_0)
    mem[(4 * ceil32(return_data.size)) + 816] = arg1 * uint16(stor5.field_0) / 100
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 784 len (7 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and uint16(stor5.field_16) > -1 / arg1:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 784] = stor2
    mem[(4 * ceil32(return_data.size)) + 816] = arg1 * uint16(stor5.field_16) / 100
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 784 len (7 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
