contract main {




// =====================  Runtime code  =====================


#
#  - transferToken(address arg1, address arg2, address arg3, uint256 arg4)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
address sub_6f8474e1Address;

function sub_6f8474e1(?) payable {
    return sub_6f8474e1Address
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_559f32a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x3fec1884: 0, address(arg1)
    sub_6f8474e1Address = address(arg1)
}

function sub_7ef645e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_6f8474e1Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ArkenApprove: callable address initialized'
    sub_6f8474e1Address = address(arg1)
    emit 0x3fec1884: 0, address(arg1)
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    sub_6f8474e1Address = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
