contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address sub_62940cc4Address;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
address stor7;
mapping of uint256 sub_3644a14e;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of address stor13;
uint256 sub_ead888a6;

function sub_3644a14e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3644a14e[address(arg1)]
}

function sub_62940cc4(?) {
    return sub_62940cc4Address
}

function owner() {
    return owner
}

function sub_ead888a6(?) {
    return sub_ead888a6
}

function _fallback() payable {
    revert
}

function sub_30336b8d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_908aa269(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not sub_ead888a6
    stor6 = 1
    sub_ead888a6 = 30 * 10^6 * 24 * 3600
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_77dae0e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor12[address(arg1)]:
        revert with 'NH{q', 17
    if stor2 < block.timestamp - stor12[address(arg1)]:
        if stor2 and sub_3644a14e[address(arg1)] > -1 / stor2:
            revert with 'NH{q', 17
        return (stor2 * sub_3644a14e[address(arg1)])
    if block.timestamp - stor12[address(arg1)] and sub_3644a14e[address(arg1)] > -1 / block.timestamp - stor12[address(arg1)]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_3644a14e[address(arg1)]) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)]))
}

function sub_39895a47(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 and sub_ead888a6 > -1 / stor3:
        revert with 'NH{q', 17
    if stor3 and arg2 > -1 / stor3:
        revert with 'NH{q', 17
    if stor4 and arg1 > -1 / stor4:
        revert with 'NH{q', 17
    if stor3 * arg2 > (-1 * stor4 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor4 > -((stor3 * arg2) + (stor4 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor4 + ((stor3 * arg2) + (stor4 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor3 * sub_ead888a6 / stor4 + ((stor3 * arg2) + (stor4 * arg1) / arg1))
}

function sub_1d2173bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 and eth.balance(this.address) > -1 / stor3:
        revert with 'NH{q', 17
    if stor3 and sub_ead888a6 > -1 / stor3:
        revert with 'NH{q', 17
    if stor4 and arg1 > -1 / stor4:
        revert with 'NH{q', 17
    if stor3 * sub_ead888a6 > (-1 * stor4 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor4 > -((stor3 * sub_ead888a6) + (stor4 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor4 + ((stor3 * sub_ead888a6) + (stor4 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor4 * arg1) / arg1))
}

function sub_1a302479(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 and sub_ead888a6 > -1 / stor3:
        revert with 'NH{q', 17
    if stor3 and eth.balance(this.address) > -1 / stor3:
        revert with 'NH{q', 17
    if stor4 and arg1 > -1 / stor4:
        revert with 'NH{q', 17
    if stor3 * eth.balance(this.address) > (-1 * stor4 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor4 > -((stor3 * eth.balance(this.address)) + (stor4 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor4 + ((stor3 * eth.balance(this.address)) + (stor4 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor3 * sub_ead888a6 / stor4 + ((stor3 * eth.balance(this.address)) + (stor4 * arg1) / arg1))
}

function sub_fd56491b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor12[address(arg1)]:
        revert with 'NH{q', 17
    if stor2 < block.timestamp - stor12[address(arg1)]:
        if stor2 and sub_3644a14e[address(arg1)] > -1 / stor2:
            revert with 'NH{q', 17
        if stor11[address(arg1)] > (-1 * stor2 * sub_3644a14e[address(arg1)]) - 1:
            revert with 'NH{q', 17
        return (stor11[address(arg1)] + (stor2 * sub_3644a14e[address(arg1)]))
    if block.timestamp - stor12[address(arg1)] and sub_3644a14e[address(arg1)] > -1 / block.timestamp - stor12[address(arg1)]:
        revert with 'NH{q', 17
    if stor11[address(arg1)] > (-1 * block.timestamp * sub_3644a14e[address(arg1)]) + (stor12[address(arg1)] * sub_3644a14e[address(arg1)]) - 1:
        revert with 'NH{q', 17
    return (stor11[address(arg1)] + (block.timestamp * sub_3644a14e[address(arg1)]) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)]))
}

function sub_d1fb59fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor6
    if address(arg1) != msg.sender:
        if not stor13[address(msg.sender)]:
            if stor13[address(msg.sender)] != msg.sender:
                stor13[address(msg.sender)] = address(arg1)
    else:
        if not stor13[address(msg.sender)]:
            if stor13[address(msg.sender)] != msg.sender:
                stor13[address(msg.sender)] = 0
    if block.timestamp < stor12[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor2 < block.timestamp - stor12[address(msg.sender)]:
        if stor2 and sub_3644a14e[address(msg.sender)] > -1 / stor2:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] > (-1 * stor2 * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor2:
            revert with 'NH{q', 18
        if sub_3644a14e[address(msg.sender)] > -(stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / stor2) - 1:
            revert with 'NH{q', 17
        sub_3644a14e[address(msg.sender)] += stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / stor2
        stor11[address(msg.sender)] = 0
        stor12[address(msg.sender)] = block.timestamp
        if stor11[stor13[address(msg.sender)]] > -(stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor11[stor13[address(msg.sender)]] += stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 8
        if sub_ead888a6 > -(stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_ead888a6 += stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor12[address(msg.sender)] and sub_3644a14e[address(msg.sender)] > -1 / block.timestamp - stor12[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] > (-1 * block.timestamp * sub_3644a14e[address(msg.sender)]) + (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor2:
            revert with 'NH{q', 18
        if sub_3644a14e[address(msg.sender)] > -(stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / stor2) - 1:
            revert with 'NH{q', 17
        sub_3644a14e[address(msg.sender)] += stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / stor2
        stor11[address(msg.sender)] = 0
        stor12[address(msg.sender)] = block.timestamp
        if stor11[stor13[address(msg.sender)]] > -(stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor11[stor13[address(msg.sender)]] += stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 8
        if sub_ead888a6 > -(stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_ead888a6 += stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 5
}

function sub_b4fad2d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor12[address(arg1)]:
        revert with 'NH{q', 17
    if stor2 < block.timestamp - stor12[address(arg1)]:
        if stor2 and sub_3644a14e[address(arg1)] > -1 / stor2:
            revert with 'NH{q', 17
        if stor11[address(arg1)] > (-1 * stor2 * sub_3644a14e[address(arg1)]) - 1:
            revert with 'NH{q', 17
        if stor3 and eth.balance(this.address) > -1 / stor3:
            revert with 'NH{q', 17
        if stor3 and sub_ead888a6 > -1 / stor3:
            revert with 'NH{q', 17
        if stor4 and stor11[address(arg1)] + (stor2 * sub_3644a14e[address(arg1)]) > -1 / stor4:
            revert with 'NH{q', 17
        if stor3 * sub_ead888a6 > (-1 * stor11[address(arg1)] * stor4) + (-1 * stor2 * sub_3644a14e[address(arg1)] * stor4) - 1:
            revert with 'NH{q', 17
        if not stor11[address(arg1)] + (stor2 * sub_3644a14e[address(arg1)]):
            revert with 'NH{q', 18
        if stor4 > -((stor3 * sub_ead888a6) + (stor11[address(arg1)] * stor4) + (stor2 * sub_3644a14e[address(arg1)] * stor4) / stor11[address(arg1)] + (stor2 * sub_3644a14e[address(arg1)])) - 1:
            revert with 'NH{q', 17
        if not stor4 + ((stor3 * sub_ead888a6) + (stor11[address(arg1)] * stor4) + (stor2 * sub_3644a14e[address(arg1)] * stor4) / stor11[address(arg1)] + (stor2 * sub_3644a14e[address(arg1)])):
            revert with 'NH{q', 18
        return (stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(arg1)] * stor4) + (stor2 * sub_3644a14e[address(arg1)] * stor4) / stor11[address(arg1)] + (stor2 * sub_3644a14e[address(arg1)])))
    if block.timestamp - stor12[address(arg1)] and sub_3644a14e[address(arg1)] > -1 / block.timestamp - stor12[address(arg1)]:
        revert with 'NH{q', 17
    if stor11[address(arg1)] > (-1 * block.timestamp * sub_3644a14e[address(arg1)]) + (stor12[address(arg1)] * sub_3644a14e[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if stor3 and eth.balance(this.address) > -1 / stor3:
        revert with 'NH{q', 17
    if stor3 and sub_ead888a6 > -1 / stor3:
        revert with 'NH{q', 17
    if stor4 and stor11[address(arg1)] + (block.timestamp * sub_3644a14e[address(arg1)]) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)]) > -1 / stor4:
        revert with 'NH{q', 17
    if stor3 * sub_ead888a6 > (-1 * stor11[address(arg1)] * stor4) + (-1 * block.timestamp * sub_3644a14e[address(arg1)] * stor4) + (stor12[address(arg1)] * sub_3644a14e[address(arg1)] * stor4) - 1:
        revert with 'NH{q', 17
    if not stor11[address(arg1)] + (block.timestamp * sub_3644a14e[address(arg1)]) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)]):
        revert with 'NH{q', 18
    if stor4 > -((stor3 * sub_ead888a6) + (stor11[address(arg1)] * stor4) + (block.timestamp * sub_3644a14e[address(arg1)] * stor4) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)] * stor4) / stor11[address(arg1)] + (block.timestamp * sub_3644a14e[address(arg1)]) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)])) - 1:
        revert with 'NH{q', 17
    if not stor4 + ((stor3 * sub_ead888a6) + (stor11[address(arg1)] * stor4) + (block.timestamp * sub_3644a14e[address(arg1)] * stor4) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)] * stor4) / stor11[address(arg1)] + (block.timestamp * sub_3644a14e[address(arg1)]) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)])):
        revert with 'NH{q', 18
    return (stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(arg1)] * stor4) + (block.timestamp * sub_3644a14e[address(arg1)] * stor4) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)] * stor4) / stor11[address(arg1)] + (block.timestamp * sub_3644a14e[address(arg1)]) - (stor12[address(arg1)] * sub_3644a14e[address(arg1)])))
}

