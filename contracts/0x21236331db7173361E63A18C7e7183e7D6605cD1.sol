contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 EGGS_TO_HATCH_1MINERS;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4;
address ceoAddress; offset 8
address ceoAddress2;
mapping of uint256 myMiners;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of address referrals;
uint256 marketEggs;

function ceoAddress() {
    return ceoAddress
}

function getMyMiners() {
    return myMiners[msg.sender]
}

function initialized() {
    return bool(uint8(stor4.field_0))
}

function marketEggs() {
    return marketEggs
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

function ceoAddress2() {
    return ceoAddress2
}

function _fallback() payable {
    revert
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require 5 * arg1 / arg1 == 5
    return (5 * arg1 / 100)
}

function getBalance() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function seedMarket(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not marketEggs
    uint8(stor4.field_0) = 1
    marketEggs = 12000 * 24 * 3600 * 24 * 3600
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
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if arg3 * stor2 / stor2 == arg3:
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (arg3 * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (arg3 * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if arg2 * stor2 / stor2 == arg2:
                    if not stor3:
                        if arg2 * stor2 >= arg2 * stor2:
                            if arg1:
                                if (arg2 * stor2 / arg1) + stor3 >= stor3:
                                    if (arg2 * stor2 / arg1) + stor3:
                                        return (arg3 * stor2 / (arg2 * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (arg2 * stor2) >= arg2 * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3:
                                            return (arg3 * stor2 / ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3)
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if marketEggs * stor2 / stor2 == marketEggs:
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (marketEggs * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (marketEggs * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if arg2 * stor2 / stor2 == arg2:
                    if not stor3:
                        if arg2 * stor2 >= arg2 * stor2:
                            if arg1:
                                if (arg2 * stor2 / arg1) + stor3 >= stor3:
                                    if (arg2 * stor2 / arg1) + stor3:
                                        return (marketEggs * stor2 / (arg2 * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (arg2 * stor2) >= arg2 * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3:
                                            return (marketEggs * stor2 / ((arg1 * stor3) + (arg2 * stor2) / arg1) + stor3)
    revert
}

function calculateEggSell(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if ext_call.return_data[0] * stor2 / stor2 == ext_call.return_data[0]:
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (ext_call.return_data[0] * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (ext_call.return_data[0] * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if marketEggs * stor2 / stor2 == marketEggs:
                    if not stor3:
                        if marketEggs * stor2 >= marketEggs * stor2:
                            if arg1:
                                if (marketEggs * stor2 / arg1) + stor3 >= stor3:
                                    if (marketEggs * stor2 / arg1) + stor3:
                                        return (ext_call.return_data[0] * stor2 / (marketEggs * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (marketEggs * stor2) >= marketEggs * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (marketEggs * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (marketEggs * stor2) / arg1) + stor3:
                                            return (ext_call.return_data[0] * stor2 / ((arg1 * stor3) + (marketEggs * stor2) / arg1) + stor3)
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2:
        if not stor3:
            if arg1:
                if (0 / arg1) + stor3 >= stor3:
                    if (0 / arg1) + stor3:
                        return (0 / (0 / arg1) + stor3)
        else:
            if arg1 * stor3 / stor3 == arg1:
                if arg1 * stor3 >= 0:
                    if arg1:
                        if (arg1 * stor3 / arg1) + stor3 >= stor3:
                            if (arg1 * stor3 / arg1) + stor3:
                                return (0 / (arg1 * stor3 / arg1) + stor3)
    else:
        if marketEggs * stor2 / stor2 == marketEggs:
            if not stor2:
                if not stor3:
                    if arg1:
                        if (0 / arg1) + stor3 >= stor3:
                            if (0 / arg1) + stor3:
                                return (marketEggs * stor2 / (0 / arg1) + stor3)
                else:
                    if arg1 * stor3 / stor3 == arg1:
                        if arg1 * stor3 >= 0:
                            if arg1:
                                if (arg1 * stor3 / arg1) + stor3 >= stor3:
                                    if (arg1 * stor3 / arg1) + stor3:
                                        return (marketEggs * stor2 / (arg1 * stor3 / arg1) + stor3)
            else:
                if ext_call.return_data[0] * stor2 / stor2 == ext_call.return_data[0]:
                    if not stor3:
                        if ext_call.return_data[0] * stor2 >= ext_call.return_data[0] * stor2:
                            if arg1:
                                if (ext_call.return_data[0] * stor2 / arg1) + stor3 >= stor3:
                                    if (ext_call.return_data[0] * stor2 / arg1) + stor3:
                                        return (marketEggs * stor2 / (ext_call.return_data[0] * stor2 / arg1) + stor3)
                    else:
                        if arg1 * stor3 / stor3 == arg1:
                            if (arg1 * stor3) + (ext_call.return_data[0] * stor2) >= ext_call.return_data[0] * stor2:
                                if arg1:
                                    if ((arg1 * stor3) + (ext_call.return_data[0] * stor2) / arg1) + stor3 >= stor3:
                                        if ((arg1 * stor3) + (ext_call.return_data[0] * stor2) / arg1) + stor3:
                                            return (marketEggs * stor2 / ((arg1 * stor3) + (ext_call.return_data[0] * stor2) / arg1) + stor3)
    revert
}

function hatchEggs(address arg1) {
    require uint8(stor4.field_0)
    if arg1 != msg.sender:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = arg1
    else:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += claimedEggs[msg.sender] / 10
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
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10
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
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += claimedEggs[msg.sender] / 10
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
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5
}

function buyEggs(address arg1, uint256 arg2) {
    require uint8(stor4.field_0)
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    if not stor2:
        if not stor3:
            require arg2
            require (0 / arg2) + stor3 >= stor3
            require (0 / arg2) + stor3
            if not 0 / (0 / arg2) + stor3:
                require 0 <= 0 / (0 / arg2) + stor3
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (0 / arg2) + stor3) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] += 0 / (0 / arg2) + stor3
            else:
                require 5 * 0 / (0 / arg2) + stor3 / 0 / (0 / arg2) + stor3 == 5
                require 5 * 0 / (0 / arg2) + stor3 / 100 <= 0 / (0 / arg2) + stor3
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (0 / arg2) + stor3) - (5 * 0 / (0 / arg2) + stor3 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] = (0 / (0 / arg2) + stor3) - (5 * 0 / (0 / arg2) + stor3 / 100) + claimedEggs[msg.sender]
        else:
            require arg2 * stor3 / stor3 == arg2
            require arg2 * stor3 >= 0
            require arg2
            require (arg2 * stor3 / arg2) + stor3 >= stor3
            require (arg2 * stor3 / arg2) + stor3
            if not 0 / (arg2 * stor3 / arg2) + stor3:
                require 0 <= 0 / (arg2 * stor3 / arg2) + stor3
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (arg2 * stor3 / arg2) + stor3) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] += 0 / (arg2 * stor3 / arg2) + stor3
            else:
                require 5 * 0 / (arg2 * stor3 / arg2) + stor3 / 0 / (arg2 * stor3 / arg2) + stor3 == 5
                require 5 * 0 / (arg2 * stor3 / arg2) + stor3 / 100 <= 0 / (arg2 * stor3 / arg2) + stor3
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / (arg2 * stor3 / arg2) + stor3) - (5 * 0 / (arg2 * stor3 / arg2) + stor3 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                claimedEggs[msg.sender] = (0 / (arg2 * stor3 / arg2) + stor3) - (5 * 0 / (arg2 * stor3 / arg2) + stor3 / 100) + claimedEggs[msg.sender]
    else:
        require marketEggs * stor2 / stor2 == marketEggs
        if not stor2:
            if not stor3:
                require arg2
                require (0 / arg2) + stor3 >= stor3
                require (0 / arg2) + stor3
                if not marketEggs * stor2 / (0 / arg2) + stor3:
                    require 0 <= marketEggs * stor2 / (0 / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / (0 / arg2) + stor3) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor2 / (0 / arg2) + stor3
                else:
                    require 5 * marketEggs * stor2 / (0 / arg2) + stor3 / marketEggs * stor2 / (0 / arg2) + stor3 == 5
                    require 5 * marketEggs * stor2 / (0 / arg2) + stor3 / 100 <= marketEggs * stor2 / (0 / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / (0 / arg2) + stor3) - (5 * marketEggs * stor2 / (0 / arg2) + stor3 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor2 / (0 / arg2) + stor3) - (5 * marketEggs * stor2 / (0 / arg2) + stor3 / 100) + claimedEggs[msg.sender]
            else:
                require arg2 * stor3 / stor3 == arg2
                require arg2 * stor3 >= 0
                require arg2
                require (arg2 * stor3 / arg2) + stor3 >= stor3
                require (arg2 * stor3 / arg2) + stor3
                if not marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3:
                    require 0 <= marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3
                else:
                    require 5 * marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3 / marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3 == 5
                    require 5 * marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3 / 100 <= marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3) - (5 * marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3) - (5 * marketEggs * stor2 / (arg2 * stor3 / arg2) + stor3 / 100) + claimedEggs[msg.sender]
        else:
            require (ext_call.return_data[0] * stor2) - (arg2 * stor2) / stor2 == ext_call.return_data[0] - arg2
            if not stor3:
                require arg2
                require ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 >= stor3
                require ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                if not marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3:
                    require 0 <= marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                else:
                    require 5 * marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 == 5
                    require 5 * marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / 100 <= marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3) - (5 * marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3) - (5 * marketEggs * stor2 / ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / 100) + claimedEggs[msg.sender]
            else:
                require arg2 * stor3 / stor3 == arg2
                require arg2 * stor3 >= 0
                require arg2
                require ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 >= stor3
                require ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                if not marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3:
                    require 0 <= marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] += marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                else:
                    require 5 * marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 == 5
                    require 5 * marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / 100 <= marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3) - (5 * marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / 100) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
                    claimedEggs[msg.sender] = (marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3) - (5 * marketEggs * stor2 / ((arg2 * stor3) + (ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) + stor3 / 100) + claimedEggs[msg.sender]
    require uint8(stor4.field_0)
    if arg1 != msg.sender:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = arg1
    else:
        if not referrals[msg.sender]:
            if referrals[msg.sender] != msg.sender:
                referrals[msg.sender] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require EGGS_TO_HATCH_1MINERS
            require (claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS) + myMiners[msg.sender] >= myMiners[msg.sender]
            myMiners[msg.sender] += claimedEggs[msg.sender] / EGGS_TO_HATCH_1MINERS
            claimedEggs[msg.sender] = 0
            lastHatch[msg.sender] = block.timestamp
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += claimedEggs[msg.sender] / 10
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
            require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] / 10
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
            require (claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += claimedEggs[msg.sender] / 10
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
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10) + claimedEggs[stor9[msg.sender]] >= claimedEggs[stor9[msg.sender]]
            claimedEggs[stor9[msg.sender]] += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 10
            require ((block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5) + marketEggs >= marketEggs
            marketEggs += (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] / 5
}

function sellEggs() {
    require uint8(stor4.field_0)
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor3 >= stor3
                    require (0 / claimedEggs[msg.sender]) + stor3
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 0 / (0 / claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / claimedEggs[msg.sender]) + stor3) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require claimedEggs[msg.sender] * stor3 / stor3 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor3 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 >= stor3
                    require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                    if not 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 <= 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3) - (5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100)
            else:
                require ext_call.return_data[0] * stor2 / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor3 >= stor3
                        require (0 / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor3 / stor3 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor3 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 >= stor3
                        require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 >= stor3
                        require (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor3 / stor3 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 >= stor3
                        require ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100)
        else:
            require myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 >= stor3
                    require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                    if not 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 <= 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3) - (5 * 0 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / stor3 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) >= 0
                    require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                    require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 >= stor3
                    require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                    if not 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 <= 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3) - (5 * 0 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100)
            else:
                require ext_call.return_data[0] * stor2 / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (0 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / stor3 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) >= 0
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) / stor3 == (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / ((myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (myMiners[address(msg.sender)] * EGGS_TO_HATCH_1MINERS) + claimedEggs[msg.sender]) + stor3 / 100)
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require claimedEggs[msg.sender]
                    require (0 / claimedEggs[msg.sender]) + stor3 >= stor3
                    require (0 / claimedEggs[msg.sender]) + stor3
                    if not 0 / (0 / claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 0 / (0 / claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100 <= 0 / (0 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / claimedEggs[msg.sender]) + stor3) - (5 * 0 / (0 / claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require claimedEggs[msg.sender] * stor3 / stor3 == claimedEggs[msg.sender]
                    require claimedEggs[msg.sender] * stor3 >= 0
                    require claimedEggs[msg.sender]
                    require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 >= stor3
                    require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                    if not 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs += claimedEggs[msg.sender]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 <= 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3) - (5 * 0 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100)
            else:
                require ext_call.return_data[0] * stor2 / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require claimedEggs[msg.sender]
                        require (0 / claimedEggs[msg.sender]) + stor3 >= stor3
                        require (0 / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (0 / claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor3 / stor3 == claimedEggs[msg.sender]
                        require claimedEggs[msg.sender] * stor3 >= 0
                        require claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 >= stor3
                        require (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (claimedEggs[msg.sender] * stor3 / claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require claimedEggs[msg.sender]
                        require (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 >= stor3
                        require (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require claimedEggs[msg.sender] * stor3 / stor3 == claimedEggs[msg.sender]
                        require (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require claimedEggs[msg.sender]
                        require ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 >= stor3
                        require ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs += claimedEggs[msg.sender]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / ((claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / claimedEggs[msg.sender]) + stor3 / 100)
        else:
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] >= claimedEggs[msg.sender]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 >= stor3
                    require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                    if not 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 <= 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3) - (5 * 0 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / stor3 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) >= 0
                    require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                    require ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 >= stor3
                    require ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                    if not 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3:
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                    else:
                        require 5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 == 5
                        claimedEggs[msg.sender] = 0
                        lastHatch[msg.sender] = block.timestamp
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                        marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 <= 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3) - (5 * 0 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100)
            else:
                require ext_call.return_data[0] * stor2 / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (0 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / stor3 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) >= 0
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100)
                else:
                    require marketEggs * stor2 / stor2 == marketEggs
                    if not stor3:
                        require marketEggs * stor2 >= marketEggs * stor2
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / (marketEggs * stor2 / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100)
                    else:
                        require (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) / stor3 == (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) >= marketEggs * stor2
                        require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 >= stor3
                        require ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        if not ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3:
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                        else:
                            require 5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 == 5
                            claimedEggs[msg.sender] = 0
                            lastHatch[msg.sender] = block.timestamp
                            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs >= marketEggs
                            marketEggs = (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender] + marketEggs
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100) - (5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100 <= ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3) - (5 * ext_call.return_data[0] * stor2 / ((block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) + (claimedEggs[msg.sender] * stor3) + (marketEggs * stor2) / (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) + claimedEggs[msg.sender]) + stor3 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
