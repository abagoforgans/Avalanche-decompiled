contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 168
uint8 stor0; offset 184
uint128 stor0; offset 184
uint128 stor0; offset 168
address owner; offset 8
mapping of uint256 myMiners;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint8 stor5;
uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 sub_f975bd91;
uint256 stor12;
uint256 stor13;
uint256 stor14;
array of uint256 stor15;
array of uint256 stor16;
address stor18;
address stor19;

function getMyMiners() {
    return myMiners[address(msg.sender)]
}

function paused() {
    return bool(uint8(stor0.field_0))
}

function owner() {
    return owner
}

function sub_f975bd91(?) {
    return sub_f975bd91
}

function _fallback() payable {
    revert
}

function InitContract() payable {
    require not stor6
    stor6 = 30 * 10^6 * 24 * 3600
    Mask(88, 0, stor0.field_168) = 1
}

function sub_9c9e369f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor0.field_184) = 1
}

function sub_05d33675(?) {
    if block.timestamp < stor4[address(msg.sender)]:
        revert with 'NH{q', 17
    return (block.timestamp - stor4[address(msg.sender)])
}

function sub_d4d92045(?) {
    if block.timestamp < stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    return (block.timestamp - stor3[address(msg.sender)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function test(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    emit TestEvent(msg.value, stor10);
}

function addWhiteListAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function removeWhiteListAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function pauseContract() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor0.field_0) = 1
    emit Paused(msg.sender);
}

function sub_483b54de(?) {
    if not stor3[address(msg.sender)]:
        return 0
    if block.timestamp < stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    return block.timestamp - stor3[address(msg.sender)] / 60 / 60 / 24 % 3 <= 3
}

function resumeContract() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor0.field_0) = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_fd41bfe9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor3[address(arg1)]:
        revert with 'NH{q', 17
    if stor12 < block.timestamp - stor3[address(arg1)]:
        if stor12 and myMiners[address(arg1)] > -1 / stor12:
            revert with 'NH{q', 17
        return (stor12 * myMiners[address(arg1)])
    if block.timestamp - stor3[address(arg1)] and myMiners[address(arg1)] > -1 / block.timestamp - stor3[address(arg1)]:
        revert with 'NH{q', 17
    return ((block.timestamp * myMiners[address(arg1)]) - (stor3[address(arg1)] * myMiners[address(arg1)]))
}

