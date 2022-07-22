contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 EGGS_TO_HATCH_1MINERS;
uint256 stor1;
uint256 stor2;
uint8 stor3;
address feeAddress; offset 8
mapping of uint256 myMiners;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of address referrals;
uint256 marketEggs;

function getMyMiners() {
    return myMiners[msg.sender]
}

function initialized() {
    return bool(stor3)
}

function marketEggs() {
    return marketEggs
}

function feeAddress() {
    return feeAddress
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function claimedEggs(address arg1) {
    return claimedEggs[arg1]
}

function hatcheryMiners(address arg1) {
    return myMiners[arg1]
}

function EGGS_TO_HATCH_1MINERS() {
    return EGGS_TO_HATCH_1MINERS
}

function referrals(address arg1) {
    return referrals[arg1]
}

function _fallback() payable {
    revert
}

function seedMarket() payable {
    require not marketEggs
    stor3 = 1
    marketEggs = 24 * 10^6 * 24 * 3600
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require 3 * arg1 / arg1 == 3
    return (3 * arg1 / 100)
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(arg1)]:
        if not EGGS_TO_HATCH_1MINERS:
            return 0
        if myMiners[address(arg1)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(arg1)]:
            return (myMiners[address(arg1)] * EGGS_TO_HATCH_1MINERS)
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if (block.timestamp * myMiners[address(arg1)]) - (lastHatch[address(arg1)] * myMiners[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == myMiners[address(arg1)]:
            return ((block.timestamp * myMiners[address(arg1)]) - (lastHatch[address(arg1)] * myMiners[address(arg1)]))
    revert
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            if claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                return claimedEggs[msg.sender]
        else:
            if myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]:
                if (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                    return ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender])
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                return claimedEggs[msg.sender]
        else:
            if (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]:
                if (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]:
                    return ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender])
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if arg3 * stor1 / stor1 == arg3:
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (arg3 * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (arg3 * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if arg2 * stor1 / stor1 == arg2:
                    if not stor2:
                        if arg2 * stor1 >= arg2 * stor1:
                            if arg1:
                                if (arg2 * stor1 / arg1) + stor2 >= stor2:
                                    if (arg2 * stor1 / arg1) + stor2:
                                        return (arg3 * stor1 / (arg2 * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (arg2 * stor1) >= arg2 * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2:
                                            return (arg3 * stor1 / ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2)
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if marketEggs * stor1 / stor1 == marketEggs:
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (marketEggs * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (marketEggs * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if arg2 * stor1 / stor1 == arg2:
                    if not stor2:
                        if arg2 * stor1 >= arg2 * stor1:
                            if arg1:
                                if (arg2 * stor1 / arg1) + stor2 >= stor2:
                                    if (arg2 * stor1 / arg1) + stor2:
                                        return (marketEggs * stor1 / (arg2 * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (arg2 * stor1) >= arg2 * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2:
                                            return (marketEggs * stor1 / ((arg1 * stor2) + (arg2 * stor1) / arg1) + stor2)
    revert
}

function calculateEggSell(uint256 arg1) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address):
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (eth.balance(this.address) * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (eth.balance(this.address) * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if marketEggs * stor1 / stor1 == marketEggs:
                    if not stor2:
                        if marketEggs * stor1 >= marketEggs * stor1:
                            if arg1:
                                if (marketEggs * stor1 / arg1) + stor2 >= stor2:
                                    if (marketEggs * stor1 / arg1) + stor2:
                                        return (eth.balance(this.address) * stor1 / (marketEggs * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (marketEggs * stor1) >= marketEggs * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (marketEggs * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (marketEggs * stor1) / arg1) + stor2:
                                            return (eth.balance(this.address) * stor1 / ((arg1 * stor2) + (marketEggs * stor1) / arg1) + stor2)
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    if not stor1:
        if not stor2:
            if arg1:
                if (0 / arg1) + stor2 >= stor2:
                    if (0 / arg1) + stor2:
                        return (0 / (0 / arg1) + stor2)
        else:
            if arg1 * stor2 / stor2 == arg1:
                if arg1 * stor2 >= 0:
                    if arg1:
                        if (arg1 * stor2 / arg1) + stor2 >= stor2:
                            if (arg1 * stor2 / arg1) + stor2:
                                return (0 / (arg1 * stor2 / arg1) + stor2)
    else:
        if marketEggs * stor1 / stor1 == marketEggs:
            if not stor1:
                if not stor2:
                    if arg1:
                        if (0 / arg1) + stor2 >= stor2:
                            if (0 / arg1) + stor2:
                                return (marketEggs * stor1 / (0 / arg1) + stor2)
                else:
                    if arg1 * stor2 / stor2 == arg1:
                        if arg1 * stor2 >= 0:
                            if arg1:
                                if (arg1 * stor2 / arg1) + stor2 >= stor2:
                                    if (arg1 * stor2 / arg1) + stor2:
                                        return (marketEggs * stor1 / (arg1 * stor2 / arg1) + stor2)
            else:
                if eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address):
                    if not stor2:
                        if eth.balance(this.address) * stor1 >= eth.balance(this.address) * stor1:
                            if arg1:
                                if (eth.balance(this.address) * stor1 / arg1) + stor2 >= stor2:
                                    if (eth.balance(this.address) * stor1 / arg1) + stor2:
                                        return (marketEggs * stor1 / (eth.balance(this.address) * stor1 / arg1) + stor2)
                    else:
                        if arg1 * stor2 / stor2 == arg1:
                            if (arg1 * stor2) + (eth.balance(this.address) * stor1) >= eth.balance(this.address) * stor1:
                                if arg1:
                                    if ((arg1 * stor2) + (eth.balance(this.address) * stor1) / arg1) + stor2 >= stor2:
                                        if ((arg1 * stor2) + (eth.balance(this.address) * stor1) / arg1) + stor2:
                                            return (marketEggs * stor1 / ((arg1 * stor2) + (eth.balance(this.address) * stor1) / arg1) + stor2)
    revert
}

function hatchEggs(address arg1) {
    require stor3
    if arg1 != msg.sender:
        if not referrals[msg.sender]:
            referrals[msg.sender] = arg1
    else:
        if not referrals[msg.sender]:
            referrals[msg.sender] = feeAddress
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require 13 * claimedEggs[msg.sender] / claimedEggs[msg.sender] == 13
                require (13 * claimedEggs[msg.sender] / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += 13 * claimedEggs[msg.sender] / 100
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require (13 * myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + (13 * claimedEggs[msg.sender]) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] == 13
                require ((13 * myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + (13 * claimedEggs[msg.sender]) / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += (13 * myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + (13 * claimedEggs[msg.sender]) / 100
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require 13 * claimedEggs[msg.sender] / claimedEggs[msg.sender] == 13
                require (13 * claimedEggs[msg.sender] / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += 13 * claimedEggs[msg.sender] / 100
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require (13 * block.timestamp * myMiners[address(msg.sender)]) - (13 * lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + (13 * claimedEggs[msg.sender]) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] == 13
                require ((13 * block.timestamp * myMiners[address(msg.sender)]) - (13 * lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + (13 * claimedEggs[msg.sender]) / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += (13 * block.timestamp * myMiners[address(msg.sender)]) - (13 * lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + (13 * claimedEggs[msg.sender]) / 100
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5
}

function buyEggs(address arg1) payable {
    require stor3
    require msg.value <= eth.balance(this.address)
    if not stor1:
        if not stor2:
            require msg.value
            require (0 / msg.value) + stor2 >= stor2
            require (0 / msg.value) + stor2
            if not 0 / (0 / msg.value) + stor2:
                require 0 <= 0 / (0 / msg.value) + stor2
                if not msg.value:
                    call feeAddress with:
                         gas 2300 wei
                else:
                    require 3 * msg.value / msg.value == 3
                    call feeAddress with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (0 / (0 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] += 0 / (0 / msg.value) + stor2
            else:
                require 3 * 0 / (0 / msg.value) + stor2 / 0 / (0 / msg.value) + stor2 == 3
                require 3 * 0 / (0 / msg.value) + stor2 / 100 <= 0 / (0 / msg.value) + stor2
                if not msg.value:
                    call feeAddress with:
                         gas 2300 wei
                else:
                    require 3 * msg.value / msg.value == 3
                    call feeAddress with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (0 / (0 / msg.value) + stor2) - (3 * 0 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] = (0 / (0 / msg.value) + stor2) - (3 * 0 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
        else:
            require msg.value * stor2 / stor2 == msg.value
            require msg.value * stor2 >= 0
            require msg.value
            require (msg.value * stor2 / msg.value) + stor2 >= stor2
            require (msg.value * stor2 / msg.value) + stor2
            if not 0 / (msg.value * stor2 / msg.value) + stor2:
                require 0 <= 0 / (msg.value * stor2 / msg.value) + stor2
                if not msg.value:
                    call feeAddress with:
                         gas 2300 wei
                else:
                    require 3 * msg.value / msg.value == 3
                    call feeAddress with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (0 / (msg.value * stor2 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] += 0 / (msg.value * stor2 / msg.value) + stor2
            else:
                require 3 * 0 / (msg.value * stor2 / msg.value) + stor2 / 0 / (msg.value * stor2 / msg.value) + stor2 == 3
                require 3 * 0 / (msg.value * stor2 / msg.value) + stor2 / 100 <= 0 / (msg.value * stor2 / msg.value) + stor2
                if not msg.value:
                    call feeAddress with:
                         gas 2300 wei
                else:
                    require 3 * msg.value / msg.value == 3
                    call feeAddress with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (0 / (msg.value * stor2 / msg.value) + stor2) - (3 * 0 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] = (0 / (msg.value * stor2 / msg.value) + stor2) - (3 * 0 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
    else:
        require marketEggs * stor1 / stor1 == marketEggs
        if not stor1:
            if not stor2:
                require msg.value
                require (0 / msg.value) + stor2 >= stor2
                require (0 / msg.value) + stor2
                if not marketEggs * stor1 / (0 / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / (0 / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / (0 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / (0 / msg.value) + stor2
                else:
                    require 3 * marketEggs * stor1 / (0 / msg.value) + stor2 / marketEggs * stor1 / (0 / msg.value) + stor2 == 3
                    require 3 * marketEggs * stor1 / (0 / msg.value) + stor2 / 100 <= marketEggs * stor1 / (0 / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / (0 / msg.value) + stor2) - (3 * marketEggs * stor1 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / (0 / msg.value) + stor2) - (3 * marketEggs * stor1 / (0 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
            else:
                require msg.value * stor2 / stor2 == msg.value
                require msg.value * stor2 >= 0
                require msg.value
                require (msg.value * stor2 / msg.value) + stor2 >= stor2
                require (msg.value * stor2 / msg.value) + stor2
                if not marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2
                else:
                    require 3 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 == 3
                    require 3 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / 100 <= marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2) - (3 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2) - (3 * marketEggs * stor1 / (msg.value * stor2 / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
        else:
            require (eth.balance(this.address) * stor1) - (msg.value * stor1) / stor1 == eth.balance(this.address) - msg.value
            if not stor2:
                require msg.value
                require ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 >= stor2
                require ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                if not marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                else:
                    require 3 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 == 3
                    require 3 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100 <= marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (3 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (3 * marketEggs * stor1 / ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
            else:
                require msg.value * stor2 / stor2 == msg.value
                require msg.value * stor2 >= 0
                require msg.value
                require ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 >= stor2
                require ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                if not marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2:
                    require 0 <= marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                else:
                    require 3 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 == 3
                    require 3 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100 <= marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2
                    if not msg.value:
                        call feeAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call feeAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (3 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2) - (3 * marketEggs * stor1 / ((msg.value * stor2) + (eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) + stor2 / 100) + claimedEggs[msg.sender]
    require stor3
    if arg1 != msg.sender:
        if not referrals[msg.sender]:
            referrals[msg.sender] = arg1
    else:
        if not referrals[msg.sender]:
            referrals[msg.sender] = feeAddress
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require 13 * claimedEggs[msg.sender] / claimedEggs[msg.sender] == 13
                require (13 * claimedEggs[msg.sender] / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += 13 * claimedEggs[msg.sender] / 100
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require (13 * myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + (13 * claimedEggs[msg.sender]) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] == 13
                require ((13 * myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + (13 * claimedEggs[msg.sender]) / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += (13 * myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + (13 * claimedEggs[msg.sender]) / 100
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 5
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require 13 * claimedEggs[msg.sender] / claimedEggs[msg.sender] == 13
                require (13 * claimedEggs[msg.sender] / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += 13 * claimedEggs[msg.sender] / 100
            require (claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += claimedEggs[msg.sender] / 5
        else:
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            if not (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]:
                require claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
            else:
                require (13 * block.timestamp * myMiners[address(msg.sender)]) - (13 * lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + (13 * claimedEggs[msg.sender]) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] == 13
                require ((13 * block.timestamp * myMiners[address(msg.sender)]) - (13 * lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + (13 * claimedEggs[msg.sender]) / 100) + claimedEggs[stor7[msg.sender]] >= claimedEggs[stor7[msg.sender]]
                claimedEggs[stor7[msg.sender]] += (13 * block.timestamp * myMiners[address(msg.sender)]) - (13 * lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + (13 * claimedEggs[msg.sender]) / 100
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5
}

function sellEggs() {
    require stor3
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 0 / (0 / claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                           value 3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / claimedEggs[msg.sender]) + stor2) - (3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor2 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                           value 3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor2 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                           value 3 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (3 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                    if not 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                           value 3 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (3 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 0 / (0 / claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                           value 3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / claimedEggs[msg.sender]) + stor2) - (3 * 0 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor2 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                    require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                    if not 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        call feeAddress with:
                           value 3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (3 * 0 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (0 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor2 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (claimedEggs[msg.sender] * stor2 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require claimedEggs[msg.sender] * stor2 / stor2 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / ((claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            if not stor1:
                if not stor2:
                    require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                    if not 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                           value 3 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (3 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                    require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                    require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                    if not 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 3
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        call feeAddress with:
                           value 3 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        call msg.sender with:
                           value (0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (3 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) * stor1 / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) >= 0
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require marketEggs * stor1 / stor1 == marketEggs
                    if not stor2:
                        require marketEggs * stor1 >= marketEggs * stor1
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / (marketEggs * stor1 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) / stor2 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) >= marketEggs * stor1
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 >= stor2
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                        if not eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 == 3
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            call feeAddress with:
                               value 3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100 <= eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2
                            call msg.sender with:
                               value (eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2) - (3 * eth.balance(this.address) * stor1 / ((block.timestamp * myMiners[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor2) + (claimedEggs[msg.sender] * stor2) + (marketEggs * stor1) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor2 / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
