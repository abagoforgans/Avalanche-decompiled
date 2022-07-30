contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 EGGS_TO_HATCH_1MINERS;
uint256 sub_a4fc8f7a;
uint256 refFeeVal;
uint8 stor4;
address sub_7f6e140aAddress; offset 8
mapping of uint256 sub_4b634b06;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of address stor8;
uint256 stor9;

function sub_4b634b06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
}

function EGGS_TO_HATCH_1MINERS() {
    return EGGS_TO_HATCH_1MINERS
}

function sub_7f6e140a(?) {
    return sub_7f6e140aAddress
}

function owner() {
    return owner
}

function sub_a4fc8f7a(?) {
    return sub_a4fc8f7a
}

function refFeeVal() {
    return refFeeVal
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
    require not stor9
    stor4 = 1
    stor9 = 30 * 10^6 * 24 * 3600
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7f6e140aAddress = arg1
}

function sub_2c0c2ec9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    refFeeVal = arg1
}

function sub_b328d854(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    sub_a4fc8f7a = arg1
}

function setRewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    EGGS_TO_HATCH_1MINERS = arg1
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor9 and arg1 > -1 / stor9:
        revert with 'NH{q', 17
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if not arg1 + arg2:
        revert with 'NH{q', 18
    return (stor9 * arg1 / arg1 + arg2)
}

function calculateEggSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if arg1 > -stor9 - 1:
        revert with 'NH{q', 17
    if not arg1 + stor9:
        revert with 'NH{q', 18
    return (eth.balance(this.address) * arg1 / arg1 + stor9)
}

