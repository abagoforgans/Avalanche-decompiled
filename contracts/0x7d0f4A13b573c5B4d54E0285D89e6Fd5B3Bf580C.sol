contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_d3a9903f;
mapping of uint256 sub_46d7f08e;
mapping of uint256 sub_1ca61c29;
mapping of uint256 sub_b003ff52;
uint8 stor4;

function sub_1ca61c29(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1ca61c29[arg1]
}

function sub_46d7f08e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_46d7f08e[arg1]
}

function sub_b003ff52(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b003ff52[arg1]
}

function sub_d3a9903f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d3a9903f[arg1]
}

function _fallback() payable {
    revert
}

function sub_3cd6263e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == 0x661ee3542cfffbbefca7f83cfad2e9d006d61a2
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_47a5751a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if stor4:
        revert with 0, 'No re-entrancy'
    stor4 = 1
    require msg.value >= block.gasprice
    if sub_b003ff52[address(arg1)] > -2592001:
        revert with 'NH{q', 17
    if block.timestamp < sub_b003ff52[address(arg1)]:
        revert with 'NH{q', 17
    if block.timestamp < sub_b003ff52[address(arg1)] + (720 * 24 * 3600):
        if 744 * 24 * 3600 < block.timestamp - sub_b003ff52[address(arg1)]:
            revert with 'NH{q', 17
        if sub_1ca61c29[address(arg1)] and -block.timestamp + sub_b003ff52[address(arg1)] + (744 * 24 * 3600) > -1 / sub_1ca61c29[address(arg1)]:
            revert with 'NH{q', 17
        require msg.value > (744 * 24 * 3600 * sub_1ca61c29[address(arg1)]) - (block.timestamp * sub_1ca61c29[address(arg1)]) + (sub_b003ff52[address(arg1)] * sub_1ca61c29[address(arg1)]) / 24 * 3600
    else:
        if block.timestamp - sub_b003ff52[address(arg1)] < 696 * 24 * 3600:
            revert with 'NH{q', 17
        if sub_1ca61c29[address(arg1)] and 24 * 3600 > -1 / sub_1ca61c29[address(arg1)]:
            revert with 'NH{q', 17
        if not block.timestamp + -sub_b003ff52[address(arg1)] - (696 * 24 * 3600):
            revert with 'NH{q', 18
        require msg.value > 24 * 3600 * sub_1ca61c29[address(arg1)] / block.timestamp + -sub_b003ff52[address(arg1)] - (696 * 24 * 3600)
    if sub_b003ff52[address(arg1)] > -86401:
        revert with 'NH{q', 17
    require block.timestamp > sub_b003ff52[address(arg1)] + (24 * 3600)
    sub_1ca61c29[address(arg1)] = msg.value
    sub_46d7f08e[address(arg1)] = arg3
    sub_d3a9903f[address(arg1)] = arg2
    sub_b003ff52[address(arg1)] = block.timestamp
    if msg.value < msg.value / 100:
        revert with 'NH{q', 17
    call address(arg1) with:
       value msg.value - (msg.value / 100) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    stor4 = 0
}



}
