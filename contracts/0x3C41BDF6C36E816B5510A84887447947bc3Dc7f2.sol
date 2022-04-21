contract main {




// =====================  Runtime code  =====================


const ViewContractBalance = eth.balance(this.address)


address stor0;
uint256 viewTotalBonds;
uint256 stor2;
mapping of uint256 viewTotalInvested;
mapping of uint256 viewTotalReturn;
mapping of uint256 viewBondsFromReferrals;
mapping of uint256 viewMyBonds;
mapping of uint256 stor7;
mapping of uint8 stor8;
mapping of address viewReferrer;

function ViewReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return viewReferrer[address(arg1)]
}

function ViewTotalInvested(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return viewTotalInvested[address(arg1)]
}

function ViewBondsFromReferrals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return viewBondsFromReferrals[address(arg1)]
}

function ViewTotalBonds() {
    return viewTotalBonds
}

function ViewMyBonds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return viewMyBonds[address(arg1)]
}

function ViewTotalReturn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return viewTotalReturn[address(arg1)]
}

function _fallback() payable {
    revert
}

function CheckForMultiplier() {
    if stor2 < block.timestamp:
        return 0
    return 1
}

function MultiplierMessage() {
    if stor2 < block.timestamp:
        return '2x multiplier IS NOT active.', 0
    if stor2 < block.timestamp:
        return ' '
    return 32, 34, 0xfe3278206d756c7469706c6965722069732063757272656e746c7920616374697665, mem[162 len 30] >> 16, 0
}

function SetMultiplierTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    stor2 = block.timestamp + arg1
}

function ViewDailyROI(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(arg1)] > -1 / 500 * eth.balance(this.address) / 10000:
        revert with 'NH{q', 17
    if not viewTotalBonds:
        revert with 'NH{q', 18
    if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(arg1)] / viewTotalBonds / 24 * 3600 and 24 * 3600 > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(arg1)] / viewTotalBonds / 24 * 3600:
        revert with 'NH{q', 17
    return (24 * 3600 * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(arg1)] / viewTotalBonds / 24 * 3600)
}

function ViewRewardOwed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stor7[address(arg1)]:
        revert with 'NH{q', 17
    if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(arg1)] > -1 / 500 * eth.balance(this.address) / 10000:
        revert with 'NH{q', 17
    if not viewTotalBonds:
        revert with 'NH{q', 18
    if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(arg1)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(arg1)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(arg1)] / viewTotalBonds / 24 * 3600:
        revert with 'NH{q', 17
    return ((block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(arg1)] / viewTotalBonds / 24 * 3600) - (stor7[address(arg1)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(arg1)] / viewTotalBonds / 24 * 3600))
}

