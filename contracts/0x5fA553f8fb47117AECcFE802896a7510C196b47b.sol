contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 numberOfDeposits;

function getNumberOfDeposits() {
    return numberOfDeposits
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_87a09f29(?) payable {
    numberOfDeposits = 0
}

function deposit() payable {
    if msg.value > 0:
        if numberOfDeposits > -2:
            revert with 'NH{q', 17
        numberOfDeposits++
    return numberOfDeposits
}



}
