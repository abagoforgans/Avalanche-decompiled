contract main {




// =====================  Runtime code  =====================


#
#  - getFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - sub_b34b408e(?)
#  - sub_e98f6176(?)
#
address owner;
array of uint256 name;
uint256 m1;
uint256 b1;
uint256 sub_ce405095;
uint256 m2;
uint256 b2;
uint8 stor7;
uint256 sub_2bf838c3;
uint256 m3;
uint256 b3;
uint8 stor11;
uint256 sub_d33fa1fe;
uint256 sub_66b5ae1f;
uint256 sub_be142023;
uint256 sub_a5bef6d8;
uint8 stor16; offset 160
uint8 stor16; offset 168
address stor16;

function name() payable {
    return name[0 len name.length]
}

function b2() payable {
    return b2
}

function sub_2bf838c3(?) payable {
    return sub_2bf838c3
}

function sub_3ab2fb2b(?) payable {
    return bool(stor11)
}

function sub_5de322e3(?) payable {
    return bool(stor7)
}

function sub_66b5ae1f(?) payable {
    return sub_66b5ae1f
}

function owner() payable {
    return owner
}

function m2() payable {
    return m2
}

function m3() payable {
    return m3
}

function sub_a5bef6d8(?) payable {
    return sub_a5bef6d8
}

function m1() payable {
    return m1
}

function sub_be142023(?) payable {
    return sub_be142023
}

function sub_ce405095(?) payable {
    return sub_ce405095
}

function sub_d33fa1fe(?) payable {
    return sub_d33fa1fe
}

function b3() payable {
    return b3
}

function b1() payable {
    return b1
}

function _fallback() payable {
    revert
}

function sub_f2cfd551(?) payable {
    return sub_be142023, sub_66b5ae1f
}

function initialized() payable {
    if not uint8(stor16.field_160):
        return bool(uint8(stor16.field_160))
    return bool(uint8(stor16.field_168))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_11cfe6a9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a5bef6d8 = arg1
}

function sub_97498845(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d33fa1fe = arg1
}

function sub_2c3609a0(?) payable {
    require calldata.size - 4 >= 64
    if address(stor16.field_0) != msg.sender:
        revert with 0, 'caller must be controller'
    sub_be142023 = arg1
    sub_66b5ae1f = arg2
}

function setAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor16.field_160):
        revert with 0, 'addresses already set'
    address(stor16.field_0) = arg1
    uint8(stor16.field_160) = 1
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d26e6aa4(?) payable {
    if sub_66b5ae1f > block.timestamp:
        revert with 0, 'sub overflow'
    if block.timestamp - sub_66b5ae1f > sub_d33fa1fe:
        return 0
    if not sub_be142023:
        if not sub_d33fa1fe:
            revert with 0, 'div by 0'
        if 0 / sub_d33fa1fe > sub_be142023:
            revert with 0, 'sub overflow'
        return (sub_be142023 - (0 / sub_d33fa1fe))
    if (block.timestamp * sub_be142023) - (sub_66b5ae1f * sub_be142023) / sub_be142023 != block.timestamp - sub_66b5ae1f:
        revert with 0, 'mul overflow'
    if not sub_d33fa1fe:
        revert with 0, 'div by 0'
    if (block.timestamp * sub_be142023) - (sub_66b5ae1f * sub_be142023) / sub_d33fa1fe > sub_be142023:
        revert with 0, 'sub overflow'
    return (sub_be142023 - ((block.timestamp * sub_be142023) - (sub_66b5ae1f * sub_be142023) / sub_d33fa1fe))
}



}
