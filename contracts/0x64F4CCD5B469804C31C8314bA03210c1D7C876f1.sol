contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address devAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
mapping of uint256 sub_4b634b06;
mapping of uint256 stor9;
mapping of uint256 stor10;
mapping of address stor11;
uint256 stor12;

function devAddress() payable {
    return devAddress
}

function sub_4b634b06(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getBalance() payable {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function seedMarket(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require not stor12
    stor7 = 1
    stor12 = 30 * 10^6 * 24 * 3600
}

function getEggsSinceLastHatch(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor10[address(arg1)]:
        revert with 'NH{q', 17
    if stor3 < block.timestamp - stor10[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 'NH{q', 17
        return (stor3 * sub_4b634b06[address(arg1)])
    if block.timestamp - stor10[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor10[address(arg1)]:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_4b634b06[address(arg1)]) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function calculateEggBuy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 and stor12 > -1 / stor4:
        revert with 'NH{q', 17
    if stor4 and arg2 > -1 / stor4:
        revert with 'NH{q', 17
    if stor5 and arg1 > -1 / stor5:
        revert with 'NH{q', 17
    if stor4 * arg2 > (-1 * stor5 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor5 > -((stor4 * arg2) + (stor5 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor5 + ((stor4 * arg2) + (stor5 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor4 * stor12 / stor5 + ((stor4 * arg2) + (stor5 * arg1) / arg1))
}

function getMyEggs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor10[address(arg1)]:
        revert with 'NH{q', 17
    if stor3 < block.timestamp - stor10[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 'NH{q', 17
        if stor9[address(arg1)] > (-1 * stor3 * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        return (stor9[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]))
    if block.timestamp - stor10[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor10[address(arg1)]:
        revert with 'NH{q', 17
    if stor9[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor10[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    return (stor9[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function calculateEggSell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor4 and ext_call.return_data[0] > -1 / stor4:
        revert with 'NH{q', 17
    if stor4 and stor12 > -1 / stor4:
        revert with 'NH{q', 17
    if stor5 and arg1 > -1 / stor5:
        revert with 'NH{q', 17
    if stor4 * stor12 > (-1 * stor5 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor5 > -((stor4 * stor12) + (stor5 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor5 + ((stor4 * stor12) + (stor5 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor5 * arg1) / arg1))
}

function calculateEggBuySimple(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor4 and stor12 > -1 / stor4:
        revert with 'NH{q', 17
    if stor4 and ext_call.return_data[0] > -1 / stor4:
        revert with 'NH{q', 17
    if stor5 and arg1 > -1 / stor5:
        revert with 'NH{q', 17
    if stor4 * ext_call.return_data[0] > (-1 * stor5 * arg1) - 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if stor5 > -((stor4 * ext_call.return_data[0]) + (stor5 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if not stor5 + ((stor4 * ext_call.return_data[0]) + (stor5 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor4 * stor12 / stor5 + ((stor4 * ext_call.return_data[0]) + (stor5 * arg1) / arg1))
}

function hatchEggs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor7
    if arg1 != msg.sender:
        if not stor11[address(msg.sender)]:
            if stor11[address(msg.sender)] != msg.sender:
                stor11[address(msg.sender)] = arg1
    else:
        if not stor11[address(msg.sender)]:
            if stor11[address(msg.sender)] != msg.sender:
                stor11[address(msg.sender)] = 0
    if block.timestamp < stor10[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor3 < block.timestamp - stor10[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)] > (-1 * stor3 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor3:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3
        stor9[address(msg.sender)] = 0
        stor10[address(msg.sender)] = block.timestamp
        if stor9[stor11[address(msg.sender)]] > -(stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor9[stor11[address(msg.sender)]] += stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8
        if stor12 > -(stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor12 += stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor10[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor10[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor3:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3
        stor9[address(msg.sender)] = 0
        stor10[address(msg.sender)] = block.timestamp
        if stor9[stor11[address(msg.sender)]] > -(stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor9[stor11[address(msg.sender)]] += stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor12 > -(stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor12 += stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_a507abee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor10[address(arg1)]:
        revert with 'NH{q', 17
    if stor3 < block.timestamp - stor10[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 'NH{q', 17
        if stor9[address(arg1)] > (-1 * stor3 * sub_4b634b06[address(arg1)]) - 1:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if stor4 and ext_call.return_data[0] > -1 / stor4:
            revert with 'NH{q', 17
        if stor4 and stor12 > -1 / stor4:
            revert with 'NH{q', 17
        if stor5 and stor9[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]) > -1 / stor5:
            revert with 'NH{q', 17
        if stor4 * stor12 > (-1 * stor9[address(arg1)] * stor5) + (-1 * stor3 * sub_4b634b06[address(arg1)] * stor5) - 1:
            revert with 'NH{q', 17
        if not stor9[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]):
            revert with 'NH{q', 18
        if stor5 > -((stor4 * stor12) + (stor9[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor9[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])) - 1:
            revert with 'NH{q', 17
        if not stor5 + ((stor4 * stor12) + (stor9[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor9[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])):
            revert with 'NH{q', 18
        return (stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor9[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])))
    if block.timestamp - stor10[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor10[address(arg1)]:
        revert with 'NH{q', 17
    if stor9[address(arg1)] > (-1 * block.timestamp * sub_4b634b06[address(arg1)]) + (stor10[address(arg1)] * sub_4b634b06[address(arg1)]) - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor4 and ext_call.return_data[0] > -1 / stor4:
        revert with 'NH{q', 17
    if stor4 and stor12 > -1 / stor4:
        revert with 'NH{q', 17
    if stor5 and stor9[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / stor5:
        revert with 'NH{q', 17
    if stor4 * stor12 > (-1 * stor9[address(arg1)] * stor5) + (-1 * block.timestamp * sub_4b634b06[address(arg1)] * stor5) + (stor10[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) - 1:
        revert with 'NH{q', 17
    if not stor9[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)]):
        revert with 'NH{q', 18
    if stor5 > -((stor4 * stor12) + (stor9[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor9[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)])) - 1:
        revert with 'NH{q', 17
    if not stor5 + ((stor4 * stor12) + (stor9[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor9[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 'NH{q', 18
    return (stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor9[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor10[address(arg1)] * sub_4b634b06[address(arg1)])))
}

function buyEggs(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor7
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if stor4 and stor12 > -1 / stor4:
        revert with 'NH{q', 17
    if stor4 and ext_call.return_data[0] - arg2 > -1 / stor4:
        revert with 'NH{q', 17
    if stor5 and arg2 > -1 / stor5:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * stor4) - (arg2 * stor4) > (-1 * stor5 * arg2) - 1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if stor5 > -((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2) - 1:
        revert with 'NH{q', 17
    if not stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2):
        revert with 'NH{q', 18
    if stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2) and stor6 > -1 / stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2):
        revert with 'NH{q', 17
    if stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2) < stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2) * stor6 / 100:
        revert with 'NH{q', 17
    if arg2 and stor6 > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args devAddress, arg2 * stor6 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor9[address(msg.sender)] > -(stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2)) + (stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2) * stor6 / 100) - 1:
        revert with 'NH{q', 17
    stor9[address(msg.sender)] = stor9[address(msg.sender)] + (stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2)) - (stor4 * stor12 / stor5 + ((ext_call.return_data[0] * stor4) - (arg2 * stor4) + (stor5 * arg2) / arg2) * stor6 / 100)
    require stor7
    if arg1 != msg.sender:
        if not stor11[address(msg.sender)]:
            if stor11[address(msg.sender)] != msg.sender:
                stor11[address(msg.sender)] = arg1
    else:
        if not stor11[address(msg.sender)]:
            if stor11[address(msg.sender)] != msg.sender:
                stor11[address(msg.sender)] = 0
    if block.timestamp < stor10[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor3 < block.timestamp - stor10[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)] > (-1 * stor3 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor3:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3
        stor9[address(msg.sender)] = 0
        stor10[address(msg.sender)] = block.timestamp
        if stor9[stor11[address(msg.sender)]] > -(stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor9[stor11[address(msg.sender)]] += stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8
        if stor12 > -(stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor12 += stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor10[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor10[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        if not stor3:
            revert with 'NH{q', 18
        if sub_4b634b06[address(msg.sender)] > -(stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3) - 1:
            revert with 'NH{q', 17
        sub_4b634b06[address(msg.sender)] += stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3
        stor9[address(msg.sender)] = 0
        stor10[address(msg.sender)] = block.timestamp
        if stor9[stor11[address(msg.sender)]] > -(stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8) - 1:
            revert with 'NH{q', 17
        stor9[stor11[address(msg.sender)]] += stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor12 > -(stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5) - 1:
            revert with 'NH{q', 17
        stor12 += stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sellEggs() payable {
    require stor7
    if block.timestamp < stor10[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor3 < block.timestamp - stor10[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)] > (-1 * stor3 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if stor4 and ext_call.return_data[0] > -1 / stor4:
            revert with 'NH{q', 17
        if stor4 and stor12 > -1 / stor4:
            revert with 'NH{q', 17
        if stor5 and stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) > -1 / stor5:
            revert with 'NH{q', 17
        if stor4 * stor12 > (-1 * stor9[address(msg.sender)] * stor5) + (-1 * stor3 * sub_4b634b06[address(msg.sender)] * stor5) - 1:
            revert with 'NH{q', 17
        if not stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor5 > -((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor9[address(msg.sender)] = 0
        stor10[address(msg.sender)] = block.timestamp
        if stor12 > -stor9[address(msg.sender)] + (-1 * stor3 * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor12 = stor12 + stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args devAddress, stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) < stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]))) - (stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100)
    else:
        if block.timestamp - stor10[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor10[address(msg.sender)]:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)] > (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if stor4 and ext_call.return_data[0] > -1 / stor4:
            revert with 'NH{q', 17
        if stor4 and stor12 > -1 / stor4:
            revert with 'NH{q', 17
        if stor5 and stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / stor5:
            revert with 'NH{q', 17
        if stor4 * stor12 > (-1 * stor9[address(msg.sender)] * stor5) + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) + (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) - 1:
            revert with 'NH{q', 17
        if not stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 'NH{q', 18
        if stor5 > -((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) - 1:
            revert with 'NH{q', 17
        if not stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 18
        if stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 'NH{q', 17
        stor9[address(msg.sender)] = 0
        stor10[address(msg.sender)] = block.timestamp
        if stor12 > -stor9[address(msg.sender)] + (-1 * block.timestamp * sub_4b634b06[address(msg.sender)]) + (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) - 1:
            revert with 'NH{q', 17
        stor12 = stor12 + stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args devAddress, stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor4 * ext_call.return_data[0] / stor5 + ((stor4 * stor12) + (stor9[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor9[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor10[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
