contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address sub_62940cc4Address;
address _teamAddress;
address sub_6a6a64f7Address;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;
address stor11; offset 8
address stor12;
address stor13;
address stor14;
mapping of uint256 sub_4b634b06;
mapping of uint256 stor16;
mapping of uint256 stor17;
mapping of address stor18;
uint256 stor19;

function _team() {
    return _teamAddress
}

function sub_4b634b06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
}

function sub_62940cc4(?) {
    return sub_62940cc4Address
}

function sub_6a6a64f7(?) {
    return sub_6a6a64f7Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_908aa269(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor19
    uint8(stor11.field_0) = 1
    stor19 = 30 * 10^6 * 24 * 3600
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

function sub_43b7b914(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor17[address(arg1)]:
        revert with 'NH{q', 17
    if stor4 < block.timestamp - stor17[address(arg1)]:
        if stor4 and sub_4b634b06[address(arg1)] > -1 / stor4:
            revert with 'NH{q', 17
        return (stor4 * sub_4b634b06[address(arg1)])
    if block.timestamp - stor17[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor17[address(arg1)]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_4b634b06[address(arg1)]) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_4c76cb65(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5 and stor19 > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and arg2 > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and arg1 > -1 / stor6:
        revert with 'NH{q', 17
    if stor5 * arg2 > (-1 * stor6 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor6 > -((stor5 * arg2) + (stor6 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor5 * stor19 / stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1))
}

function sub_9bc7030a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and stor19 > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and arg1 > -1 / stor6:
        revert with 'NH{q', 17
    if stor5 * stor19 > (-1 * stor6 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor6 > -((stor5 * stor19) + (stor6 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((stor5 * stor19) + (stor6 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor6 * arg1) / arg1))
}

function sub_ea9d2182(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 and stor19 > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and arg1 > -1 / stor6:
        revert with 'NH{q', 17
    if stor5 * eth.balance(this.address) > (-1 * stor6 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor6 > -((stor5 * eth.balance(this.address)) + (stor6 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((stor5 * eth.balance(this.address)) + (stor6 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor5 * stor19 / stor6 + ((stor5 * eth.balance(this.address)) + (stor6 * arg1) / arg1))
}

function sub_36a7bca2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor17[address(arg1)]:
        revert with 'NH{q', 17
    if stor4 < block.timestamp - stor17[address(arg1)]:
        if stor4 and sub_4b634b06[address(arg1)] > -1 / stor4:
            revert with 'NH{q', 17
        if stor16[address(arg1)] > (-1 * stor4 * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        return (stor16[address(arg1)] + (stor4 * sub_4b634b06[address(arg1)]))
    if block.timestamp - stor17[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor17[address(arg1)]:
        revert with 'NH{q', 17
    if stor16[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor17[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    return (stor16[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_5d090318(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor11.field_0)
    if address(arg1) != msg.sender:
        if not stor18[address(msg.sender)]:
            if stor18[address(msg.sender)] != msg.sender:
                stor18[address(msg.sender)] = address(arg1)
    else:
        if not stor18[address(msg.sender)]:
            if stor18[address(msg.sender)] != msg.sender:
                stor18[address(msg.sender)] = 0
    if block.timestamp < stor17[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor4 < block.timestamp - stor17[address(msg.sender)]:
        if stor4 and sub_4b634b06[address(msg.sender)] > -1 / stor4:
            revert with 'NH{q', 17
        if stor16[address(msg.sender)] > (-1 * stor4 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / stor4) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / stor4
        stor16[address(msg.sender)] = 0
        stor17[address(msg.sender)] = block.timestamp
        if stor16[stor18[address(msg.sender)]] > -(stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor16[stor18[address(msg.sender)]] += stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 8
        if stor19 > -(stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor19 += stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor17[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor17[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor16[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor4) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor4
        stor16[address(msg.sender)] = 0
        stor17[address(msg.sender)] = block.timestamp
        if stor16[stor18[address(msg.sender)]] > -(stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor16[stor18[address(msg.sender)]] += stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor19 > -(stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor19 += stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_aebc26d8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor17[address(arg1)]:
        revert with 'NH{q', 17
    if stor4 < block.timestamp - stor17[address(arg1)]:
        if stor4 and sub_4b634b06[address(arg1)] > -1 / stor4:
            revert with 'NH{q', 17
        if stor16[address(arg1)] > (-1 * stor4 * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 and stor19 > -1 / stor5:
            revert with 'NH{q', 17
        if stor6 and stor16[address(arg1)] + (stor4 * sub_4b634b06[address(arg1)]) > -1 / stor6:
            revert with 'NH{q', 17
        if stor5 * stor19 > (-1 * stor16[address(arg1)] * stor6) + (-1 * stor4 * sub_4b634b06[address(arg1)] * stor6) - 1:
            revert with 'NH{q', 17
        if not stor16[address(arg1)] + (stor4 * sub_4b634b06[address(arg1)]):
            revert with 'NH{q', 18
        if stor6 > -((stor5 * stor19) + (stor16[address(arg1)] * stor6) + (stor4 * sub_4b634b06[address(arg1)] * stor6) / stor16[address(arg1)] + (stor4 * sub_4b634b06[address(arg1)])) - 1:
            revert with 'NH{q', 17
        if not stor6 + ((stor5 * stor19) + (stor16[address(arg1)] * stor6) + (stor4 * sub_4b634b06[address(arg1)] * stor6) / stor16[address(arg1)] + (stor4 * sub_4b634b06[address(arg1)])):
            revert with 'NH{q', 18
        return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(arg1)] * stor6) + (stor4 * sub_4b634b06[address(arg1)] * stor6) / stor16[address(arg1)] + (stor4 * sub_4b634b06[address(arg1)])))
    if block.timestamp - stor17[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor17[address(arg1)]:
        revert with 'NH{q', 17
    if stor16[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor17[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and stor19 > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and stor16[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / stor6:
        revert with 'NH{q', 17
    if stor5 * stor19 > (-1 * stor16[address(arg1)] * stor6) + (-1 * block.timestamp * sub_4b634b06[address(arg1)] * stor6) + (stor17[address(arg1)] * sub_4b634b06[address(arg1)] * stor6) - 1:
        revert with 'NH{q', 17
    if not stor16[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)]):
        revert with 'NH{q', 18
    if stor6 > -((stor5 * stor19) + (stor16[address(arg1)] * stor6) + (block.timestamp * sub_4b634b06[address(arg1)] * stor6) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)] * stor6) / stor16[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)])) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((stor5 * stor19) + (stor16[address(arg1)] * stor6) + (block.timestamp * sub_4b634b06[address(arg1)] * stor6) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)] * stor6) / stor16[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 'NH{q', 18
    return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(arg1)] * stor6) + (block.timestamp * sub_4b634b06[address(arg1)] * stor6) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)] * stor6) / stor16[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor17[address(arg1)] * sub_4b634b06[address(arg1)])))
}

function sub_09e7c135(?) {
    require uint8(stor11.field_0)
    if block.timestamp < stor17[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor4 < block.timestamp - stor17[address(msg.sender)]:
        if stor4 and sub_4b634b06[address(msg.sender)] > -1 / stor4:
            revert with 'NH{q', 17
        if stor16[address(msg.sender)] > (-1 * stor4 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 and stor19 > -1 / stor5:
            revert with 'NH{q', 17
        if stor6 and stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) > -1 / stor6:
            revert with 'NH{q', 17
        if stor5 * stor19 > (-1 * stor16[address(msg.sender)] * stor6) + (-1 * stor4 * sub_4b634b06[address(msg.sender)] * stor6) - 1:
            revert with 'NH{q', 17
        if not stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor6 > -((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) and stor7 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) and stor8 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) and stor9 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) and stor10 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor16[address(msg.sender)] = 0
        stor17[address(msg.sender)] = block.timestamp
        if stor19 > -stor16[address(msg.sender)] + (-1 * stor4 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor19 = stor19 + stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])
        call address(stor11.field_8) with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor12 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) * stor8 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor13 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) * stor9 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor14 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) * stor10 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) < stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) * stor7 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]))) - (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (stor4 * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)])) * stor7 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor17[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor17[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor16[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 and stor19 > -1 / stor5:
            revert with 'NH{q', 17
        if stor6 and stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / stor6:
            revert with 'NH{q', 17
        if stor5 * stor19 > (-1 * stor16[address(msg.sender)] * stor6) + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) + (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) - 1:
            revert with 'NH{q', 17
        if not stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor6 > -((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor7 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor8 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor9 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor10 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor16[address(msg.sender)] = 0
        stor17[address(msg.sender)] = block.timestamp
        if stor19 > -stor16[address(msg.sender)] + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor19 = stor19 + stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        call address(stor11.field_8) with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor12 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor8 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor13 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor9 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor14 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor10 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor7 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor19) + (stor16[address(msg.sender)] * stor6) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor6) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor6) / stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor7 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b5994f51(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor11.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if stor5 and stor19 > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and eth.balance(this.address) - msg.value > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and msg.value > -1 / stor6:
        revert with 'NH{q', 17
    if (eth.balance(this.address) * stor5) - (msg.value * stor5) > (-1 * stor6 * msg.value) - 1:
        revert with 'NH{q', 17
    if not msg.value:
        revert with 'NH{q', 18
    if stor6 > -((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value):
        revert with 'NH{q', 18
    if stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) and stor7 > -1 / stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value):
        revert with 'NH{q', 17
    if stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) < stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100:
        revert with 'NH{q', 17
    if (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) and stor8 > -1 / (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100):
        revert with 'NH{q', 17
    if (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) < (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100:
        revert with 'NH{q', 17
    if (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100) and stor9 > -1 / (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100):
        revert with 'NH{q', 17
    if (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100) < (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100:
        revert with 'NH{q', 17
    if (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100) and stor10 > -1 / (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100):
        revert with 'NH{q', 17
    if (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100) < (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor10) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor10) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor10) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100 * stor10) / 100:
        revert with 'NH{q', 17
    if msg.value and stor7 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value and stor8 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value and stor9 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value and stor10 > -1 / msg.value:
        revert with 'NH{q', 17
    call address(stor11.field_8) with:
       value msg.value * stor7 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor12 with:
       value msg.value * stor8 / 100 wei
         gas 2300 * is_zero(value) wei
    call stor13 with:
       value msg.value * stor9 / 100 wei
         gas 2300 * is_zero(value) wei
    call stor14 with:
       value msg.value * stor10 / 100 wei
         gas 2300 * is_zero(value) wei
    if stor16[address(msg.sender)] > -(stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) + (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) + ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100) + ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100) + ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor10) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor10) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor10) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100 * stor10) / 100) - 1:
        revert with 'NH{q', 17
    stor16[address(msg.sender)] = stor16[address(msg.sender)] + (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor10) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor10) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor10) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor9) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor9) - ((stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor8) - (stor5 * stor19 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100 * stor8) / 100 * stor9) / 100 * stor10) / 100)
    require uint8(stor11.field_0)
    if address(arg1) != msg.sender:
        if not stor18[address(msg.sender)]:
            if stor18[address(msg.sender)] != msg.sender:
                stor18[address(msg.sender)] = address(arg1)
    else:
        if not stor18[address(msg.sender)]:
            if stor18[address(msg.sender)] != msg.sender:
                stor18[address(msg.sender)] = 0
    if block.timestamp < stor17[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor4 < block.timestamp - stor17[address(msg.sender)]:
        if stor4 and sub_4b634b06[address(msg.sender)] > -1 / stor4:
            revert with 'NH{q', 17
        if stor16[address(msg.sender)] > (-1 * stor4 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / stor4) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / stor4
        stor16[address(msg.sender)] = 0
        stor17[address(msg.sender)] = block.timestamp
        if stor16[stor18[address(msg.sender)]] > -(stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor16[stor18[address(msg.sender)]] += stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 8
        if stor19 > -(stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor19 += stor16[address(msg.sender)] + (stor4 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor17[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor17[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor16[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor4) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor4
        stor16[address(msg.sender)] = 0
        stor17[address(msg.sender)] = block.timestamp
        if stor16[stor18[address(msg.sender)]] > -(stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor16[stor18[address(msg.sender)]] += stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor19 > -(stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor19 += stor16[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor17[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}



}
