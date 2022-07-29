contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 sub_4fb7d3f9;
mapping of struct sub_e31ef91c;

function royaltyInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 and sub_e31ef91c[address(arg1)].field_512 > -1 / arg2:
        revert with 0, 17
    return sub_e31ef91c[address(arg1)].field_256, arg2 * sub_e31ef91c[address(arg1)].field_512 / 10000
}

function sub_4fb7d3f9(?) payable {
    return sub_4fb7d3f9
}

function owner() payable {
    return owner
}

function sub_e31ef91c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e31ef91c[address(arg1)].field_0, sub_e31ef91c[address(arg1)].field_256, sub_e31ef91c[address(arg1)].field_512
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

function sub_b9223c9d(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 9500:
        revert with 3692773062
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4fb7d3f9 = arg1
    emit 0x2da7166c: arg1
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

function sub_bbdf9b68(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 > sub_4fb7d3f9:
        revert with 0, 'Registry: Royalty fee too high'
    sub_e31ef91c[address(arg1)].field_0 = address(arg2)
    sub_e31ef91c[address(arg1)].field_256 = address(arg3)
    sub_e31ef91c[address(arg1)].field_512 = arg4
    emit 0xd01984af: arg4, address(arg1), address(arg2), address(arg3)
}

function initialize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if arg1 > 9500:
        revert with 3692773062
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_4fb7d3f9 = arg1
}



}
