contract main {




// =====================  Runtime code  =====================


#
#  - sub_728e218f(?)
#  - sub_75cd9cce(?)
#  - fundERC20(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, address arg2, uint256 arg3)
#
address _bridgeAddress;
mapping of address sub_a7a3fb40;
mapping of uint256 _tokenContract;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address owner;
mapping of struct sub_78f6a94c;

function _resourceIDToTokenContractAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_a7a3fb40[arg1]
}

function _bridgeAddress() payable {
    return _bridgeAddress
}

function sub_34143cd7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == Mask(64, 192, arg2)
    require uint8(stor5.field_160)
    return sub_78f6a94c[Mask(64, 192, arg2)][arg1 << 192].field_0, 
           sub_78f6a94c[Mask(64, 192, arg2)][arg1 << 192].field_160 << 192,
           sub_78f6a94c[Mask(64, 192, arg2)][arg1 << 192].field_256,
           sub_78f6a94c[Mask(64, 192, arg2)][arg1 << 192].field_512,
           sub_78f6a94c[Mask(64, 192, arg2)][arg1 << 192].field_768,
           sub_78f6a94c[Mask(64, 192, arg2)][arg1 << 192].field_1024
}

function _burnList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function sub_78f6a94c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(64, 192, arg1)
    require arg2 == uint64(arg2)
    return sub_78f6a94c[arg1][arg2].field_0, 
           sub_78f6a94c[arg1][arg2].field_160 << 192,
           sub_78f6a94c[arg1][arg2].field_256,
           sub_78f6a94c[arg1][arg2].field_512,
           sub_78f6a94c[arg1][arg2].field_768,
           sub_78f6a94c[arg1][arg2].field_1024
}

function _contractWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function sub_a7a3fb40(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_a7a3fb40[arg1]
}

function _tokenContractAddressToResourceID(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _tokenContract[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_292f3a68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    require uint8(stor5.field_160)
    _bridgeAddress = address(arg1)
}

function sub_ea439b2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require not uint8(stor5.field_160)
    owner = address(arg1)
    Mask(96, 0, stor5.field_160) = 1
    emit OwnershipTransferred(0, address(arg1));
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sender should be owner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    _bridgeAddress = arg1
    require not uint8(stor5.field_160)
    owner = msg.sender
    Mask(96, 0, stor5.field_160) = 1
    emit OwnershipTransferred(0, msg.sender);
}

function setResource(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    sub_a7a3fb40[arg1] = arg2
    _tokenContract[address(arg2)] = arg1
    stor3[address(arg2)] = 1
}

function setBurnable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'provided contract is not whitelisted'
    stor4[address(arg1)] = 1
}

function sub_bf1ed1eb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    require uint8(stor5.field_160)
    if not stor3[stor1[arg1]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'provided tokenAddress is not whitelisted'
    require ext_code.size(sub_a7a3fb40[arg1])
    call sub_a7a3fb40[arg1].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
