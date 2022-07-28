contract main {




// =====================  Runtime code  =====================


address owner;

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

function sub_111439e3(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if arg1 > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 'NH{q', 17
        if arg1 < 3 * arg1 / 4:
            revert with 'NH{q', 17
        if not arg1 - (3 * arg1 / 4):
            return 1
        if (86399 * arg1) - (86399 * 3 * arg1 / 4) / arg1 - (3 * arg1 / 4) == 86399:
            return 1
    else:
        if 3 * arg1 / arg1 == 3:
            if arg1 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 'NH{q', 17
            if arg1 < 3 * arg1 / 4:
                revert with 'NH{q', 17
            if not arg1 - (3 * arg1 / 4):
                return 1
            if (86399 * arg1) - (86399 * 3 * arg1 / 4) / arg1 - (3 * arg1 / 4) == 86399:
                return 1
    return 0
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 < arg2:
        revert with 'NH{q', 17
    idx = 0
    s = arg1
    while idx < arg3 - arg2 / 24 * 3600:
        if s > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 'NH{q', 17
        if not 3 * s / 4:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 3 * s / 4
        continue 
    if arg3 < arg2:
        revert with 'NH{q', 17
    if not arg3 - arg2 % 24 * 3600:
        return s
    if s > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 'NH{q', 17
    if s < 3 * s / 4:
        revert with 'NH{q', 17
    if s - (3 * s / 4) and arg3 - arg2 % 24 * 3600 > -1 / s - (3 * s / 4):
        revert with 'NH{q', 17
    if s < (s * arg3 - arg2 % 24 * 3600) - (3 * s / 4 * arg3 - arg2 % 24 * 3600) / 24 * 3600:
        revert with 'NH{q', 17
    return (s - ((s * arg3 - arg2 % 24 * 3600) - (3 * s / 4 * arg3 - arg2 % 24 * 3600) / 24 * 3600))
}

function sub_b1ab13ff(?) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < arg2:
        revert with 'NH{q', 17
    idx = 0
    s = arg1
    while idx < block.timestamp - arg2 / 24 * 3600:
        if s > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 'NH{q', 17
        if not 3 * s / 4:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 3 * s / 4
        continue 
    if block.timestamp < arg2:
        revert with 'NH{q', 17
    if not block.timestamp - arg2 % 24 * 3600:
        return s
    if s > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 'NH{q', 17
    if s < 3 * s / 4:
        revert with 'NH{q', 17
    if s - (3 * s / 4) and block.timestamp - arg2 % 24 * 3600 > -1 / s - (3 * s / 4):
        revert with 'NH{q', 17
    if s < (s * block.timestamp - arg2 % 24 * 3600) - (3 * s / 4 * block.timestamp - arg2 % 24 * 3600) / 24 * 3600:
        revert with 'NH{q', 17
    return (s - ((s * block.timestamp - arg2 % 24 * 3600) - (3 * s / 4 * block.timestamp - arg2 % 24 * 3600) / 24 * 3600))
}



}
