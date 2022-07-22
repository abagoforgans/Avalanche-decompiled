contract main {




// =====================  Runtime code  =====================


const sub_9a274fff(?) = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 sub_0c6b03a4;
mapping of uint256 stor9;
mapping of address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;

function sub_0c6b03a4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0c6b03a4[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_2d6c1661(?) {
    return eth.balance(this.address), stor12, stor13
}

function sub_03bb87d7(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = 0
    stor14 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function seedMarket() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor14
    stor15 = 1
    stor14 = 30 * 10^6 * 24 * 3600
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

function sub_ae166bd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor9[address(arg1)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor9[address(arg1)]:
        if stor1 and sub_0c6b03a4[address(arg1)] > -1 / stor1:
            revert with 'NH{q', 17
        return (stor1 * sub_0c6b03a4[address(arg1)])
    if block.timestamp - stor9[address(arg1)] and sub_0c6b03a4[address(arg1)] > -1 / block.timestamp - stor9[address(arg1)]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]))
}

function calculateBuy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5 and stor14 > -1 / stor5:
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
    return (stor5 * stor14 / stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1))
}

function calculateSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and stor14 > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and arg1 > -1 / stor6:
        revert with 'NH{q', 17
    if stor5 * stor14 > (-1 * stor6 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor6 > -((stor5 * stor14) + (stor6 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((stor5 * stor14) + (stor6 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor6 * arg1) / arg1))
}

function sub_1c22f6eb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor9[address(arg1)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor9[address(arg1)]:
        if stor1 and sub_0c6b03a4[address(arg1)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(arg1)] > (-1 * stor1 * sub_0c6b03a4[address(arg1)]) - 1:
            revert with 'NH{q', 17
        return (stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)]))
    if block.timestamp - stor9[address(arg1)] and sub_0c6b03a4[address(arg1)] > -1 / block.timestamp - stor9[address(arg1)]:
        revert with 'NH{q', 17
    if stor7[address(arg1)] > (-1 * block.timestamp * sub_0c6b03a4[address(arg1)]) + (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]) - 1:
        revert with 'NH{q', 17
    return (stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]))
}

function getUserRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor9[address(arg1)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor9[address(arg1)]:
        if stor1 and sub_0c6b03a4[address(arg1)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(arg1)] > (-1 * stor1 * sub_0c6b03a4[address(arg1)]) - 1:
            revert with 'NH{q', 17
        if stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)]) <= 0:
            return 0
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 and stor14 > -1 / stor5:
            revert with 'NH{q', 17
        if stor6 and stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)]) > -1 / stor6:
            revert with 'NH{q', 17
        if stor5 * stor14 > (-1 * stor7[address(arg1)] * stor6) + (-1 * stor1 * sub_0c6b03a4[address(arg1)] * stor6) - 1:
            revert with 'NH{q', 17
        if not stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)]):
            revert with 'NH{q', 18
        if stor6 > -((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (stor1 * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)])) - 1:
            revert with 'NH{q', 17
        if not stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (stor1 * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)])):
            revert with 'NH{q', 18
        return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (stor1 * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)])))
    if block.timestamp - stor9[address(arg1)] and sub_0c6b03a4[address(arg1)] > -1 / block.timestamp - stor9[address(arg1)]:
        revert with 'NH{q', 17
    if stor7[address(arg1)] > (-1 * block.timestamp * sub_0c6b03a4[address(arg1)]) + (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]) <= 0:
        return 0
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and stor14 > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]) > -1 / stor6:
        revert with 'NH{q', 17
    if stor5 * stor14 > (-1 * stor7[address(arg1)] * stor6) + (-1 * block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) + (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) - 1:
        revert with 'NH{q', 17
    if not stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]):
        revert with 'NH{q', 18
    if stor6 > -((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)])) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)])):
        revert with 'NH{q', 18
    return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)])))
}

