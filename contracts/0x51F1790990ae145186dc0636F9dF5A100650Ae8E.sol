contract main {




// =====================  Runtime code  =====================


const sub_0417c5f5(?) = 10000


address owner;
uint256 ratio0;
uint256 ratio1;

function owner() payable {
    return owner
}

function ratio1() payable {
    return ratio1
}

function ratio0() payable {
    return ratio0
}

function _fallback() payable {
    revert
}

function getRatio() payable {
    return ratio0, ratio1, 10000
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function setRatio(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '!zero'
    if not arg2:
        revert with 0, '!zero'
    if arg1 > !arg2:
        revert with 'NH{q', 17
    if arg1 + arg2 != 10000:
        revert with 0, '!total'
    ratio0 = arg1
    ratio1 = arg2
}



}
