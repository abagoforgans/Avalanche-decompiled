contract main {




// =====================  Runtime code  =====================


#
#  - sub_dd6f37bc(?)
#
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
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor2[address(arg1)]:
        revert with 0, 'existing'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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



}
