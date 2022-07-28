contract main {




// =====================  Runtime code  =====================


#
#  - lock(uint256 arg1, uint256 arg2)
#  - redeem()
#
const sub_e85b861d(?) = (block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600)


address tokenAddress;
mapping of struct userVote;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function userVote(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userVote[arg1].field_0, userVote[arg1].field_256, userVote[arg1].field_512, userVote[arg1].field_768
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_6fbfcf67(?) payable {
    return stor2, stor3, stor4
}

function vote() payable {
    if block.timestamp >= userVote[address(msg.sender)].field_512:
        revert with 0, 'votes expired'
    if userVote[address(msg.sender)].field_0 <= 0:
        revert with 0, 'no votes'
    if block.timestamp < 96 * 24 * 3600:
        revert with 'NH{q', 17
    if block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600 != stor2:
        if block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600 < stor2:
            revert with 'NH{q', 17
        if (block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600) - stor2 > 1:
            stor4 = 0
        else:
            stor4 = stor3
        stor2 = block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600
        stor3 = 0
    if not userVote[address(msg.sender)].field_768 - (block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600):
        revert with 0, 'already voted'
    if stor3 > -userVote[address(msg.sender)].field_0 - 1:
        revert with 'NH{q', 17
    stor3 += userVote[address(msg.sender)].field_0
    userVote[address(msg.sender)].field_768 = block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600
    emit Vote(userVote[address(msg.sender)].field_0, msg.sender);
}



}
