contract main {




// =====================  Runtime code  =====================


#
#  - addressToString(address arg1)
#  - getShareholderInfo(address arg1)
#  - cashout(uint256 arg1)
#
address whomstAddress;
address stor1;
address whomst_routerAddress;
array of address stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of struct shares;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 sub_d947f519;
uint8 stor16;

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function totalShares() {
    return totalShares
}

function getTotalDistributed() {
    return totalDistributed
}

function whomst_router() {
    return whomst_routerAddress
}

function totalDividends() {
    return totalDividends
}

function whomst() {
    return whomstAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function sub_d947f519(?) {
    return sub_d947f519
}

function dividendsPerShare() {
    return dividendsPerShare
}

function totalDistributed() {
    return totalDistributed
}

function minPeriod() {
    return minPeriod
}

function _fallback() payable {
    revert
}

function setReflectionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == whomstAddress
    minPeriod = arg1
    sub_d947f519 = arg2
}

function setToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == whomstAddress
    whomstAddress = arg1
    whomst_routerAddress = arg2
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor1 = ext_call.return_data[12 len 20]
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if not shares[address(arg1)].field_0:
        if 0 <= shares[address(arg1)].field_256:
            return 0
        if shares[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < shares[address(arg1)].field_256:
            revert with 0, 17
        return -shares[address(arg1)].field_256
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 0, 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function load() payable {
    if stor16:
        if totalDividends:
            if totalDividends > !msg.value:
                revert with 0, 17
            totalDividends += msg.value
            if dividendsPerShareAccuracyFactor and msg.value > -1 / dividendsPerShareAccuracyFactor:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if dividendsPerShare > !(dividendsPerShareAccuracyFactor * msg.value / totalShares):
                revert with 0, 17
            dividendsPerShare += dividendsPerShareAccuracyFactor * msg.value / totalShares
        else:
            if eth.balance(this.address) > 0:
                totalDividends = eth.balance(this.address)
                if dividendsPerShareAccuracyFactor and eth.balance(this.address) > -1 / dividendsPerShareAccuracyFactor:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if dividendsPerShare > !(dividendsPerShareAccuracyFactor * eth.balance(this.address) / totalShares):
                    revert with 0, 17
                dividendsPerShare += dividendsPerShareAccuracyFactor * eth.balance(this.address) / totalShares
            else:
                if totalDividends > !msg.value:
                    revert with 0, 17
                totalDividends += msg.value
                if dividendsPerShareAccuracyFactor and msg.value > -1 / dividendsPerShareAccuracyFactor:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if dividendsPerShare > !(dividendsPerShareAccuracyFactor * msg.value / totalShares):
                    revert with 0, 17
                dividendsPerShare += dividendsPerShareAccuracyFactor * msg.value / totalShares
}

function giveMeWelfarePlease(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == whomstAddress
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if not shares[address(arg1)].field_0:
                if 0 > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if -shares[address(arg1)].field_256:
                        if totalDistributed > !-shares[address(arg1)].field_256:
                            revert with 0, 17
                        if totalDistributed - shares[address(arg1)].field_256 < totalDistributed:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDistributed -= shares[address(arg1)].field_256
                        call arg1 with:
                           value -shares[address(arg1)].field_256 wei
                             gas 30000 wei
                        stor5[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                            revert with 0, 17
                        if shares[address(arg1)].field_512 - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
            else:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        if totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < totalDistributed:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        call arg1 with:
                           value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                             gas 30000 wei
                        stor5[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        if shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function tally(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == whomstAddress
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if not shares[address(arg1)].field_0:
                    if 0 > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if -shares[address(arg1)].field_256:
                            if totalDistributed > !-shares[address(arg1)].field_256:
                                revert with 0, 17
                            if totalDistributed - shares[address(arg1)].field_256 < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed -= shares[address(arg1)].field_256
                            call arg1 with:
                               value -shares[address(arg1)].field_256 wei
                                 gas 30000 wei
                            stor5[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                                revert with 0, 17
                            if shares[address(arg1)].field_512 - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                else:
                    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            if totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            call arg1 with:
                               value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                 gas 30000 wei
                            stor5[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            if shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0:
                if stor3.length < 1:
                    revert with 0, 17
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                if stor4[address(arg1)] >= stor3.length:
                    revert with 0, 50
                stor3[stor4[address(arg1)]] = stor3[stor3.length]
                if stor3.length < 1:
                    revert with 0, 17
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                stor4[stor3[stor3.length]] = stor4[address(arg1)]
                if not stor3.length:
                    revert with 0, 49
                stor3[stor3.length] = 0
                stor3.length--
    else:
        if not shares[address(arg1)].field_0:
            stor4[address(arg1)] = stor3.length
            stor3.length++
            stor3[stor3.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    if stor4[address(arg1)] >= stor3.length:
                        revert with 0, 50
                    stor3[stor4[address(arg1)]] = stor3[stor3.length]
                    if stor3.length < 1:
                        revert with 0, 17
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    stor4[stor3[stor3.length]] = stor4[address(arg1)]
                    if not stor3.length:
                        revert with 0, 49
                    stor3[stor3.length] = 0
                    stor3.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if not arg2:
        shares[address(arg1)].field_256 = 0
    else:
        if arg2 and dividendsPerShare > -1 / arg2:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        shares[address(arg1)].field_256 = arg2 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
