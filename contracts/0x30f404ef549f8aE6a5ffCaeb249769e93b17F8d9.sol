contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 sub_6291f572;
uint256 sub_caacafe2;
uint256 decimals;
array of uint256 symbol;
mapping of uint256 balanceOf;

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function decimals() payable {
    return decimals
}

function sub_6291f572(?) payable {
    return sub_6291f572
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_caacafe2(?) payable {
    return sub_caacafe2
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(msg.sender)]:
        revert with 0, 'Ownable: caller is not an owner'
    require arg1
    stor0[address(arg1)] = 1
}

function redeem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[address(msg.sender)]:
        revert with 0, 'Ownable: caller is not an owner'
    if not arg1:
        revert with 0, 'zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Insufficent balance'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg2
    if arg2 > sub_caacafe2:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_caacafe2 -= arg2
    emit Redeemed(address(arg1), arg2);
}

function issue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[address(msg.sender)]:
        revert with 0, 'Ownable: caller is not an owner'
    if not arg1:
        revert with 0, 'zero address'
    if sub_6291f572 + arg2 < sub_6291f572:
        revert with 0, 'SafeMath: addition overflow'
    sub_6291f572 += arg2
    if sub_caacafe2 + arg2 < sub_caacafe2:
        revert with 0, 'SafeMath: addition overflow'
    sub_caacafe2 += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Issued(address(arg1), arg2);
}



}
