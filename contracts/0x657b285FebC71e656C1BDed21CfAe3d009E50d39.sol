contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint8 stor2;
uint8 stor3; offset 160
uint8 stor3; offset 168
address stor3;

function sub_528a649b(?) payable {
    return bool(uint8(stor3.field_160))
}

function sub_5db06c71(?) payable {
    return bool(uint8(stor3.field_168))
}

function owner() payable {
    return owner
}

function sub_90f21f6d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
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

function updateToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor3.field_0) = arg1
    uint8(stor3.field_160) = 1
}

function sub_5e25be90(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(bool(arg2))
    uint8(stor3.field_168) = 1
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

function sub_d126d3e7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor3.field_160):
        revert with 0, 'TOKEN NOT SET UP'
    if not address(arg1):
        revert with 0, 'NODE MANAGER CANNOT BE ZERO'
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function release(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor3.field_160):
        revert with 0, 'PARAMS ARE NOT INITIALIZED'
    if not uint8(stor3.field_168):
        revert with 0, 'PARAMS ARE NOT INITIALIZED'
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'YOU ARE NOT AUTHORIZED TO RELEASE'
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xd0e1e82a: arg1, block.timestamp, msg.sender
    stor1 = 1
}



}