function ClaimReward() {
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000:
        revert with 'NH{q', 17
    if not viewTotalBonds:
        revert with 'NH{q', 18
    if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600:
        revert with 'NH{q', 17
    if (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) <= 0:
        revert with 0, 'No reward is owed.'
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000:
        revert with 'NH{q', 17
    if not viewTotalBonds:
        revert with 'NH{q', 18
    if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600:
        revert with 'NH{q', 17
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000:
        revert with 'NH{q', 17
    if not viewTotalBonds:
        revert with 'NH{q', 18
    if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600:
        revert with 'NH{q', 17
    if (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) > eth.balance(this.address):
        if (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) > eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if viewTotalReturn[address(msg.sender)] > -eth.balance(this.address) - 1:
                revert with 'NH{q', 17
            viewTotalReturn[address(msg.sender)] += eth.balance(this.address)
            stor7[address(msg.sender)] = block.timestamp
    else:
        call msg.sender with:
           value (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor7[address(msg.sender)]:
            revert with 'NH{q', 17
        if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000:
            revert with 'NH{q', 17
        if not viewTotalBonds:
            revert with 'NH{q', 18
        if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600:
            revert with 'NH{q', 17
        if viewTotalReturn[address(msg.sender)] > (-1 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) + (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - 1:
            revert with 'NH{q', 17
        viewTotalReturn[address(msg.sender)] = viewTotalReturn[address(msg.sender)] + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600)
        stor7[address(msg.sender)] = block.timestamp
}

function CompoundReward() {
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000:
        revert with 'NH{q', 17
    if not viewTotalBonds:
        revert with 'NH{q', 18
    if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600:
        revert with 'NH{q', 17
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 'NH{q', 17
    if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000:
        revert with 'NH{q', 17
    if not viewTotalBonds:
        revert with 'NH{q', 18
    if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600:
        revert with 'NH{q', 17
    if (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) <= eth.balance(this.address):
        if (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) and 10500 > -1 / (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600):
            revert with 'NH{q', 17
        if stor2 < block.timestamp:
            if viewMyBonds[address(msg.sender)] > -((10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000) - 1:
                revert with 'NH{q', 17
            viewMyBonds[address(msg.sender)] += (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000
            if viewTotalBonds > -((10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000) - 1:
                revert with 'NH{q', 17
            viewTotalBonds += (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000
            stor7[address(msg.sender)] = block.timestamp
        else:
            if stor2 >= block.timestamp:
                if (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000 and 2 > -1 / (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000:
                    revert with 'NH{q', 17
                if viewMyBonds[address(msg.sender)] > -(2 * (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000) - 1:
                    revert with 'NH{q', 17
                viewMyBonds[address(msg.sender)] += 2 * (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000
                if (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000 and 2 > -1 / (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000:
                    revert with 'NH{q', 17
                if viewTotalBonds > -(2 * (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000) - 1:
                    revert with 'NH{q', 17
                viewTotalBonds += 2 * (10500 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (10500 * stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) / 10000
                stor7[address(msg.sender)] = block.timestamp
    else:
        if (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) > eth.balance(this.address):
            if eth.balance(this.address) and 10500 > -1 / eth.balance(this.address):
                revert with 'NH{q', 17
            if stor2 < block.timestamp:
                if viewMyBonds[address(msg.sender)] > -(10500 * eth.balance(this.address) / 10000) - 1:
                    revert with 'NH{q', 17
                viewMyBonds[address(msg.sender)] += 10500 * eth.balance(this.address) / 10000
                if viewTotalBonds > -(10500 * eth.balance(this.address) / 10000) - 1:
                    revert with 'NH{q', 17
                viewTotalBonds += 10500 * eth.balance(this.address) / 10000
                stor7[address(msg.sender)] = block.timestamp
            else:
                if stor2 >= block.timestamp:
                    if 10500 * eth.balance(this.address) / 10000 and 2 > -1 / 10500 * eth.balance(this.address) / 10000:
                        revert with 'NH{q', 17
                    if viewMyBonds[address(msg.sender)] > -(2 * 10500 * eth.balance(this.address) / 10000) - 1:
                        revert with 'NH{q', 17
                    viewMyBonds[address(msg.sender)] += 2 * 10500 * eth.balance(this.address) / 10000
                    if 10500 * eth.balance(this.address) / 10000 and 2 > -1 / 10500 * eth.balance(this.address) / 10000:
                        revert with 'NH{q', 17
                    if viewTotalBonds > -(2 * 10500 * eth.balance(this.address) / 10000) - 1:
                        revert with 'NH{q', 17
                    viewTotalBonds += 2 * 10500 * eth.balance(this.address) / 10000
                    stor7[address(msg.sender)] = block.timestamp
}

function BuyBonds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Message value must be at least one gwei.'
    if bool(stor8[address(msg.sender)]) != 1:
        if not stor8[address(msg.sender)]:
            viewReferrer[address(msg.sender)] = arg1
            if msg.value and 500 > -1 / msg.value:
                revert with 'NH{q', 17
            call stor0 with:
               value 500 * msg.value / 10000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor2 < block.timestamp:
                if viewMyBonds[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                viewMyBonds[address(msg.sender)] += msg.value
                if viewTotalBonds > -msg.value - 1:
                    revert with 'NH{q', 17
                viewTotalBonds += msg.value
                stor7[address(msg.sender)] = block.timestamp
            else:
                if stor2 >= block.timestamp:
                    if msg.value and 2 > -1 / msg.value:
                        revert with 'NH{q', 17
                    if viewMyBonds[address(msg.sender)] > -(2 * msg.value) - 1:
                        revert with 'NH{q', 17
                    viewMyBonds[address(msg.sender)] += 2 * msg.value
                    if msg.value and 2 > -1 / msg.value:
                        revert with 'NH{q', 17
                    if viewTotalBonds > -(2 * msg.value) - 1:
                        revert with 'NH{q', 17
                    viewTotalBonds += 2 * msg.value
                    stor7[address(msg.sender)] = block.timestamp
            if not viewReferrer[address(msg.sender)]:
                if viewReferrer[address(msg.sender)]:
                    if viewMyBonds[stor9[address(msg.sender)]] > -1:
                        revert with 'NH{q', 17
                else:
                    if viewReferrer[address(msg.sender)] == msg.sender:
                        if viewMyBonds[stor9[address(msg.sender)]] > -1:
                            revert with 'NH{q', 17
            else:
                if viewReferrer[address(msg.sender)] == msg.sender:
                    if viewReferrer[address(msg.sender)]:
                        if viewMyBonds[stor9[address(msg.sender)]] > -1:
                            revert with 'NH{q', 17
                    else:
                        if viewReferrer[address(msg.sender)] == msg.sender:
                            if viewMyBonds[stor9[address(msg.sender)]] > -1:
                                revert with 'NH{q', 17
                else:
                    if stor2 < block.timestamp:
                        if viewMyBonds[stor9[address(msg.sender)]] > -(msg.value / 10) - 1:
                            revert with 'NH{q', 17
                        viewMyBonds[stor9[address(msg.sender)]] += msg.value / 10
                        if viewTotalBonds > -(msg.value / 10) - 1:
                            revert with 'NH{q', 17
                        viewTotalBonds += msg.value / 10
                        if viewBondsFromReferrals[stor9[address(msg.sender)]] > -(msg.value / 10) - 1:
                            revert with 'NH{q', 17
                        viewBondsFromReferrals[stor9[address(msg.sender)]] += msg.value / 10
                    else:
                        if stor2 >= block.timestamp:
                            if msg.value / 10 and 2 > -1 / msg.value / 10:
                                revert with 'NH{q', 17
                            if viewMyBonds[stor9[address(msg.sender)]] > -(2 * msg.value / 10) - 1:
                                revert with 'NH{q', 17
                            viewMyBonds[stor9[address(msg.sender)]] += 2 * msg.value / 10
                            if msg.value / 10 and 2 > -1 / msg.value / 10:
                                revert with 'NH{q', 17
                            if viewTotalBonds > -(2 * msg.value / 10) - 1:
                                revert with 'NH{q', 17
                            viewTotalBonds += 2 * msg.value / 10
                            if msg.value / 10 and 2 > -1 / msg.value / 10:
                                revert with 'NH{q', 17
                            if viewBondsFromReferrals[stor9[address(msg.sender)]] > -(2 * msg.value / 10) - 1:
                                revert with 'NH{q', 17
                            viewBondsFromReferrals[stor9[address(msg.sender)]] += 2 * msg.value / 10
            if viewTotalInvested[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            viewTotalInvested[address(msg.sender)] += msg.value
            stor8[address(msg.sender)] = 1
    else:
        if msg.value and 500 > -1 / msg.value:
            revert with 'NH{q', 17
        call stor0 with:
           value 500 * msg.value / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp < stor7[address(msg.sender)]:
            revert with 'NH{q', 17
        if eth.balance(this.address) and 500 > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        if 500 * eth.balance(this.address) / 10000 and viewMyBonds[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000:
            revert with 'NH{q', 17
        if not viewTotalBonds:
            revert with 'NH{q', 18
        if 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600 and block.timestamp - stor7[address(msg.sender)] > -1 / 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600:
            revert with 'NH{q', 17
        if msg.value > (-1 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) + (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - 1:
            revert with 'NH{q', 17
        if stor2 < block.timestamp:
            if viewMyBonds[address(msg.sender)] > -msg.value + (-1 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) + (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - 1:
                revert with 'NH{q', 17
            viewMyBonds[address(msg.sender)] = viewMyBonds[address(msg.sender)] + msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600)
            if viewTotalBonds > -msg.value + (-1 * block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) + (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - 1:
                revert with 'NH{q', 17
            viewTotalBonds = viewTotalBonds + msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600)
            stor7[address(msg.sender)] = block.timestamp
        else:
            if stor2 >= block.timestamp:
                if msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) and 2 > -1 / msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600):
                    revert with 'NH{q', 17
                if viewMyBonds[address(msg.sender)] > -(2 * msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600)) - 1:
                    revert with 'NH{q', 17
                viewMyBonds[address(msg.sender)] += 2 * msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600)
                if msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) and 2 > -1 / msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600):
                    revert with 'NH{q', 17
                if viewTotalBonds > -(2 * msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600)) - 1:
                    revert with 'NH{q', 17
                viewTotalBonds += 2 * msg.value + (block.timestamp * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600) - (stor7[address(msg.sender)] * 500 * eth.balance(this.address) / 10000 * viewMyBonds[address(msg.sender)] / viewTotalBonds / 24 * 3600)
                stor7[address(msg.sender)] = block.timestamp
        if not viewReferrer[address(msg.sender)]:
            if viewReferrer[address(msg.sender)]:
                if viewMyBonds[stor9[address(msg.sender)]] > -1:
                    revert with 'NH{q', 17
            else:
                if viewReferrer[address(msg.sender)] == msg.sender:
                    if viewMyBonds[stor9[address(msg.sender)]] > -1:
                        revert with 'NH{q', 17
        else:
            if viewReferrer[address(msg.sender)] == msg.sender:
                if viewReferrer[address(msg.sender)]:
                    if viewMyBonds[stor9[address(msg.sender)]] > -1:
                        revert with 'NH{q', 17
                else:
                    if viewReferrer[address(msg.sender)] == msg.sender:
                        if viewMyBonds[stor9[address(msg.sender)]] > -1:
                            revert with 'NH{q', 17
            else:
                if stor2 < block.timestamp:
                    if viewMyBonds[stor9[address(msg.sender)]] > -(msg.value / 10) - 1:
                        revert with 'NH{q', 17
                    viewMyBonds[stor9[address(msg.sender)]] += msg.value / 10
                    if viewTotalBonds > -(msg.value / 10) - 1:
                        revert with 'NH{q', 17
                    viewTotalBonds += msg.value / 10
                    if viewBondsFromReferrals[stor9[address(msg.sender)]] > -(msg.value / 10) - 1:
                        revert with 'NH{q', 17
                    viewBondsFromReferrals[stor9[address(msg.sender)]] += msg.value / 10
                else:
                    if stor2 >= block.timestamp:
                        if msg.value / 10 and 2 > -1 / msg.value / 10:
                            revert with 'NH{q', 17
                        if viewMyBonds[stor9[address(msg.sender)]] > -(2 * msg.value / 10) - 1:
                            revert with 'NH{q', 17
                        viewMyBonds[stor9[address(msg.sender)]] += 2 * msg.value / 10
                        if msg.value / 10 and 2 > -1 / msg.value / 10:
                            revert with 'NH{q', 17
                        if viewTotalBonds > -(2 * msg.value / 10) - 1:
                            revert with 'NH{q', 17
                        viewTotalBonds += 2 * msg.value / 10
                        if msg.value / 10 and 2 > -1 / msg.value / 10:
                            revert with 'NH{q', 17
                        if viewBondsFromReferrals[stor9[address(msg.sender)]] > -(2 * msg.value / 10) - 1:
                            revert with 'NH{q', 17
                        viewBondsFromReferrals[stor9[address(msg.sender)]] += 2 * msg.value / 10
        if viewTotalInvested[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        viewTotalInvested[address(msg.sender)] += msg.value
}



}
