contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_eaac4cba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if 0 >= arg2:
        revert with 0, 'ERROR: Wrong node level'
    if arg2 > 3:
        revert with 0, 'ERROR: Wrong node level'
    if not address(arg1):
        revert with 0, 'SENDER CAN'T BE ZERO'
    if not -arg2 + 1:
        return 20
    if -arg2 + 2:
        return 10
    return 15
}

function sub_c7b64f5a(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 <= 24 * 3600:
        return 250
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 <= 48 * 24 * 3600:
        return 150
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 <= 72 * 24 * 3600:
        return 100
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 > 96 * 24 * 3600:
        return 50
    return 75
}



}
