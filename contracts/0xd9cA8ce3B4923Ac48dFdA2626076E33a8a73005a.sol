contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;

function count() payable {
    return stor1.length
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        revert with 0, 'existing'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        revert with 0, '!existing'
    if stor2[address(arg1)]:
        require stor1.length - 1 < stor1.length
        require stor2[address(arg1)] - 1 < stor1.length
        stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        require stor1.length
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
}

function sub_dd6f37bc(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var30002 >= stor1.length:
    if var36001 >= stor1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var38002 < stor1.length
    mem[0] = 1
    mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(var44001))
    call var46002.mem[var46004 len 4] with:
         gas gas_remaining wei
        args mem[var46004 + 4 len var46005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if var58002 >= stor1.length:
    # nil
}



}
