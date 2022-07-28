contract main {




// =====================  Runtime code  =====================


address owner;
address farmTokenAddress;
address sub_affaee30Address;
address devWalletAddress;
uint16 dex; offset 160
uint32 stor4;
address safeAddress;
uint256 stor5;
uint16 stor6;
uint16 stor6; offset 16
address priceConverterAddress; offset 32

function safe() payable {
    return safeAddress
}

function dex() payable {
    return dex
}

function owner() payable {
    return owner
}

function devWallet() payable {
    return devWalletAddress
}

function sub_affaee30(?) payable {
    return sub_affaee30Address
}

function priceConverter() payable {
    return priceConverterAddress
}

function farmToken() payable {
    return farmTokenAddress
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
    stor5 = arg1
}

function setSafe(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    safeAddress = arg1
}

function sub_63542a11(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dex = uint16(arg1)
}

function setDevWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devWalletAddress = arg1
}

function setFarmToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    farmTokenAddress = arg1
}

function setFarmWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_affaee30Address = arg1
}

function sub_9bd52ec6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor6.field_0) = uint16(arg1)
}

function sub_9371e327(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor6.field_16) = uint16(arg1)
}

function sub_339db5bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceConverterAddress = address(arg1)
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

function buy(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(priceConverterAddress)
    staticcall priceConverterAddress.0x7ecc4a43 with:
            gas gas_remaining wei
           args 0, stor4, address(arg2), arg1, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, safeAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(farmTokenAddress)
    call farmTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and uint16(stor6.field_0) > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(farmTokenAddress)
    call farmTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args devWalletAddress, arg1 * uint16(stor6.field_0) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and uint16(stor6.field_16) > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(farmTokenAddress)
    call farmTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args sub_affaee30Address, arg1 * uint16(stor6.field_16) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
