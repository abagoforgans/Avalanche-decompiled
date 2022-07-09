contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor5; offset 8
mapping of uint256 sub_4b634b06;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of address stor9;
uint256 stor10;

function sub_4b634b06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
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

function seedMarket() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor10
    uint8(stor5.field_0) = 1
    stor10 = 30 * 10^6 * 24 * 3600
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

function getEggsSinceLastHatch(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor8[address(arg1)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_4b634b06[address(arg1)] > -1 / stor1:
            revert with 'NH{q', 17
        return (stor1 * sub_4b634b06[address(arg1)])
    if block.timestamp - stor8[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2 and stor10 > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 and arg2 > -1 / stor2:
        revert with 'NH{q', 17
    if stor3 and arg1 > -1 / stor3:
        revert with 'NH{q', 17
    if stor2 * arg2 > (-1 * stor3 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor3 > -((stor2 * arg2) + (stor3 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor2 * stor10 / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
}

function calculateEggSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 and stor10 > -1 / stor2:
        revert with 'NH{q', 17
    if stor3 and arg1 > -1 / stor3:
        revert with 'NH{q', 17
    if stor2 * stor10 > (-1 * stor3 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor3 > -((stor2 * stor10) + (stor3 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor3 + ((stor2 * stor10) + (stor3 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor3 * arg1) / arg1))
}

function calculateEggBuySimple(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 and stor10 > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 'NH{q', 17
    if stor3 and arg1 > -1 / stor3:
        revert with 'NH{q', 17
    if stor2 * eth.balance(this.address) > (-1 * stor3 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor3 > -((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor2 * stor10 / stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1))
}

function getMyEggs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor8[address(arg1)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_4b634b06[address(arg1)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(arg1)] > (-1 * stor1 * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        return (stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]))
    if block.timestamp - stor8[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 'NH{q', 17
    if stor7[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor8[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    return (stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function hatchEggs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(stor5.field_0)
    if arg1 != msg.sender:
        if not stor9[address(msg.sender)]:
            if stor9[address(msg.sender)] != msg.sender:
                stor9[address(msg.sender)] = arg1
    else:
        if not stor9[address(msg.sender)]:
            if stor9[address(msg.sender)] != msg.sender:
                stor9[address(msg.sender)] = 0
    if block.timestamp < stor8[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor8[address(msg.sender)]:
        if stor1 and sub_4b634b06[address(msg.sender)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * stor1 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if stor7[stor9[address(msg.sender)]] > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 8
        if stor10 > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor10 += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if stor7[stor9[address(msg.sender)]] > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor10 > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor10 += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_a507abee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor8[address(arg1)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_4b634b06[address(arg1)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(arg1)] > (-1 * stor1 * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 'NH{q', 17
        if stor2 and stor10 > -1 / stor2:
            revert with 'NH{q', 17
        if stor3 and stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]) > -1 / stor3:
            revert with 'NH{q', 17
        if stor2 * stor10 > (-1 * stor7[address(arg1)] * stor3) + (-1 * stor1 * sub_4b634b06[address(arg1)] * stor3) - 1:
            revert with 'NH{q', 17
        if not stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]):
            revert with 'NH{q', 18
        if stor3 > -((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])) - 1:
            revert with 'NH{q', 17
        if not stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])):
            revert with 'NH{q', 18
        return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])))
    if block.timestamp - stor8[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 'NH{q', 17
    if stor7[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor8[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 and stor10 > -1 / stor2:
        revert with 'NH{q', 17
    if stor3 and stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / stor3:
        revert with 'NH{q', 17
    if stor2 * stor10 > (-1 * stor7[address(arg1)] * stor3) + (-1 * block.timestamp * sub_4b634b06[address(arg1)] * stor3) + (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) - 1:
        revert with 'NH{q', 17
    if not stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]):
        revert with 'NH{q', 18
    if stor3 > -((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])) - 1:
        revert with 'NH{q', 17
    if not stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 'NH{q', 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])))
}

function buyEggs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(stor5.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if stor2 and stor10 > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 and eth.balance(this.address) - msg.value > -1 / stor2:
        revert with 'NH{q', 17
    if stor3 and msg.value > -1 / stor3:
        revert with 'NH{q', 17
    if (eth.balance(this.address) * stor2) - (msg.value * stor2) > (-1 * stor3 * msg.value) - 1:
        revert with 'NH{q', 17
    if not msg.value:
        revert with 'NH{q', 18
    if stor3 > -((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) - 1:
        revert with 'NH{q', 17
    if not stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
        revert with 'NH{q', 18
    if stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) and stor4 > -1 / stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
        revert with 'NH{q', 17
    if stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) < stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100:
        revert with 'NH{q', 17
    if msg.value and stor4 > -1 / msg.value:
        revert with 'NH{q', 17
    call address(stor5.field_8) with:
       value msg.value * stor4 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor7[address(msg.sender)] > -(stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) + (stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100) - 1:
        revert with 'NH{q', 17
    stor7[address(msg.sender)] = stor7[address(msg.sender)] + (stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100)
    require uint8(stor5.field_0)
    if arg1 != msg.sender:
        if not stor9[address(msg.sender)]:
            if stor9[address(msg.sender)] != msg.sender:
                stor9[address(msg.sender)] = arg1
    else:
        if not stor9[address(msg.sender)]:
            if stor9[address(msg.sender)] != msg.sender:
                stor9[address(msg.sender)] = 0
    if block.timestamp < stor8[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor8[address(msg.sender)]:
        if stor1 and sub_4b634b06[address(msg.sender)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * stor1 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if stor7[stor9[address(msg.sender)]] > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 8
        if stor10 > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor10 += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor1:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if stor7[stor9[address(msg.sender)]] > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor10 > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor10 += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sellEggs() {
    require uint8(stor5.field_0)
    if block.timestamp < stor8[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor1 < block.timestamp - stor8[address(msg.sender)]:
        if stor1 and sub_4b634b06[address(msg.sender)] > -1 / stor1:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * stor1 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 'NH{q', 17
        if stor2 and stor10 > -1 / stor2:
            revert with 'NH{q', 17
        if stor3 and stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) > -1 / stor3:
            revert with 'NH{q', 17
        if stor2 * stor10 > (-1 * stor7[address(msg.sender)] * stor3) + (-1 * stor1 * sub_4b634b06[address(msg.sender)] * stor3) - 1:
            revert with 'NH{q', 17
        if not stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor3 > -((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if stor10 > -stor7[address(msg.sender)] + (-1 * stor1 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor10 = stor10 + stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 'NH{q', 17
        if stor2 and stor10 > -1 / stor2:
            revert with 'NH{q', 17
        if stor3 and stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / stor3:
            revert with 'NH{q', 17
        if stor2 * stor10 > (-1 * stor7[address(msg.sender)] * stor3) + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) - 1:
            revert with 'NH{q', 17
        if not stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor3 > -((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if stor10 > -stor7[address(msg.sender)] + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor10 = stor10 + stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