function sub_6d02995d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor13 and stor6 > -1 / stor13:
        revert with 'NH{q', 17
    if stor13 and arg2 > -1 / stor13:
        revert with 'NH{q', 17
    if stor14 and arg1 > -1 / stor14:
        revert with 'NH{q', 17
    if stor13 * arg2 > (-1 * stor14 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor14 > -((stor13 * arg2) + (stor14 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor14 + ((stor13 * arg2) + (stor14 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor13 * stor6 / stor14 + ((stor13 * arg2) + (stor14 * arg1) / arg1))
}

function sub_c4b0a2cb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13 and eth.balance(this.address) > -1 / stor13:
        revert with 'NH{q', 17
    if stor13 and stor6 > -1 / stor13:
        revert with 'NH{q', 17
    if stor14 and arg1 > -1 / stor14:
        revert with 'NH{q', 17
    if stor13 * stor6 > (-1 * stor14 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor14 > -((stor13 * stor6) + (stor14 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor14 + ((stor13 * stor6) + (stor14 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor14 * arg1) / arg1))
}

function sub_0524eff6(?) {
    if not stor4[address(msg.sender)]:
        return 0
    if block.timestamp < stor4[address(msg.sender)]:
        revert with 'NH{q', 17
    if block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7 >= stor7.length:
        revert with 'NH{q', 50
    if stor3[address(msg.sender)]:
        if block.timestamp < stor3[address(msg.sender)]:
            revert with 'NH{q', 17
        if block.timestamp - stor3[address(msg.sender)] / 60 / 60 / 24 % 3 <= 3:
            return stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]
    if stor8 <= stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
        return stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]
    return stor8
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor13 and arg3 > -1 / stor13:
        revert with 'NH{q', 17
    if stor13 and arg2 > -1 / stor13:
        revert with 'NH{q', 17
    if stor14 and arg1 > -1 / stor14:
        revert with 'NH{q', 17
    if stor13 * arg2 > (-1 * stor14 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor14 > -((stor13 * arg2) + (stor14 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor14 + ((stor13 * arg2) + (stor14 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor13 * arg3 / stor14 + ((stor13 * arg2) + (stor14 * arg1) / arg1))
}

function sub_b5cc7d54(?) {
    if not stor4[address(msg.sender)]:
        return 1
    if block.timestamp < stor4[address(msg.sender)]:
        revert with 'NH{q', 17
    if block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7 >= stor7.length:
        revert with 'NH{q', 50
    if stor3[address(msg.sender)]:
        if block.timestamp < stor3[address(msg.sender)]:
            revert with 'NH{q', 17
        if block.timestamp - stor3[address(msg.sender)] / 60 / 60 / 24 % 3 <= 3:
            return not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]
    if stor8 <= stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
        return not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]
    return not stor8
}

function sub_f8ad688f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13 and stor6 > -1 / stor13:
        revert with 'NH{q', 17
    if stor13 and eth.balance(this.address) > -1 / stor13:
        revert with 'NH{q', 17
    if stor14 and arg1 > -1 / stor14:
        revert with 'NH{q', 17
    if stor13 * eth.balance(this.address) > (-1 * stor14 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor14 > -((stor13 * eth.balance(this.address)) + (stor14 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor14 + ((stor13 * eth.balance(this.address)) + (stor14 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor13 * stor6 / stor14 + ((stor13 * eth.balance(this.address)) + (stor14 * arg1) / arg1))
}

function getMyTrees() {
    if block.timestamp < stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor12 < block.timestamp - stor3[address(msg.sender)]:
        if stor12 and myMiners[address(msg.sender)] > -1 / stor12:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * stor12 * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        return (stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))
    if block.timestamp - stor3[address(msg.sender)] and myMiners[address(msg.sender)] > -1 / block.timestamp - stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor2[address(msg.sender)] > (-1 * block.timestamp * myMiners[address(msg.sender)]) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) - 1:
        revert with 'NH{q', 17
    return (stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))
}

function sub_a80838d5(?) {
    require uint8(stor0.field_168)
    if block.timestamp < stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor12 < block.timestamp - stor3[address(msg.sender)]:
        if stor12 and myMiners[address(msg.sender)] > -1 / stor12:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * stor12 * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor12:
            revert with 'NH{q', 18
        if myMiners[address(msg.sender)] > -(stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / stor12) - 1:
            revert with 'NH{q', 17
        myMiners[address(msg.sender)] += stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / stor12
        stor2[address(msg.sender)] = 0
        stor3[address(msg.sender)] = block.timestamp
        if stor2[address(msg.sender)] > -(stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 10) - 1:
            revert with 'NH{q', 17
        stor2[address(msg.sender)] += stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 10
        if stor6 > -(stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor6 += stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor3[address(msg.sender)] and myMiners[address(msg.sender)] > -1 / block.timestamp - stor3[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * block.timestamp * myMiners[address(msg.sender)]) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor12:
            revert with 'NH{q', 18
        if myMiners[address(msg.sender)] > -(stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / stor12) - 1:
            revert with 'NH{q', 17
        myMiners[address(msg.sender)] += stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / stor12
        stor2[address(msg.sender)] = 0
        stor3[address(msg.sender)] = block.timestamp
        if stor2[address(msg.sender)] > -(stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 10) - 1:
            revert with 'NH{q', 17
        stor2[address(msg.sender)] += stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 10
        if stor6 > -(stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor6 += stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 5
}

function sub_7e6bcb57(?) {
    if block.timestamp < stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor12 < block.timestamp - stor3[address(msg.sender)]:
        if stor12 and myMiners[address(msg.sender)] > -1 / stor12:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * stor12 * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor13 and eth.balance(this.address) > -1 / stor13:
            revert with 'NH{q', 17
        if stor13 and stor6 > -1 / stor13:
            revert with 'NH{q', 17
        if stor14 and stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) > -1 / stor14:
            revert with 'NH{q', 17
        if stor13 * stor6 > (-1 * stor2[address(msg.sender)] * stor14) + (-1 * stor12 * myMiners[address(msg.sender)] * stor14) - 1:
            revert with 'NH{q', 17
        if not stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor14 > -((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
            revert with 'NH{q', 18
        return (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])))
    if block.timestamp - stor3[address(msg.sender)] and myMiners[address(msg.sender)] > -1 / block.timestamp - stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor2[address(msg.sender)] > (-1 * block.timestamp * myMiners[address(msg.sender)]) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) - 1:
        revert with 'NH{q', 17
    if stor13 and eth.balance(this.address) > -1 / stor13:
        revert with 'NH{q', 17
    if stor13 and stor6 > -1 / stor13:
        revert with 'NH{q', 17
    if stor14 and stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) > -1 / stor14:
        revert with 'NH{q', 17
    if stor13 * stor6 > (-1 * stor2[address(msg.sender)] * stor14) + (-1 * block.timestamp * myMiners[address(msg.sender)] * stor14) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) - 1:
        revert with 'NH{q', 17
    if not stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]):
        revert with 'NH{q', 18
    if stor14 > -((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) - 1:
        revert with 'NH{q', 17
    if not stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
        revert with 'NH{q', 18
    return (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])))
}

