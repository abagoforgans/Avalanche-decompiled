contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of struct sub_22337a88;
mapping of uint256 sub_4b4cbb45;
uint256 gameId;

function sub_22337a88(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_22337a88[arg1][arg2].field_0, sub_22337a88[arg1][arg2].field_256
}

function sub_4b4cbb45(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4b4cbb45[arg1]
}

function gameId() {
    return gameId
}

function _fallback() payable {
    revert
}

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_768 >= 4:
        revert with 'NH{q', 33
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_768
}

function sub_474d0b5a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.value <= 0:
        revert with 0, 'have to send some ether'
    mem[128] = msg.sender
    mem[160] = address(arg1)
    mem[192] = gameId
    stor0[stor3].field_0 = gameId
    stor0[stor3].field_256 = msg.value
    stor0[stor3].field_512 = 2
    s = 0
    idx = 128
    while 192 > idx:
        stor0[stor3][s + 2].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor0[stor3].field_512 > idx:
        stor0[stor3][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    stor0[stor3].field_768 = 0
    stor0[stor3].field_1024 = 0
    if gameId == -1:
        revert with 'NH{q', 17
    gameId++
}

function joinGame(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 >= stor0[arg1].field_512:
        revert with 'NH{q', 50
    if stor0[arg1][2].field_256 != msg.sender:
        revert with 0, 'sender must be second player'
    if msg.value < stor0[arg1].field_256:
        revert with 0, 'not enough ether sent'
    if stor0[arg1].field_768 > 3:
        revert with 'NH{q', 33
    if stor0[arg1].field_768:
        revert with 0, 'game must be in CREATED state'
    if msg.value > stor0[arg1].field_256:
        if msg.value < stor0[arg1].field_256:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - stor0[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_768 = 1
}

function sub_34d3ce4b(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0[arg1].field_768 > 3:
        revert with 'NH{q', 33
    if stor0[arg1].field_768 != 1:
        revert with 0, 'game must be in JOINED state'
    if 0 >= stor0[arg1].field_512:
        revert with 'NH{q', 50
    if stor0[arg1][2].field_0 != msg.sender:
        if 1 >= stor0[arg1].field_512:
            revert with 'NH{q', 50
        if stor0[arg1][2].field_256 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by one of players'
    if sub_22337a88[arg1][address(msg.sender)].field_0:
        revert with 0, 'move already made'
    if arg2 != 1:
        if arg2 != 2:
            if arg2 != 3:
                revert with 0, 'move needs to be 1, 2 or 3'
    sub_22337a88[arg1][address(msg.sender)].field_0 = sha3(arg2, arg3)
    sub_22337a88[arg1][address(msg.sender)].field_256 = 0
    if 0 >= stor0[arg1].field_512:
        revert with 'NH{q', 50
    if sub_22337a88[arg1][stor0[arg1][2].field_0].field_0:
        if 1 >= stor0[arg1].field_512:
            revert with 'NH{q', 50
        if sub_22337a88[arg1][stor0[arg1][2].field_256].field_0:
            stor0[arg1].field_768 = 2
}

function sub_354fe54a(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if 0 >= stor0[arg1].field_512:
        revert with 'NH{q', 50
    if 1 >= stor0[arg1].field_512:
        revert with 'NH{q', 50
    if stor0[arg1].field_768 > 3:
        revert with 'NH{q', 33
    if stor0[arg1].field_768 != 2:
        revert with 0, 'game must be in COMMITED state'
    if 0 >= stor0[arg1].field_512:
        revert with 'NH{q', 50
    if stor0[arg1][2].field_0 != msg.sender:
        if 1 >= stor0[arg1].field_512:
            revert with 'NH{q', 50
        if stor0[arg1][2].field_256 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by one of players'
    if sub_22337a88[arg1][address(msg.sender)].field_0 != sha3(arg2, arg3):
        revert with 0, 'moveId does not match commitment'
    sub_22337a88[arg1][address(msg.sender)].field_256 = arg2
    if sub_22337a88[arg1][stor0[arg1][2].field_0].field_256:
        if sub_22337a88[arg1][stor0[arg1][2].field_256].field_256:
            if sub_22337a88[arg1][stor0[arg1][2].field_0].field_256 != sub_22337a88[arg1][stor0[arg1][2].field_256].field_256:
                if sub_4b4cbb45[stor1[arg1][stor0[arg1][2].field_0].field_256] == sub_22337a88[arg1][stor0[arg1][2].field_256].field_256:
                    if 0 >= stor0[arg1].field_512:
                        revert with 'NH{q', 50
                    if stor0[arg1].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    call stor0[arg1][2].field_0 with:
                       value 2 * stor0[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if 1 >= stor0[arg1].field_512:
                        revert with 'NH{q', 50
                    if stor0[arg1].field_256 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    call stor0[arg1][2].field_256 with:
                       value 2 * stor0[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
            else:
                if 0 >= stor0[arg1].field_512:
                    revert with 'NH{q', 50
                call stor0[arg1][2].field_0 with:
                   value stor0[arg1].field_256 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 1 >= stor0[arg1].field_512:
                    revert with 'NH{q', 50
                call stor0[arg1][2].field_256 with:
                   value stor0[arg1].field_256 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor0[arg1].field_768 = 3
}



}