function getUserStats(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor9[address(arg1)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor9[address(arg1)]:
        if stor1 and sub_0c6b03a4[address(arg1)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(arg1)] > (-1 * stor1 * sub_0c6b03a4[address(arg1)]) - 1:
            revert with 'NH{q', 17
        if stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)]) <= 0:
            return 0, sub_0c6b03a4[address(arg1)]
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 and stor14 > -1 / stor5:
            revert with 'NH{q', 17
        if stor6 and stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)]) > -1 / stor6:
            revert with 'NH{q', 17
        if stor5 * stor14 > (-1 * stor7[address(arg1)] * stor6) + (-1 * stor1 * sub_0c6b03a4[address(arg1)] * stor6) - 1:
            revert with 'NH{q', 17
        if not stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)]):
            revert with 'NH{q', 18
        if stor6 > -((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (stor1 * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)])) - 1:
            revert with 'NH{q', 17
        if not stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (stor1 * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)])):
            revert with 'NH{q', 18
        return stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (stor1 * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (stor1 * sub_0c6b03a4[address(arg1)])), 
               sub_0c6b03a4[address(arg1)]
    if block.timestamp - stor9[address(arg1)] and sub_0c6b03a4[address(arg1)] > -1 / block.timestamp - stor9[address(arg1)]:
        revert with 'NH{q', 17
    if stor7[address(arg1)] > (-1 * block.timestamp * sub_0c6b03a4[address(arg1)]) + (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]) <= 0:
        return 0, sub_0c6b03a4[address(arg1)]
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 'NH{q', 17
    if stor5 and stor14 > -1 / stor5:
        revert with 'NH{q', 17
    if stor6 and stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]) > -1 / stor6:
        revert with 'NH{q', 17
    if stor5 * stor14 > (-1 * stor7[address(arg1)] * stor6) + (-1 * block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) + (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) - 1:
        revert with 'NH{q', 17
    if not stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)]):
        revert with 'NH{q', 18
    if stor6 > -((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)])) - 1:
        revert with 'NH{q', 17
    if not stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)])):
        revert with 'NH{q', 18
    return stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(arg1)] * stor6) + (block.timestamp * sub_0c6b03a4[address(arg1)] * stor6) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)] * stor6) / stor7[address(arg1)] + (block.timestamp * sub_0c6b03a4[address(arg1)]) - (stor9[address(arg1)] * sub_0c6b03a4[address(arg1)])), 
           sub_0c6b03a4[address(arg1)]
}

function sub_a0c1c2ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor15:
        revert with 0, 'Fish farm not launched yet'
    if msg.value > 500 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum deposit amount is 5000 FTM'
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if stor5 and stor14 > -1 / stor5:
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
    if stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) and stor2 > -1 / stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value):
        revert with 'NH{q', 17
    if stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) < stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor2 / 100:
        revert with 'NH{q', 17
    if msg.value and stor2 > -1 / msg.value:
        revert with 'NH{q', 17
    call stor11 with:
       value msg.value * stor2 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_0c6b03a4[address(msg.sender)]:
        if not stor12 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        stor12++
    if stor7[address(msg.sender)] > -(stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) + (stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor2 / 100) - 1:
        revert with 'NH{q', 17
    stor7[address(msg.sender)] = stor7[address(msg.sender)] + (stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor2 / 100)
    if block.timestamp < stor9[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor9[address(msg.sender)]:
        if stor1 and sub_0c6b03a4[address(msg.sender)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * stor1 * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sub_0c6b03a4[address(msg.sender)] > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1) - 1:
            revert with 'NH{q', 17
        sub_0c6b03a4[address(msg.sender)] += stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1
        stor7[address(msg.sender)] = 0
        stor9[address(msg.sender)] = block.timestamp
        if address(arg1) - msg.sender:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = address(arg1)
        else:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = 0
        if stor7[stor10[address(msg.sender)]] > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor10[address(msg.sender)]] += stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 8
        if not stor13 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        stor13++
        if stor14 > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor14 += stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor9[address(msg.sender)] and sub_0c6b03a4[address(msg.sender)] > -1 / block.timestamp - stor9[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * block.timestamp * sub_0c6b03a4[address(msg.sender)]) + (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sub_0c6b03a4[address(msg.sender)] > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1) - 1:
            revert with 'NH{q', 17
        sub_0c6b03a4[address(msg.sender)] += stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1
        stor7[address(msg.sender)] = 0
        stor9[address(msg.sender)] = block.timestamp
        if address(arg1) - msg.sender:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = address(arg1)
        else:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = 0
        if stor7[stor10[address(msg.sender)]] > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor10[address(msg.sender)]] += stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 8
        if not stor13 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        stor13++
        if stor14 > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor14 += stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 5
}