function sub_6d3e7807(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    if not uint8(stor0.field_168):
        revert with 0, 'Contract not initialized yet'
    if msg.value > stor9:
        revert with 0, 'Max investment is 100 AVAX'
    if msg.value < stor10:
        revert with 0, 'Minimum investment is 0.1 AVAX'
    if bool(stor5[address(msg.sender)]) != 1:
        if bool(uint8(stor0.field_184)) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'WhiteList not completed Yet or you are not a WhiteList'
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if stor13 and stor6 > -1 / stor13:
        revert with 'NH{q', 17
    if stor13 and eth.balance(this.address) - msg.value > -1 / stor13:
        revert with 'NH{q', 17
    if stor14 and msg.value > -1 / stor14:
        revert with 'NH{q', 17
    if (eth.balance(this.address) * stor13) - (msg.value * stor13) > (-1 * stor14 * msg.value) - 1:
        revert with 'NH{q', 17
    if not msg.value:
        revert with 'NH{q', 18
    if stor14 > -((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) - 1:
        revert with 'NH{q', 17
    if not stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value):
        revert with 'NH{q', 18
    if 0 >= stor16.length:
        revert with 'NH{q', 50
    if stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) and uint256(stor16.field_0) > -1 / stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value):
        revert with 'NH{q', 17
    if 1 >= stor16.length:
        revert with 'NH{q', 50
    if stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) and uint256(stor16.field_256) > -1 / stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value):
        revert with 'NH{q', 17
    if stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_0) / 100 > -(stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_256) / 100) - 1:
        revert with 'NH{q', 17
    if (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_0) / 100) + (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_256) / 100) > -1:
        revert with 'NH{q', 17
    if stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) < (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_0) / 100) + (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_256) / 100):
        revert with 'NH{q', 17
    if 0 >= stor16.length:
        revert with 'NH{q', 50
    if msg.value and uint256(stor16.field_0) > -1 / msg.value:
        revert with 'NH{q', 17
    if 1 >= stor16.length:
        revert with 'NH{q', 50
    if msg.value and uint256(stor16.field_256) > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * uint256(stor16.field_0) / 100 > -(msg.value * uint256(stor16.field_256) / 100) - 1:
        revert with 'NH{q', 17
    if (msg.value * uint256(stor16.field_0) / 100) + (msg.value * uint256(stor16.field_256) / 100) > -1:
        revert with 'NH{q', 17
    call stor18 with:
       value msg.value * uint256(stor16.field_0) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor19 with:
       value msg.value * uint256(stor16.field_256) / 100 wei
         gas 2300 * is_zero(value) wei
    if stor2[address(msg.sender)] > -(stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value)) + (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_0) / 100) + (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_256) / 100) - 1:
        revert with 'NH{q', 17
    stor2[address(msg.sender)] = stor2[address(msg.sender)] + (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value)) - (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_0) / 100) - (stor13 * stor6 / stor14 + ((eth.balance(this.address) * stor13) - (msg.value * stor13) + (stor14 * msg.value) / msg.value) * uint256(stor16.field_256) / 100)
    if not stor4[address(msg.sender)]:
        stor4[address(msg.sender)] = block.timestamp
    require uint8(stor0.field_168)
    if block.timestamp < stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor12 < block.timestamp - stor3[address(msg.sender)]:
        if stor12 and myMiners[address(msg.sender)] > -1 / stor12:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * stor12 * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor12:
            revert with 'NH{q', 18
        if myMiners[address(msg.sender)] > -(stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / stor12) - 1:
            revert with 'NH{q', 17
        myMiners[address(msg.sender)] += stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / stor12
        stor2[address(msg.sender)] = 0
        stor3[address(msg.sender)] = block.timestamp
        if stor2[address(msg.sender)] > -(stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 10) - 1:
            revert with 'NH{q', 17
        stor2[address(msg.sender)] += stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 10
        if stor6 > -(stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor6 += stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor3[address(msg.sender)] and myMiners[address(msg.sender)] > -1 / block.timestamp - stor3[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * block.timestamp * myMiners[address(msg.sender)]) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor12:
            revert with 'NH{q', 18
        if myMiners[address(msg.sender)] > -(stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / stor12) - 1:
            revert with 'NH{q', 17
        myMiners[address(msg.sender)] += stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / stor12
        stor2[address(msg.sender)] = 0
        stor3[address(msg.sender)] = block.timestamp
        if stor2[address(msg.sender)] > -(stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 10) - 1:
            revert with 'NH{q', 17
        stor2[address(msg.sender)] += stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 10
        if stor6 > -(stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor6 += stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) / 5
}

