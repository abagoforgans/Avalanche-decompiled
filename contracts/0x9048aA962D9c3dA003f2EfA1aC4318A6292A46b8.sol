contract main {




// =====================  Runtime code  =====================


#
#  - getMatchableUsers()
#
array of struct stor0;
array of address stor1;
mapping of uint8 stor2;
mapping of struct stor3;

function _fallback() payable {
    revert
}

function sendMessage(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0[address(msg.sender)].field_768 <= 0:
        revert with 0, 'User is not registered'
    if stor0[address(arg1)].field_768 <= 0:
        revert with 0, 'User is not registered'
    require uint8(stor2[address(msg.sender)][address(arg1)]) <= 2
    if uint8(stor2[address(msg.sender)][address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Both users need to have liked each other (match) to send messages'
    require uint8(stor2[address(arg1)][address(msg.sender)]) <= 2
    if uint8(stor2[address(arg1)][address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Both users need to have liked each other (match) to send messages'
    emit 0x820e6d37: Array(len=arg2.length, data=arg2[all]), block.timestamp, msg.sender, arg1
}

function swipe(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < 3
    require arg2 == arg2
    if stor0[address(msg.sender)].field_768 <= 0:
        revert with 0, 'User is not registered'
    if stor0[address(arg2)].field_768 <= 0:
        revert with 0, 'User is not registered'
    require uint8(stor2[address(msg.sender)][address(arg2)]) <= 2
    if uint8(stor2[address(msg.sender)][address(arg2)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot swipe the same person twice'
    if stor3[address(msg.sender)].field_0 + (24 * 3600) <= block.timestamp:
        stor3[address(msg.sender)].field_0 = block.timestamp
        stor3[address(msg.sender)].field_256 = 100
    if stor3[address(msg.sender)].field_256 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have already used up all your swipes for today'
    stor3[address(msg.sender)].field_256++
    require arg1 <= 2
    if arg1 == 2:
        require arg1 <= 2
        uint256(stor2[address(msg.sender)][address(arg2)]) = arg1 or Mask(248, 8, uint256(stor2[address(msg.sender)][address(arg2)]))
    else:
        uint8(stor2[address(msg.sender)][address(arg2)]) = 1
        require uint8(stor2[address(arg2)][address(msg.sender)]) <= 2
        if uint8(stor2[address(arg2)][address(msg.sender)]) == 1:
            emit 0xe846b994: block.timestamp, msg.sender, arg2
}

function register(string arg1, string arg2, uint8 arg3, uint256 arg4, string arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 < 2
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor0[address(msg.sender)].field_768:
        revert with 0, 'User is already registered'
    if not arg1.length:
        revert with 0, '_name cannot be empty'
    if not arg2.length:
        revert with 0, '_city cannot be empty'
    if arg4 <= 17:
        revert with 0, '_age must be 18 or above'
    if not arg5.length:
        revert with 0, '_picURL cannot be empty'
    require arg3 <= 1
    stor0[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    require arg3 <= 1
    stor0[address(msg.sender)].field_512 = arg3 or Mask(248, 8, stor0[address(msg.sender)].field_512)
    stor0[address(msg.sender)].field_768 = arg4
    stor0[address(msg.sender)][4][].field_0 = Array(len=arg5.length, data=arg5[all])
    require arg3 <= 1
    uint256(stor1[arg2[all]][arg3])++
    address(stor1[arg2[all]][arg3][uint256(stor1[arg2[all]][arg3])]) = msg.sender
}



}
