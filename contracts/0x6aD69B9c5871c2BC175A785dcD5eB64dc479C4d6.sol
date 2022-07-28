contract main {




// =====================  Runtime code  =====================


#
#  - sub_75cd9cce(?)
#  - fundERC20(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, address arg2, uint256 arg3)
#
const sub_61af6884(?) = 0x19000000000000000000000000000000000000000000000000

const sub_996c9c23(?) = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c

const sub_d1192c95(?) = 0x76cc67ff2cc77821a70ed14321111ce381c2594d

const sub_dcde9b02(?) = 0x574c4131000000000000000000000000000000000000000000000000


address _bridgeAddress;
mapping of address sub_a7a3fb40;
mapping of uint256 _tokenContract;
mapping of uint8 stor3;
mapping of uint8 stor4;
address owner;
address sub_297d7c8aAddress;
address sub_1cb9e262Address;
mapping of struct sub_78f6a94c;
mapping of uint256 sub_85aaf11a;

function _resourceIDToTokenContractAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_a7a3fb40[arg1]
}

function sub_1cb9e262(?) payable {
    return sub_1cb9e262Address
}

function sub_297d7c8a(?) payable {
    return sub_297d7c8aAddress
}

function _bridgeAddress() payable {
    return _bridgeAddress
}

function sub_34143cd7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == Mask(64, 192, arg2)
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

function sub_85aaf11a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_85aaf11a[arg1]
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

function sub_bf1ed1eb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_292f3a68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _bridgeAddress = address(arg1)
}

function sub_3c7c6611(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_297d7c8aAddress = address(arg1)
}

function sub_e7077de0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1cb9e262Address = address(arg1)
}

function sub_ec87b6c3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_85aaf11a[arg1] = arg2
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

function sub_728e218f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if _bridgeAddress != msg.sender:
        revert with 0, 'sender must be bridge contract'
    require ext_code.size(sub_a7a3fb40[arg1])
    call sub_a7a3fb40[arg1].transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sub_1cb9e262Address, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_a7a3fb40[arg1])
    call sub_a7a3fb40[arg1].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args sub_a7a3fb40[arg1], arg3, sub_297d7c8aAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_bridgeAddress)
    call _bridgeAddress.0x8ece6f27 with:
         gas gas_remaining wei
        args 0x574c4131000000000000000000000000000000000000000000000000, sub_85aaf11a[arg1], arg3, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x698a295f: arg3, address(arg2), arg1
}



}