function sub_66147bd5(?) {
    require uint8(stor0.field_168)
    if block.timestamp < stor3[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor12 < block.timestamp - stor3[address(msg.sender)]:
        if stor12 and myMiners[address(msg.sender)] > -1 / stor12:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * stor12 * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor13 and eth.balance(this.address) > -1 / stor13:
            revert with 'NH{q', 17
        if stor13 and stor6 > -1 / stor13:
            revert with 'NH{q', 17
        if stor14 and stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]) > -1 / stor14:
            revert with 'NH{q', 17
        if stor13 * stor6 > (-1 * stor2[address(msg.sender)] * stor14) + (-1 * stor12 * myMiners[address(msg.sender)] * stor14) - 1:
            revert with 'NH{q', 17
        if not stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor14 > -((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
            revert with 'NH{q', 18
        stor2[address(msg.sender)] = 0
        stor3[address(msg.sender)] = block.timestamp
        if stor6 > -stor2[address(msg.sender)] + (-1 * stor12 * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor6 = stor6 + stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])
        if not stor4[address(msg.sender)]:
            if 0 >= stor16.length:
                revert with 'NH{q', 50
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                revert with 'NH{q', 17
            if 1 >= stor16.length:
                revert with 'NH{q', 50
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                revert with 'NH{q', 17
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                revert with 'NH{q', 17
            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                revert with 'NH{q', 17
            call stor18 with:
               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor19 with:
               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                 gas 2300 * is_zero(value) wei
            if sub_f975bd91 > -1:
                revert with 'NH{q', 17
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                revert with 'NH{q', 17
            call msg.sender with:
               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                 gas 2300 * is_zero(value) wei
        else:
            if block.timestamp < stor4[address(msg.sender)]:
                revert with 'NH{q', 17
            if block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7 >= stor7.length:
                revert with 'NH{q', 50
            if not stor3[address(msg.sender)]:
                if stor8 <= stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                    if not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                        if 0 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -1:
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                            revert with 'NH{q', 17
                        if stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] < uint256(stor15.field_0) + uint256(stor15.field_256):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        sub_f975bd91 += (stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not stor8:
                        if 0 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -1:
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                            revert with 'NH{q', 17
                        if stor8 < uint256(stor15.field_0) + uint256(stor15.field_256):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and stor8 - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        sub_f975bd91 += (stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                if block.timestamp < stor3[address(msg.sender)]:
                    revert with 'NH{q', 17
                if block.timestamp - stor3[address(msg.sender)] / 60 / 60 / 24 % 3 <= 3:
                    if not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                        if 0 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -1:
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                            revert with 'NH{q', 17
                        if stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] < uint256(stor15.field_0) + uint256(stor15.field_256):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        sub_f975bd91 += (stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if stor8 <= stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                        if not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                            if 0 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -1:
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                                revert with 'NH{q', 17
                            if stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] < uint256(stor15.field_0) + uint256(stor15.field_256):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            sub_f975bd91 += (stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if not stor8:
                            if 0 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -1:
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                                revert with 'NH{q', 17
                            if stor8 < uint256(stor15.field_0) + uint256(stor15.field_256):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) and stor8 - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            sub_f975bd91 += (stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (stor12 * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (stor12 * myMiners[address(msg.sender)]))) / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor3[address(msg.sender)] and myMiners[address(msg.sender)] > -1 / block.timestamp - stor3[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor2[address(msg.sender)] > (-1 * block.timestamp * myMiners[address(msg.sender)]) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor13 and eth.balance(this.address) > -1 / stor13:
            revert with 'NH{q', 17
        if stor13 and stor6 > -1 / stor13:
            revert with 'NH{q', 17
        if stor14 and stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) > -1 / stor14:
            revert with 'NH{q', 17
        if stor13 * stor6 > (-1 * stor2[address(msg.sender)] * stor14) + (-1 * block.timestamp * myMiners[address(msg.sender)] * stor14) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) - 1:
            revert with 'NH{q', 17
        if not stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor14 > -((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
            revert with 'NH{q', 18
        stor2[address(msg.sender)] = 0
        stor3[address(msg.sender)] = block.timestamp
        if stor6 > -stor2[address(msg.sender)] + (-1 * block.timestamp * myMiners[address(msg.sender)]) + (stor3[address(msg.sender)] * myMiners[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor6 = stor6 + stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])
        if not stor4[address(msg.sender)]:
            if 0 >= stor16.length:
                revert with 'NH{q', 50
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                revert with 'NH{q', 17
            if 1 >= stor16.length:
                revert with 'NH{q', 50
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                revert with 'NH{q', 17
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                revert with 'NH{q', 17
            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                revert with 'NH{q', 17
            call stor18 with:
               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor19 with:
               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                 gas 2300 * is_zero(value) wei
            if sub_f975bd91 > -1:
                revert with 'NH{q', 17
            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                revert with 'NH{q', 17
            call msg.sender with:
               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                 gas 2300 * is_zero(value) wei
        else:
            if block.timestamp < stor4[address(msg.sender)]:
                revert with 'NH{q', 17
            if block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7 >= stor7.length:
                revert with 'NH{q', 50
            if not stor3[address(msg.sender)]:
                if stor8 <= stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                    if not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                        if 0 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -1:
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                            revert with 'NH{q', 17
                        if stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] < uint256(stor15.field_0) + uint256(stor15.field_256):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        sub_f975bd91 += (stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not stor8:
                        if 0 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -1:
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                            revert with 'NH{q', 17
                        if stor8 < uint256(stor15.field_0) + uint256(stor15.field_256):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and stor8 - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        sub_f975bd91 += (stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                if block.timestamp < stor3[address(msg.sender)]:
                    revert with 'NH{q', 17
                if block.timestamp - stor3[address(msg.sender)] / 60 / 60 / 24 % 3 <= 3:
                    if not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                        if 0 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor16.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -1:
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if 1 >= stor15.length:
                            revert with 'NH{q', 50
                        if 0 >= stor15.length:
                            revert with 'NH{q', 50
                        if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                            revert with 'NH{q', 17
                        if stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] < uint256(stor15.field_0) + uint256(stor15.field_256):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                            revert with 'NH{q', 17
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                            revert with 'NH{q', 17
                        if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        call stor18 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor19 with:
                           value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if sub_f975bd91 > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                            revert with 'NH{q', 17
                        sub_f975bd91 += (stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100
                        if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if stor8 <= stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                        if not stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7]:
                            if 0 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -1:
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                                revert with 'NH{q', 17
                            if stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] < uint256(stor15.field_0) + uint256(stor15.field_256):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            sub_f975bd91 += (stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor7[block.timestamp - stor4[address(msg.sender)] / 60 / 60 / 24 % 7] * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if not stor8:
                            if 0 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor16.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor16.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) > -1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -1:
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor16.field_256) / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_0) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if 1 >= stor15.length:
                                revert with 'NH{q', 50
                            if 0 >= stor15.length:
                                revert with 'NH{q', 50
                            if uint256(stor15.field_0) > -uint256(stor15.field_256) - 1:
                                revert with 'NH{q', 17
                            if stor8 < uint256(stor15.field_0) + uint256(stor15.field_256):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) and stor8 - uint256(stor15.field_0) - uint256(stor15.field_256) > -1 / stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])):
                                revert with 'NH{q', 17
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 > -(stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - 1:
                                revert with 'NH{q', 17
                            if (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            call stor18 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor19 with:
                               value stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_f975bd91 > -((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) - 1:
                                revert with 'NH{q', 17
                            sub_f975bd91 += (stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100
                            if stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) < (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) + (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) + ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100):
                                revert with 'NH{q', 17
                            call msg.sender with:
                               value (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_0) / 100) - (stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)])) * uint256(stor15.field_256) / 100) - ((stor8 * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_0) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) - (uint256(stor15.field_256) * stor13 * eth.balance(this.address) / stor14 + ((stor13 * stor6) + (stor2[address(msg.sender)] * stor14) + (block.timestamp * myMiners[address(msg.sender)] * stor14) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)] * stor14) / stor2[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (stor3[address(msg.sender)] * myMiners[address(msg.sender)]))) / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
