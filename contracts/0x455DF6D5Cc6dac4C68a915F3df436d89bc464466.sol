contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_6912af46(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not stor1[arg1][1][arg2]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b7f61882(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        if not stor1[arg1][1][arg2]:
            stor1[arg1]++
            stor1[arg1][stor1[arg1]] = arg2
            stor1[arg1][1][arg2] = stor1[arg1]
    else:
        if stor1[arg1][1][arg2]:
            if stor1[arg1][1][arg2] < 1:
                revert with 'NH{q', 17
            if stor1[arg1] < 1:
                revert with 'NH{q', 17
            if stor1[arg1] - 1 >= stor1[arg1]:
                revert with 'NH{q', 50
            if stor1[arg1][1][arg2] - 1 >= stor1[arg1]:
                revert with 'NH{q', 50
            stor1[arg1][stor1[arg1][1][arg2]] = stor1[arg1][stor1[arg1]]
            if stor1[arg1][1][arg2] - 1 > -2:
                revert with 'NH{q', 17
            stor1[arg1][1][stor1[arg1][stor1[arg1]]] = stor1[arg1][1][arg2]
            if not stor1[arg1]:
                revert with 'NH{q', 49
            stor1[arg1][stor1[arg1]] = 0
            stor1[arg1]--
            stor1[arg1][1][arg2] = 0
}



}
