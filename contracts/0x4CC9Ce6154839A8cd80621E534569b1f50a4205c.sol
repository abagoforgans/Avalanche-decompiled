contract main {




// =====================  Runtime code  =====================


#
#  - sub_2f90a3da(?)
#  - sub_41b53f82(?)
#  - sub_826f5ee1(?)
#  - sub_f924b07f(?)
#  - _fallback()
#
address owner;
address sub_409ebe43Address;
address sub_cf292c8fAddress;
address factoryAddress;
mapping of address stor6;
mapping of uint256 stor7;
mapping of uint256 sub_0007f4a0;
mapping of uint256 sub_ce03fdab;

function sub_0007f4a0(?) {
    require calldata.size - 4 >= 32
    return sub_0007f4a0[arg1]
}

function sub_409ebe43(?) {
    return sub_409ebe43Address
}

function owner() {
    return owner
}

function factory() {
    return factoryAddress
}

function sub_ce03fdab(?) {
    require calldata.size - 4 >= 32
    return sub_ce03fdab[arg1]
}

function sub_cf292c8f(?) {
    return sub_cf292c8fAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_9a5d97b3(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[arg1] = address(arg2)
    if 18 * 3600 > !block.timestamp:
        revert with 0, 17
    stor7[arg1] = block.timestamp + (18 * 3600)
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



}
