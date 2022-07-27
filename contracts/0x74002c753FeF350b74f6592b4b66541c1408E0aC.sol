contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_cfbd10f0;
mapping of uint256 stor2;
mapping of uint256 sub_5449735b;

function sub_530c8fe7(?) payable {
    return sub_cfbd10f0.length
}

function sub_5449735b(?) payable {
    require calldata.size - 4 >= 32
    return sub_5449735b[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_94bc9b88(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function sub_cfbd10f0(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_cfbd10f0.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return sub_cfbd10f0[arg1].field_0
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

function sub_22b19af7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor2[address(arg1)]:
        revert with 0, 'ALREADY REGISTERED'
    if not stor2[address(arg1)]:
        sub_cfbd10f0.length++
        sub_cfbd10f0[sub_cfbd10f0.length].field_0 = arg1
        sub_cfbd10f0[sub_cfbd10f0.length].field_160 = 0
        stor2[address(arg1)] = sub_cfbd10f0.length
    sub_5449735b[address(arg1)] = sub_cfbd10f0.length
    emit 0xfd7ad543: arg1
}

function sub_7e4f1639(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not stor2[address(arg1)]:
        revert with 0, 'NOT REGISTERED'
    if stor2[address(arg1)]:
        require sub_cfbd10f0.length - 1 < sub_cfbd10f0.length
        require stor2[address(arg1)] - 1 < sub_cfbd10f0.length
        sub_cfbd10f0[stor2[address(arg1)]].field_0 = sub_cfbd10f0[sub_cfbd10f0.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        require sub_cfbd10f0.length
        sub_cfbd10f0[sub_cfbd10f0.length].field_0 = 0
        sub_cfbd10f0.length--
        stor2[address(arg1)] = 0
    sub_5449735b[address(arg1)] = 0
    emit 0x2c5cbbf7: arg1
}



}