function sub_b04b19bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor6
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if stor3 and sub_ead888a6 > -1 / stor3:
        revert with 'NH{q', 17
    if stor3 and eth.balance(this.address) - msg.value > -1 / stor3:
        revert with 'NH{q', 17
    if stor4 and msg.value > -1 / stor4:
        revert with 'NH{q', 17
    if (eth.balance(this.address) * stor3) - (msg.value * stor3) > (-1 * stor4 * msg.value) - 1:
        revert with 'NH{q', 17
    if not msg.value:
        revert with 'NH{q', 18
    if stor4 > -((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value) - 1:
        revert with 'NH{q', 17
    if not stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value):
        revert with 'NH{q', 18
    if stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value) and stor5 > -1 / stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value):
        revert with 'NH{q', 17
    if stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value) < stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value) * stor5 / 100:
        revert with 'NH{q', 17
    if msg.value and stor5 > -1 / msg.value:
        revert with 'NH{q', 17
    call stor7 with:
       value msg.value * stor5 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor11[address(msg.sender)] > -(stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value)) + (stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value) * stor5 / 100) - 1:
        revert with 'NH{q', 17
    stor11[address(msg.sender)] = stor11[address(msg.sender)] + (stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value)) - (stor3 * sub_ead888a6 / stor4 + ((eth.balance(this.address) * stor3) - (msg.value * stor3) + (stor4 * msg.value) / msg.value) * stor5 / 100)
    require stor6
    if address(arg1) != msg.sender:
        if not stor13[address(msg.sender)]:
            if stor13[address(msg.sender)] != msg.sender:
                stor13[address(msg.sender)] = address(arg1)
    else:
        if not stor13[address(msg.sender)]:
            if stor13[address(msg.sender)] != msg.sender:
                stor13[address(msg.sender)] = 0
    if block.timestamp < stor12[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor2 < block.timestamp - stor12[address(msg.sender)]:
        if stor2 and sub_3644a14e[address(msg.sender)] > -1 / stor2:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] > (-1 * stor2 * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor2:
            revert with 'NH{q', 18
        if sub_3644a14e[address(msg.sender)] > -(stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / stor2) - 1:
            revert with 'NH{q', 17
        sub_3644a14e[address(msg.sender)] += stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / stor2
        stor11[address(msg.sender)] = 0
        stor12[address(msg.sender)] = block.timestamp
        if stor11[stor13[address(msg.sender)]] > -(stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor11[stor13[address(msg.sender)]] += stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 8
        if sub_ead888a6 > -(stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_ead888a6 += stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor12[address(msg.sender)] and sub_3644a14e[address(msg.sender)] > -1 / block.timestamp - stor12[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] > (-1 * block.timestamp * sub_3644a14e[address(msg.sender)]) + (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor2:
            revert with 'NH{q', 18
        if sub_3644a14e[address(msg.sender)] > -(stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / stor2) - 1:
            revert with 'NH{q', 17
        sub_3644a14e[address(msg.sender)] += stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / stor2
        stor11[address(msg.sender)] = 0
        stor12[address(msg.sender)] = block.timestamp
        if stor11[stor13[address(msg.sender)]] > -(stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor11[stor13[address(msg.sender)]] += stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 8
        if sub_ead888a6 > -(stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_ead888a6 += stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) / 5
}

function sub_879d2194(?) {
    require stor6
    if block.timestamp < stor12[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor2 < block.timestamp - stor12[address(msg.sender)]:
        if stor2 and sub_3644a14e[address(msg.sender)] > -1 / stor2:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] > (-1 * stor2 * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor3 and eth.balance(this.address) > -1 / stor3:
            revert with 'NH{q', 17
        if stor3 and sub_ead888a6 > -1 / stor3:
            revert with 'NH{q', 17
        if stor4 and stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]) > -1 / stor4:
            revert with 'NH{q', 17
        if stor3 * sub_ead888a6 > (-1 * stor11[address(msg.sender)] * stor4) + (-1 * stor2 * sub_3644a14e[address(msg.sender)] * stor4) - 1:
            revert with 'NH{q', 17
        if not stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor4 > -((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])) and stor5 > -1 / stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])):
            revert with 'NH{q', 17
        stor11[address(msg.sender)] = 0
        stor12[address(msg.sender)] = block.timestamp
        if sub_ead888a6 > -stor11[address(msg.sender)] + (-1 * stor2 * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        sub_ead888a6 = sub_ead888a6 + stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])
        call stor7 with:
           value stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])) * stor5 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])) < stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])) * stor5 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)]))) - (stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (stor2 * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (stor2 * sub_3644a14e[address(msg.sender)])) * stor5 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor12[address(msg.sender)] and sub_3644a14e[address(msg.sender)] > -1 / block.timestamp - stor12[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] > (-1 * block.timestamp * sub_3644a14e[address(msg.sender)]) + (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor3 and eth.balance(this.address) > -1 / stor3:
            revert with 'NH{q', 17
        if stor3 and sub_ead888a6 > -1 / stor3:
            revert with 'NH{q', 17
        if stor4 and stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) > -1 / stor4:
            revert with 'NH{q', 17
        if stor3 * sub_ead888a6 > (-1 * stor11[address(msg.sender)] * stor4) + (-1 * block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) + (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) - 1:
            revert with 'NH{q', 17
        if not stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor4 > -((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])) and stor5 > -1 / stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])):
            revert with 'NH{q', 17
        stor11[address(msg.sender)] = 0
        stor12[address(msg.sender)] = block.timestamp
        if sub_ead888a6 > -stor11[address(msg.sender)] + (-1 * block.timestamp * sub_3644a14e[address(msg.sender)]) + (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        sub_ead888a6 = sub_ead888a6 + stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])
        call stor7 with:
           value stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])) * stor5 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])) < stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])) * stor5 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)]))) - (stor3 * eth.balance(this.address) / stor4 + ((stor3 * sub_ead888a6) + (stor11[address(msg.sender)] * stor4) + (block.timestamp * sub_3644a14e[address(msg.sender)] * stor4) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)] * stor4) / stor11[address(msg.sender)] + (block.timestamp * sub_3644a14e[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_3644a14e[address(msg.sender)])) * stor5 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