function sub_2e5ec272(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor15:
        revert with 0, 'Fish farm not launched yet'
    if block.timestamp < stor9[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor9[address(msg.sender)]:
        if stor1 and sub_0c6b03a4[address(msg.sender)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * stor1 * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sha3(block.timestamp, sub_0c6b03a4[address(msg.sender)], stor13) % 100 > stor4:
            if sub_0c6b03a4[address(msg.sender)] > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1) - 1:
                revert with 'NH{q', 17
            sub_0c6b03a4[address(msg.sender)] += stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1
        else:
            if stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1 and stor3 > -1 / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1:
                revert with 'NH{q', 17
            if stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1 > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100) - 1:
                revert with 'NH{q', 17
            emit 0x44598074: (stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100), msg.sender
            if sub_0c6b03a4[address(msg.sender)] > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1) + -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100) - 1:
                revert with 'NH{q', 17
            sub_0c6b03a4[address(msg.sender)] = sub_0c6b03a4[address(msg.sender)] + (stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1) + (stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100)
        stor7[address(msg.sender)] = 0
        stor9[address(msg.sender)] = block.timestamp
        if address(arg1) - msg.sender:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = address(arg1)
        else:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = 0
        if stor7[stor10[address(msg.sender)]] > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor10[address(msg.sender)]] += stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 8
        if not stor13 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        stor13++
        if stor14 > -(stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor14 += stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor9[address(msg.sender)] and sub_0c6b03a4[address(msg.sender)] > -1 / block.timestamp - stor9[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * block.timestamp * sub_0c6b03a4[address(msg.sender)]) + (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sha3(block.timestamp, sub_0c6b03a4[address(msg.sender)], stor13) % 100 > stor4:
            if sub_0c6b03a4[address(msg.sender)] > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1) - 1:
                revert with 'NH{q', 17
            sub_0c6b03a4[address(msg.sender)] += stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1
        else:
            if stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1 and stor3 > -1 / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1:
                revert with 'NH{q', 17
            if stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1 > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100) - 1:
                revert with 'NH{q', 17
            emit 0x44598074: (stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100), msg.sender
            if sub_0c6b03a4[address(msg.sender)] > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1) + -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100) - 1:
                revert with 'NH{q', 17
            sub_0c6b03a4[address(msg.sender)] = sub_0c6b03a4[address(msg.sender)] + (stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1) + (stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / stor1 * stor3 / 100)
        stor7[address(msg.sender)] = 0
        stor9[address(msg.sender)] = block.timestamp
        if address(arg1) - msg.sender:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = address(arg1)
        else:
            if not stor10[address(msg.sender)]:
                if stor10[address(msg.sender)] != msg.sender:
                    stor10[address(msg.sender)] = 0
        if stor7[stor10[address(msg.sender)]] > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor10[address(msg.sender)]] += stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 8
        if not stor13 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        stor13++
        if stor14 > -(stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor14 += stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) / 5
}

function sub_737e73f4(?) {
    if not stor15:
        revert with 0, 'Fish farm not launched yet'
    if block.timestamp < stor9[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor9[address(msg.sender)]:
        if stor1 and sub_0c6b03a4[address(msg.sender)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * stor1 * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 and stor14 > -1 / stor5:
            revert with 'NH{q', 17
        if stor6 and stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]) > -1 / stor6:
            revert with 'NH{q', 17
        if stor5 * stor14 > (-1 * stor7[address(msg.sender)] * stor6) + (-1 * stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) - 1:
            revert with 'NH{q', 17
        if not stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor6 > -((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])) and stor2 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])):
            revert with 'NH{q', 17
        stor7[address(msg.sender)] = 0
        stor9[address(msg.sender)] = block.timestamp
        if stor14 > -stor7[address(msg.sender)] + (-1 * stor1 * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor14 = stor14 + stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])
        call stor11 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])) * stor2 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])) < stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])) * stor2 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)]))) - (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (stor1 * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (stor1 * sub_0c6b03a4[address(msg.sender)])) * stor2 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor9[address(msg.sender)] and sub_0c6b03a4[address(msg.sender)] > -1 / block.timestamp - stor9[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * block.timestamp * sub_0c6b03a4[address(msg.sender)]) + (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 and stor14 > -1 / stor5:
            revert with 'NH{q', 17
        if stor6 and stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) > -1 / stor6:
            revert with 'NH{q', 17
        if stor5 * stor14 > (-1 * stor7[address(msg.sender)] * stor6) + (-1 * block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) + (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) - 1:
            revert with 'NH{q', 17
        if not stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor6 > -((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])) and stor2 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])):
            revert with 'NH{q', 17
        stor7[address(msg.sender)] = 0
        stor9[address(msg.sender)] = block.timestamp
        if stor14 > -stor7[address(msg.sender)] + (-1 * block.timestamp * sub_0c6b03a4[address(msg.sender)]) + (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor14 = stor14 + stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])
        call stor11 with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])) * stor2 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])) < stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])) * stor2 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)]))) - (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor7[address(msg.sender)] * stor6) + (block.timestamp * sub_0c6b03a4[address(msg.sender)] * stor6) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)] * stor6) / stor7[address(msg.sender)] + (block.timestamp * sub_0c6b03a4[address(msg.sender)]) - (stor9[address(msg.sender)] * sub_0c6b03a4[address(msg.sender)])) * stor2 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
