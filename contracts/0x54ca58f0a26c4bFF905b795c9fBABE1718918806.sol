contract main {




// =====================  Runtime code  =====================


#
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
mapping of uint8 stor1;
address joeFactoryAddress;
address pangoFactoryAddress;
address sub_f89b473dAddress;
address joeRouterAddress;
address sub_0385ebfeAddress;
address sub_63bb36d2Address;
uint256 stor8;

function sub_0385ebfe(?) payable {
    return sub_0385ebfeAddress
}

function pangoFactory() payable {
    return pangoFactoryAddress
}

function joeRouter() payable {
    return joeRouterAddress
}

function sub_63bb36d2(?) payable {
    return sub_63bb36d2Address
}

function joeFactory() payable {
    return joeFactoryAddress
}

function owner() payable {
    return owner
}

function sub_f89b473d(?) payable {
    return sub_f89b473dAddress
}

function _fallback() payable {
    revert
}

function sub_f97b6ca4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function removeWhitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function addWhitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0, 'nonDuplicated: duplicated'
    stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_756c4d94(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'non Authorized sender'
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    mem[260 len arg5.length] = arg5[all]
    mem[arg5.length + 260] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, arg3, arg4, address(this.address), 128, arg5.length, arg5[all], mem[arg5.length + 260 len ceil32(arg5.length) - arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3e0dadd0(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'non Authorized sender'
    require ext_code.size(sub_f89b473dAddress)
    staticcall sub_f89b473dAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    mem[260 len arg5.length] = arg5[all]
    mem[arg5.length + 260] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, arg3, arg4, address(this.address), 128, arg5.length, arg5[all], mem[arg5.length + 260 len ceil32(arg5.length) - arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d8cab274(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'non Authorized sender'
    require ext_code.size(pangoFactoryAddress)
    staticcall pangoFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    mem[260 len arg5.length] = arg5[all]
    mem[arg5.length + 260] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, arg3, arg4, address(this.address), 128, arg5.length, arg5[all], mem[arg5.length + 260 len ceil32(arg5.length) - arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
