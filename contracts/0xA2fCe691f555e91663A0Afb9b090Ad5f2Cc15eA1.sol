contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function calcMint1t1DEI(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    return (arg2 * arg1 / 10^6)
}

function calcMintAlgorithmicDEI(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    return (arg2 * arg1 / 10^6)
}

function calcRedeem1t1DEI(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    return (10^6 * arg2 / arg1)
}

function recollateralizeAmount(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 * arg2 / 10^6 < arg3:
        revert with 'NH{q', 17
    return ((arg1 * arg2 / 10^6) - arg3)
}

function sub_3c04af9f(?) payable {
    require calldata.size - 4 >= 128
    if not arg1:
        revert with 0, 'No excess collateral to buy back!'
    if arg4 and arg2 > -1 / arg4:
        revert with 'NH{q', 17
    if arg4 * arg2 / 10^6 > arg1:
        revert with 0, 'You are trying to buy back more than the excess!'
    if not arg3:
        revert with 'NH{q', 18
    return (10^6 * arg4 * arg2 / 10^6 / arg3)
}

function sub_b6290337(?) payable {
    require calldata.size - 4 >= 160
    if arg3 and arg1 > -1 / arg3:
        revert with 'NH{q', 17
    if arg4 and arg2 > -1 / arg4:
        revert with 'NH{q', 17
    if arg4 * arg2 / 10^6 > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not arg5:
        revert with 'NH{q', 18
    if 10^6 * arg4 * arg2 / 10^6 / arg5 < arg4 * arg2 / 10^6:
        revert with 'NH{q', 17
    if (10^6 * arg4 * arg2 / 10^6 / arg5) - (arg4 * arg2 / 10^6) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg4 * arg2 / 10^6 > !((10^6 * arg4 * arg2 / 10^6 / arg5) - (arg4 * arg2 / 10^6)):
        revert with 'NH{q', 17
    return 10^6 * arg4 * arg2 / 10^6 / arg5, (10^6 * 10^6 * arg4 * arg2 / 10^6 / arg5) - (10^6 * arg4 * arg2 / 10^6) / arg1
}

function calcRecollateralizeDEIInner(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg3 > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not arg4:
        revert with 'NH{q', 18
    if arg4 and 10^6 * arg3 / arg4 > -1 / arg4:
        revert with 'NH{q', 17
    if arg5 and arg4 > -1 / arg5:
        revert with 'NH{q', 17
    if arg5 * arg4 < arg4 * 10^6 * arg3 / arg4:
        revert with 'NH{q', 17
    if arg1 * arg2 / 10^6 > (arg5 * arg4) - (arg4 * 10^6 * arg3 / arg4) / 10^6:
        if (arg5 * arg4) - (arg4 * 10^6 * arg3 / arg4) / 10^6 > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        return 10^6 * (arg5 * arg4) - (arg4 * 10^6 * arg3 / arg4) / 10^6 / arg2, (arg5 * arg4) - (arg4 * 10^6 * arg3 / arg4) / 10^6
    if arg1 * arg2 / 10^6 > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    return 10^6 * arg1 * arg2 / 10^6 / arg2, arg1 * arg2 / 10^6
}



}