function calculateEggBuySimple(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9 and arg1 > -1 / stor9:
        revert with 'NH{q', 17
    if arg1 > -eth.balance(this.address) - 1:
        revert with 'NH{q', 17
    if not arg1 + eth.balance(this.address):
        revert with 'NH{q', 18
    return (stor9 * arg1 / arg1 + eth.balance(this.address))
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
    if block.timestamp < stor7[address(arg1)]:
        revert with 'NH{q', 17
    if EGGS_TO_HATCH_1MINERS < block.timestamp - stor7[address(arg1)]:
        if EGGS_TO_HATCH_1MINERS and sub_4b634b06[address(arg1)] > -1 / EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 17
        return (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)])
    if block.timestamp - stor7[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor7[address(arg1)]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_4b634b06[address(arg1)]) - (stor7[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function getMyEggs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor7[address(arg1)]:
        revert with 'NH{q', 17
    if EGGS_TO_HATCH_1MINERS < block.timestamp - stor7[address(arg1)]:
        if EGGS_TO_HATCH_1MINERS and sub_4b634b06[address(arg1)] > -1 / EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 17
        if stor6[address(arg1)] > (-1 * EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        return (stor6[address(arg1)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)]))
    if block.timestamp - stor7[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor7[address(arg1)]:
        revert with 'NH{q', 17
    if stor6[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor7[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    return (stor6[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor7[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_a507abee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor7[address(arg1)]:
        revert with 'NH{q', 17
    if EGGS_TO_HATCH_1MINERS < block.timestamp - stor7[address(arg1)]:
        if EGGS_TO_HATCH_1MINERS and sub_4b634b06[address(arg1)] > -1 / EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 17
        if stor6[address(arg1)] > (-1 * EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        if eth.balance(this.address) and stor6[address(arg1)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)]) > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        if stor6[address(arg1)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)]) > -stor9 - 1:
            revert with 'NH{q', 17
        if not stor6[address(arg1)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)]) + stor9:
            revert with 'NH{q', 18
        return ((stor6[address(arg1)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)] * eth.balance(this.address)) / stor6[address(arg1)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(arg1)]) + stor9)
    if block.timestamp - stor7[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor7[address(arg1)]:
        revert with 'NH{q', 17
    if stor6[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor7[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) and stor6[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor7[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if stor6[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor7[address(arg1)] * sub_4b634b06[address(arg1)]) > -stor9 - 1:
        revert with 'NH{q', 17
    if not stor6[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor7[address(arg1)] * sub_4b634b06[address(arg1)]) + stor9:
        revert with 'NH{q', 18
    return ((stor6[address(arg1)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(arg1)] * eth.balance(this.address)) - (stor7[address(arg1)] * sub_4b634b06[address(arg1)] * eth.balance(this.address)) / stor6[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor7[address(arg1)] * sub_4b634b06[address(arg1)]) + stor9)
}

function hatchEggs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor4
    if arg1 != msg.sender:
        if not stor8[address(msg.sender)]:
            if stor8[address(msg.sender)] != msg.sender:
                stor8[address(msg.sender)] = arg1
    else:
        if not stor8[address(msg.sender)]:
            if stor8[address(msg.sender)] != msg.sender:
                stor8[address(msg.sender)] = 0
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if EGGS_TO_HATCH_1MINERS < block.timestamp - stor7[address(msg.sender)]:
        if EGGS_TO_HATCH_1MINERS and sub_4b634b06[address(msg.sender)] > -1 / EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] > (-1 * EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
        stor6[address(msg.sender)] = 0
        stor7[address(msg.sender)] = block.timestamp
        if stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) and refFeeVal > -1 / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor6[stor8[address(msg.sender)]] > -((stor6[address(msg.sender)] * refFeeVal) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100) - 1:
            revert with 'NH{q', 17
        stor6[stor8[address(msg.sender)]] += (stor6[address(msg.sender)] * refFeeVal) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100
        if stor9 > -(stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor9 += stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor7[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor7[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
        stor6[address(msg.sender)] = 0
        stor7[address(msg.sender)] = block.timestamp
        if stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and refFeeVal > -1 / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor6[stor8[address(msg.sender)]] > -((stor6[address(msg.sender)] * refFeeVal) + (block.timestamp * sub_4b634b06[address(msg.sender)] * refFeeVal) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100) - 1:
            revert with 'NH{q', 17
        stor6[stor8[address(msg.sender)]] += (stor6[address(msg.sender)] * refFeeVal) + (block.timestamp * sub_4b634b06[address(msg.sender)] * refFeeVal) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100
        if stor9 > -(stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor9 += stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function buyEggs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor4
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if stor9 and msg.value > -1 / stor9:
        revert with 'NH{q', 17
    if msg.value > -eth.balance(this.address) + msg.value - 1:
        revert with 'NH{q', 17
    if not eth.balance(this.address):
        revert with 'NH{q', 18
    if stor9 * msg.value / eth.balance(this.address) and sub_a4fc8f7a > -1 / stor9 * msg.value / eth.balance(this.address):
        revert with 'NH{q', 17
    if stor9 * msg.value / eth.balance(this.address) < stor9 * msg.value / eth.balance(this.address) * sub_a4fc8f7a / 100:
        revert with 'NH{q', 17
    if msg.value and sub_a4fc8f7a > -1 / msg.value:
        revert with 'NH{q', 17
    call sub_7f6e140aAddress with:
       value msg.value * sub_a4fc8f7a / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor6[address(msg.sender)] > -(stor9 * msg.value / eth.balance(this.address)) + (stor9 * msg.value / eth.balance(this.address) * sub_a4fc8f7a / 100) - 1:
        revert with 'NH{q', 17
    stor6[address(msg.sender)] = stor6[address(msg.sender)] + (stor9 * msg.value / eth.balance(this.address)) - (stor9 * msg.value / eth.balance(this.address) * sub_a4fc8f7a / 100)
    require stor4
    if arg1 != msg.sender:
        if not stor8[address(msg.sender)]:
            if stor8[address(msg.sender)] != msg.sender:
                stor8[address(msg.sender)] = arg1
    else:
        if not stor8[address(msg.sender)]:
            if stor8[address(msg.sender)] != msg.sender:
                stor8[address(msg.sender)] = 0
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if EGGS_TO_HATCH_1MINERS < block.timestamp - stor7[address(msg.sender)]:
        if EGGS_TO_HATCH_1MINERS and sub_4b634b06[address(msg.sender)] > -1 / EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] > (-1 * EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
        stor6[address(msg.sender)] = 0
        stor7[address(msg.sender)] = block.timestamp
        if stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) and refFeeVal > -1 / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor6[stor8[address(msg.sender)]] > -((stor6[address(msg.sender)] * refFeeVal) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100) - 1:
            revert with 'NH{q', 17
        stor6[stor8[address(msg.sender)]] += (stor6[address(msg.sender)] * refFeeVal) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100
        if stor9 > -(stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor9 += stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor7[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor7[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
        stor6[address(msg.sender)] = 0
        stor7[address(msg.sender)] = block.timestamp
        if stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and refFeeVal > -1 / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor6[stor8[address(msg.sender)]] > -((stor6[address(msg.sender)] * refFeeVal) + (block.timestamp * sub_4b634b06[address(msg.sender)] * refFeeVal) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100) - 1:
            revert with 'NH{q', 17
        stor6[stor8[address(msg.sender)]] += (stor6[address(msg.sender)] * refFeeVal) + (block.timestamp * sub_4b634b06[address(msg.sender)] * refFeeVal) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * refFeeVal) / 100
        if stor9 > -(stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor9 += stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sellEggs() {
    require stor4
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if EGGS_TO_HATCH_1MINERS < block.timestamp - stor7[address(msg.sender)]:
        if EGGS_TO_HATCH_1MINERS and sub_4b634b06[address(msg.sender)] > -1 / EGGS_TO_HATCH_1MINERS:
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] > (-1 * EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if eth.balance(this.address) and stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) > -stor9 - 1:
            revert with 'NH{q', 17
        if not stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9:
            revert with 'NH{q', 18
        if (stor6[address(msg.sender)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9 and sub_a4fc8f7a > -1 / (stor6[address(msg.sender)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9:
            revert with 'NH{q', 17
        stor6[address(msg.sender)] = 0
        stor7[address(msg.sender)] = block.timestamp
        if stor9 > -stor6[address(msg.sender)] + (-1 * EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor9 = stor9 + stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)])
        call sub_7f6e140aAddress with:
           value (stor6[address(msg.sender)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9 * sub_a4fc8f7a / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (stor6[address(msg.sender)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9 < (stor6[address(msg.sender)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9 * sub_a4fc8f7a / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value ((stor6[address(msg.sender)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9) - ((stor6[address(msg.sender)] * eth.balance(this.address)) + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * sub_4b634b06[address(msg.sender)]) + stor9 * sub_a4fc8f7a / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor7[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor7[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if eth.balance(this.address) and stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        if stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -stor9 - 1:
            revert with 'NH{q', 17
        if not stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9:
            revert with 'NH{q', 18
        if (stor6[address(msg.sender)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9 and sub_a4fc8f7a > -1 / (stor6[address(msg.sender)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9:
            revert with 'NH{q', 17
        stor6[address(msg.sender)] = 0
        stor7[address(msg.sender)] = block.timestamp
        if stor9 > -stor6[address(msg.sender)] + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor9 = stor9 + stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        call sub_7f6e140aAddress with:
           value (stor6[address(msg.sender)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9 * sub_a4fc8f7a / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (stor6[address(msg.sender)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9 < (stor6[address(msg.sender)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9 * sub_a4fc8f7a / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value ((stor6[address(msg.sender)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9) - ((stor6[address(msg.sender)] * eth.balance(this.address)) + (block.timestamp * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * eth.balance(this.address)) / stor6[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) + stor9 * sub_a4fc8f7a / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
