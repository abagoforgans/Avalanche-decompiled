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
mapping of address referrals;
uint256 sub_8ac64ae5;
address stor11;
address stor12;

function initialized() {
    return bool(uint8(stor5.field_0))
}

function sub_4b634b06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
}

function sub_8ac64ae5(?) {
    return sub_8ac64ae5
}

function owner() {
    return owner
}

function referrals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrals[arg1]
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
    require not sub_8ac64ae5
    uint8(stor5.field_0) = 1
    sub_8ac64ae5 = 120 * 10^6 * 24 * 3600
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

function sub_bf94d6c4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
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

function sub_b7d32c51(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2 and sub_8ac64ae5 > -1 / stor2:
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
    return (stor2 * sub_8ac64ae5 / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
}

function sub_6b14f944(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 and sub_8ac64ae5 > -1 / stor2:
        revert with 'NH{q', 17
    if stor3 and arg1 > -1 / stor3:
        revert with 'NH{q', 17
    if stor2 * sub_8ac64ae5 > (-1 * stor3 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor3 > -((stor2 * sub_8ac64ae5) + (stor3 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor3 + ((stor2 * sub_8ac64ae5) + (stor3 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor3 * arg1) / arg1))
}

function sub_065cc8c4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 and sub_8ac64ae5 > -1 / stor2:
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
    return (stor2 * sub_8ac64ae5 / stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1))
}

function sub_8b0139a0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
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
        if stor2 and sub_8ac64ae5 > -1 / stor2:
            revert with 'NH{q', 17
        if stor3 and stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]) > -1 / stor3:
            revert with 'NH{q', 17
        if stor2 * sub_8ac64ae5 > (-1 * stor7[address(arg1)] * stor3) + (-1 * stor1 * sub_4b634b06[address(arg1)] * stor3) - 1:
            revert with 'NH{q', 17
        if not stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]):
            revert with 'NH{q', 18
        if stor3 > -((stor2 * sub_8ac64ae5) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])) - 1:
            revert with 'NH{q', 17
        if not stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])):
            revert with 'NH{q', 18
        return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])))
    if block.timestamp - stor8[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 'NH{q', 17
    if stor7[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor8[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 'NH{q', 17
    if stor2 and sub_8ac64ae5 > -1 / stor2:
        revert with 'NH{q', 17
    if stor3 and stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / stor3:
        revert with 'NH{q', 17
    if stor2 * sub_8ac64ae5 > (-1 * stor7[address(arg1)] * stor3) + (-1 * block.timestamp * sub_4b634b06[address(arg1)] * stor3) + (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) - 1:
        revert with 'NH{q', 17
    if not stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]):
        revert with 'NH{q', 18
    if stor3 > -((stor2 * sub_8ac64ae5) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])) - 1:
        revert with 'NH{q', 17
    if not stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 'NH{q', 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])))
}

function sub_fcc265d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor5.field_0)
    if address(arg1) != msg.sender:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = address(arg1)
    else:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = 0
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
        if stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) and 100 > -1 / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor7[stor9[address(msg.sender)]] > -((100 * stor7[address(msg.sender)]) + (100 * stor1 * sub_4b634b06[address(msg.sender)]) / 1000) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += (100 * stor7[address(msg.sender)]) + (100 * stor1 * sub_4b634b06[address(msg.sender)]) / 1000
        if sub_8ac64ae5 > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_8ac64ae5 += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5
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
        if stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and 100 > -1 / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor7[stor9[address(msg.sender)]] > -((100 * stor7[address(msg.sender)]) + (100 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 1000) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += (100 * stor7[address(msg.sender)]) + (100 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 1000
        if sub_8ac64ae5 > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_8ac64ae5 += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_96a62a20(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor5.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if stor2 and sub_8ac64ae5 > -1 / stor2:
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
    if stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) and stor4 > -1 / stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
        revert with 'NH{q', 17
    if stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) < stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100:
        revert with 'NH{q', 17
    if msg.value and stor4 > -1 / msg.value:
        revert with 'NH{q', 17
    call address(stor5.field_8) with:
       value msg.value * stor4 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor7[address(msg.sender)] > -(stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) + (stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100) - 1:
        revert with 'NH{q', 17
    stor7[address(msg.sender)] = stor7[address(msg.sender)] + (stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (stor2 * sub_8ac64ae5 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100)
    require uint8(stor5.field_0)
    if address(arg1) != msg.sender:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = address(arg1)
    else:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = 0
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
        if stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) and 100 > -1 / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor7[stor9[address(msg.sender)]] > -((100 * stor7[address(msg.sender)]) + (100 * stor1 * sub_4b634b06[address(msg.sender)]) / 1000) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += (100 * stor7[address(msg.sender)]) + (100 * stor1 * sub_4b634b06[address(msg.sender)]) / 1000
        if sub_8ac64ae5 > -(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_8ac64ae5 += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5
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
        if stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and 100 > -1 / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 17
        if stor7[stor9[address(msg.sender)]] > -((100 * stor7[address(msg.sender)]) + (100 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 1000) - 1:
            revert with 'NH{q', 17
        stor7[stor9[address(msg.sender)]] += (100 * stor7[address(msg.sender)]) + (100 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 1000
        if sub_8ac64ae5 > -(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        sub_8ac64ae5 += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_d6a44480(?) {
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
        if stor2 and sub_8ac64ae5 > -1 / stor2:
            revert with 'NH{q', 17
        if stor3 and stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) > -1 / stor3:
            revert with 'NH{q', 17
        if stor2 * sub_8ac64ae5 > (-1 * stor7[address(msg.sender)] * stor3) + (-1 * stor1 * sub_4b634b06[address(msg.sender)] * stor3) - 1:
            revert with 'NH{q', 17
        if not stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor3 > -((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if sub_8ac64ae5 > -stor7[address(msg.sender)] + (-1 * stor1 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        sub_8ac64ae5 = sub_8ac64ae5 + stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 'NH{q', 17
        if (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100) and 75 > -1 / (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100):
            revert with 'NH{q', 17
        call msg.sender with:
           value (75 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (75 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 'NH{q', 17
        if (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100) and 25 > -1 / (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100):
            revert with 'NH{q', 17
        require ext_code.size(stor12)
        staticcall stor12.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = stor11
        mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor12)
        call stor12.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value (25 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (25 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100) / 100 wei
             gas gas_remaining wei
            args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor7[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 'NH{q', 17
        if stor2 and sub_8ac64ae5 > -1 / stor2:
            revert with 'NH{q', 17
        if stor3 and stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / stor3:
            revert with 'NH{q', 17
        if stor2 * sub_8ac64ae5 > (-1 * stor7[address(msg.sender)] * stor3) + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) - 1:
            revert with 'NH{q', 17
        if not stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor3 > -((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor7[address(msg.sender)] = 0
        stor8[address(msg.sender)] = block.timestamp
        if sub_8ac64ae5 > -stor7[address(msg.sender)] + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        sub_8ac64ae5 = sub_8ac64ae5 + stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 'NH{q', 17
        if (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100) and 75 > -1 / (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100):
            revert with 'NH{q', 17
        call msg.sender with:
           value (75 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (75 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 'NH{q', 17
        if (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100) and 25 > -1 / (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100):
            revert with 'NH{q', 17
        require ext_code.size(stor12)
        staticcall stor12.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = stor11
        mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor12)
        call stor12.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value (25 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (25 * stor2 * eth.balance(this.address) / stor3 + ((stor2 * sub_8ac64ae5) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100) / 100 wei
             gas gas_remaining wei
            args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
