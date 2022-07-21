contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of address myBuddy;
address owner;
uint256 stor2;

function myBuddy() payable {
    return myBuddy[msg.sender]
}

function buddyOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return myBuddy[address(arg1)]
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert
}

function updateBuddy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    myBuddy[msg.sender] = arg1
    emit onUpdateBuddy(msg.sender, arg1);
}

function sub_eba9a26c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    myBuddy[address(arg2)] = address(arg1)
    emit onUpdateBuddy(address(arg2), address(arg1));
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    else:
        uint16(stor0.field_0) = 257
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        uint8(stor0.field_8) = 0
}



}
