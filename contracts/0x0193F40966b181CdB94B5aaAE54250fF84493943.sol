contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of struct userInfo;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(userInfo[address(arg1)].field_256) != 1:
        revert with 0, 'You have not voted.'
    return userInfo[address(arg1)].field_512, userInfo[address(arg1)].field_0, bool(userInfo[address(arg1)].field_1024)
}

function _fallback() payable {
    revert
}

function sub_960aa675(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function getInfo() {
    if 1 >= stor0.length:
        revert with 'NH{q', 50
    if 2 >= stor0.length:
        revert with 'NH{q', 50
    return eth.balance(this.address), uint256(stor0.field_768), uint256(stor0.field_1280), stor2
}

function declareWinner() {
    if stor5 != msg.sender:
        revert with 0, 'You can't do this.'
    if stor2 != 1:
        revert with 0, 'This can only happen once.'
    stor2 = 0
    if msg.sender == stor5:
        if 2 >= stor0.length:
            revert with 'NH{q', 50
        if 1 >= stor0.length:
            revert with 'NH{q', 50
        if uint256(stor0.field_768) > uint256(stor0.field_1280):
            stor3 = 1
            stor4 = 2
        else:
            if 1 >= stor0.length:
                revert with 'NH{q', 50
            if 2 >= stor0.length:
                revert with 'NH{q', 50
            if uint256(stor0.field_1280) > uint256(stor0.field_768):
                stor3 = 2
                stor4 = 1
    call stor5 with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Please input 1 or 2.'
    if arg1 >= 3:
        revert with 0, 'Please input 1 or 2.'
    if stor2 != 1:
        revert with 0, 'This event has ended.'
    if userInfo[address(msg.sender)].field_512:
        if userInfo[address(msg.sender)].field_512 != arg1:
            revert with 0, 'You can't switch teams.'
    userInfo[address(msg.sender)].field_264 = msg.sender
    userInfo[address(msg.sender)].field_1024 = 0
    userInfo[address(msg.sender)].field_256 = 1
    userInfo[address(msg.sender)].field_512 = arg1
    if userInfo[address(msg.sender)].field_0 > -msg.value - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_0 += msg.value
    if arg1 >= stor0.length:
        revert with 'NH{q', 50
    if stor0[arg1].field_256 > -msg.value - 1:
        revert with 'NH{q', 17
    stor0[arg1].field_256 += msg.value
}

function sub_97c80aac(?) {
    if stor2:
        revert with 0, 'This game is still in progress.'
    if userInfo[address(msg.sender)].field_512 != stor3:
        revert with 0, 'You lost.'
    if userInfo[address(msg.sender)].field_1024:
        revert with 0, 'DO NOT REDEEM TWICE.'
    if userInfo[address(msg.sender)].field_512 == stor3:
        if stor3 >= stor0.length:
            revert with 'NH{q', 50
        if userInfo[address(msg.sender)].field_0 and 100 * 10^6 > -1 / userInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not stor0[stor3].field_256:
            revert with 'NH{q', 18
        if stor4 >= stor0.length:
            revert with 'NH{q', 50
        if 100 * 10^6 * userInfo[address(msg.sender)].field_0 / stor0[stor3].field_256 and stor0[stor4].field_256 > -1 / 100 * 10^6 * userInfo[address(msg.sender)].field_0 / stor0[stor3].field_256:
            revert with 'NH{q', 17
        if userInfo[address(msg.sender)].field_0 > -(100 * 10^6 * userInfo[address(msg.sender)].field_0 / stor0[stor3].field_256 * stor0[stor4].field_256 / 100 * 10^6) - 1:
            revert with 'NH{q', 17
        if userInfo[address(msg.sender)].field_0 + (100 * 10^6 * userInfo[address(msg.sender)].field_0 / stor0[stor3].field_256 * stor0[stor4].field_256 / 100 * 10^6) and 9 > -1 / userInfo[address(msg.sender)].field_0 + (100 * 10^6 * userInfo[address(msg.sender)].field_0 / stor0[stor3].field_256 * stor0[stor4].field_256 / 100 * 10^6):
            revert with 'NH{q', 17
        call msg.sender with:
           value (9 * userInfo[address(msg.sender)].field_0) + (9 * 100 * 10^6 * userInfo[address(msg.sender)].field_0 / stor0[stor3].field_256 * stor0[stor4].field_256 / 100 * 10^6) / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        userInfo[address(msg.sender)].field_1024 = 1
}



}
