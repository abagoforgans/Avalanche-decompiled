contract main {




// =====================  Runtime code  =====================


#
#  - process()
#
mapping of uint8 stor0;
array of address stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of struct shares;
uint256 totalShares;
uint256 totalRewards;
uint256 totalRewarded;
uint256 rewardsPerShare;
uint256 rewardsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;
uint256 gas;
uint8 stor17;

function totalRewards() {
    return totalRewards
}

function getTotalRewarded() {
    return totalRewarded
}

function initialized() {
    return bool(stor17)
}

function totalShares() {
    return totalShares
}

function minDistribution() {
    return minDistribution
}

function gas() {
    return gas
}

function totalRewarded() {
    return totalRewarded
}

function rewardsPerShareAccuracyFactor() {
    return rewardsPerShareAccuracyFactor
}

function rewardsPerShare() {
    return rewardsPerShare
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function getTotalRewards() {
    return totalRewards
}

function minPeriod() {
    return minPeriod
}

function _fallback() payable {
    revert
}

function countShareholders() {
    if not stor0[msg.sender]:
        require not stor17
    return stor4.length
}

function getPaidRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        require not stor17
    return shares[address(arg1)].field_512
}

function setDistributionParameters(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor0[msg.sender]:
        require not stor17
    minPeriod = arg1
    minDistribution = arg2
    gas = arg3
}

function startDistribution() {
    require not stor17
    if not stor0[msg.sender]:
        require not stor17
    if rewardsPerShareAccuracyFactor and eth.balance(this.address) > -1 / rewardsPerShareAccuracyFactor:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    rewardsPerShare = rewardsPerShareAccuracyFactor * eth.balance(this.address) / totalShares
    stor17 = 1
}

function getClaimTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)] > !minPeriod:
        revert with 0, 17
    if stor6[address(arg1)] + minPeriod <= block.timestamp:
        return 0
    if stor6[address(arg1)] > !minPeriod:
        revert with 0, 17
    if stor6[address(arg1)] + minPeriod < block.timestamp:
        revert with 0, 17
    return (stor6[address(arg1)] + minPeriod - block.timestamp)
}

function deposit() payable {
    if totalRewards > !msg.value:
        revert with 0, 17
    totalRewards += msg.value
    if stor17:
        if rewardsPerShareAccuracyFactor and msg.value > -1 / rewardsPerShareAccuracyFactor:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if rewardsPerShare > !(rewardsPerShareAccuracyFactor * msg.value / totalShares):
            revert with 0, 17
        rewardsPerShare += rewardsPerShareAccuracyFactor * msg.value / totalShares
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        require not stor17
    require ext_code.size(arg1)
    staticcall arg1.0x158ef93e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require not ext_call.return_data[0]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnpaidRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        require not stor17
    if not shares[address(arg1)].field_0:
        return 0
    if not shares[address(arg1)].field_0:
        if 0 <= shares[address(arg1)].field_256:
            return 0
        if 0 < shares[address(arg1)].field_256:
            revert with 0, 17
        return -shares[address(arg1)].field_256
    if shares[address(arg1)].field_0 and rewardsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not rewardsPerShareAccuracyFactor:
        revert with 0, 18
    if shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 0, 17
    return ((shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function claim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        require not stor17
    if shares[address(arg1)].field_0:
        if not stor0[msg.sender]:
            require not stor17
        if shares[address(arg1)].field_0:
            if not shares[address(arg1)].field_0:
                if 0 > shares[address(arg1)].field_256:
                    if 0 < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if -shares[address(arg1)].field_256:
                        if totalRewarded > !-shares[address(arg1)].field_256:
                            revert with 0, 17
                        totalRewarded -= shares[address(arg1)].field_256
                        stor6[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                            revert with 0, 17
                        shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and rewardsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor:
                                revert with 0, 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                        call arg1 with:
                           value -shares[address(arg1)].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if shares[address(arg1)].field_0 and rewardsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not rewardsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalRewarded > !((shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        totalRewarded = totalRewarded + (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        stor6[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and rewardsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor:
                                revert with 0, 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                        call arg1 with:
                           value (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function setShares(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor0[msg.sender]:
        require not stor17
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0:
                if stor4.length < 1:
                    revert with 0, 17
                if stor4.length - 1 >= stor4.length:
                    revert with 0, 50
                if stor5[address(arg1)] >= stor4.length:
                    revert with 0, 50
                stor4[stor5[address(arg1)]] = stor4[stor4.length]
                if stor4.length < 1:
                    revert with 0, 17
                if stor4.length - 1 >= stor4.length:
                    revert with 0, 50
                stor5[stor4[stor4.length]] = stor5[address(arg1)]
                if not stor4.length:
                    revert with 0, 49
                stor4[stor4.length] = 0
                stor4.length--
    else:
        if not shares[address(arg1)].field_0:
            stor5[address(arg1)] = stor4.length
            stor4.length++
            stor4[stor4.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    if stor5[address(arg1)] >= stor4.length:
                        revert with 0, 50
                    stor4[stor5[address(arg1)]] = stor4[stor4.length]
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    stor5[stor4[stor4.length]] = stor5[address(arg1)]
                    if not stor4.length:
                        revert with 0, 49
                    stor4[stor4.length] = 0
                    stor4.length--
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if not stor0[msg.sender]:
                require not stor17
            if shares[address(arg1)].field_0:
                if not shares[address(arg1)].field_0:
                    if 0 > shares[address(arg1)].field_256:
                        if 0 < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if -shares[address(arg1)].field_256:
                            if totalRewarded > !-shares[address(arg1)].field_256:
                                revert with 0, 17
                            totalRewarded -= shares[address(arg1)].field_256
                            stor6[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                                revert with 0, 17
                            shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and rewardsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not rewardsPerShareAccuracyFactor:
                                    revert with 0, 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                            call arg1 with:
                               value -shares[address(arg1)].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if shares[address(arg1)].field_0 and rewardsPerShare > -1 / shares[address(arg1)].field_0:
                        revert with 0, 17
                    if not rewardsPerShareAccuracyFactor:
                        revert with 0, 18
                    if shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            if totalRewarded > !((shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            totalRewarded = totalRewarded + (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            stor6[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and rewardsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not rewardsPerShareAccuracyFactor:
                                    revert with 0, 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                            call arg1 with:
                               value (shares[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if not arg2:
        shares[address(arg1)].field_256 = 0
    else:
        if arg2 and rewardsPerShare > -1 / arg2:
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor:
            revert with 0, 18
        shares[address(arg1)].field_256 = arg2 * rewardsPerShare / rewardsPerShareAccuracyFactor
}



}
