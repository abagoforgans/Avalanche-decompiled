contract main {




// =====================  Runtime code  =====================


#
#  - addressToString(address arg1)
#  - getShareholderInfo(address arg1)
#  - cashout(uint256 arg1)
#
address whomstAddress;
array of address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of struct shares;
address originalOwner;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 sub_d947f519;
uint8 sub_1e937842;

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function sub_1e937842(?) {
    return bool(sub_1e937842)
}

function totalShares() {
    return totalShares
}

function getTotalDistributed() {
    return totalDistributed
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
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512, shares[arg1].field_768
}

function getShareholderRealized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)].field_512
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

function originalOwner() {
    return originalOwner
}

function minPeriod() {
    return minPeriod
}

function _fallback() payable {
    revert
}

function initialize() {
    if whomstAddress != msg.sender:
        require msg.sender == originalOwner
    sub_1e937842 = 1
}

function setReflectionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if originalOwner != msg.sender:
        if whomstAddress != msg.sender:
            if originalOwner != tx.origin:
                revert with 0, 'Must be owner or contract.'
    minPeriod = arg1
    sub_d947f519 = arg2
}

function load() payable {
    if totalDividends > !msg.value:
        revert with 'NH{q', 17
    totalDividends += msg.value
    if dividendsPerShareAccuracyFactor and msg.value > -1 / dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if dividendsPerShare > !(dividendsPerShareAccuracyFactor * msg.value / totalShares):
        revert with 'NH{q', 17
    dividendsPerShare += dividendsPerShareAccuracyFactor * msg.value / totalShares
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if originalOwner != msg.sender:
        if whomstAddress != msg.sender:
            if originalOwner != tx.origin:
                revert with 0, 'Must be owner or contract.'
    if sub_1e937842:
        revert with 0, 'Already initialized and locked.'
    require arg1 != 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3
    require arg1 != 0x10ed43c718714eb63d5aa57b78b54704e256024e
    require arg1 != this.address
    whomstAddress = arg1
}

function getPendingRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if not shares[address(arg1)].field_0:
        if 0 <= shares[address(arg1)].field_256:
            return 0
        if 0 < shares[address(arg1)].field_256:
            revert with 'NH{q', 17
        return -shares[address(arg1)].field_256
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 'NH{q', 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function giveMeWelfarePlease(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if originalOwner != msg.sender:
        if whomstAddress != msg.sender:
            if originalOwner != tx.origin:
                revert with 0, 'Must be owner or contract.'
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if not shares[address(arg1)].field_0:
                if 0 > shares[address(arg1)].field_256:
                    if 0 < shares[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    if -shares[address(arg1)].field_256:
                        if totalDistributed > !-shares[address(arg1)].field_256:
                            revert with 'NH{q', 17
                        totalDistributed -= shares[address(arg1)].field_256
                        stor3[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                            revert with 'NH{q', 17
                        shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 'NH{q', 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 'NH{q', 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        call arg1 with:
                           value -shares[address(arg1)].field_256 wei
                             gas 30000 wei
            else:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 'NH{q', 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 'NH{q', 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        stor3[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 'NH{q', 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 'NH{q', 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 'NH{q', 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        call arg1 with:
                           value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                             gas 30000 wei
}

function tally(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if originalOwner != msg.sender:
        if whomstAddress != msg.sender:
            if originalOwner != tx.origin:
                revert with 0, 'Must be owner or contract.'
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if not shares[address(arg1)].field_0:
                    if 0 > shares[address(arg1)].field_256:
                        if 0 < shares[address(arg1)].field_256:
                            revert with 'NH{q', 17
                        if -shares[address(arg1)].field_256:
                            if totalDistributed > !-shares[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            totalDistributed -= shares[address(arg1)].field_256
                            stor3[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 'NH{q', 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 'NH{q', 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            call arg1 with:
                               value -shares[address(arg1)].field_256 wei
                                 gas 30000 wei
                else:
                    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 'NH{q', 18
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                            revert with 'NH{q', 17
                        if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 'NH{q', 17
                            totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            stor3[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 'NH{q', 17
                            shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 'NH{q', 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 'NH{q', 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            call arg1 with:
                               value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                 gas 30000 wei
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0:
                if stor1.length < 1:
                    revert with 'NH{q', 17
                if stor1.length - 1 >= stor1.length:
                    revert with 'NH{q', 50
                if stor2[address(arg1)] >= stor1.length:
                    revert with 'NH{q', 50
                stor1[stor2[address(arg1)]] = stor1[stor1.length]
                if stor1.length < 1:
                    revert with 'NH{q', 17
                if stor1.length - 1 >= stor1.length:
                    revert with 'NH{q', 50
                stor2[stor1[stor1.length]] = stor2[address(arg1)]
                if not stor1.length:
                    revert with 'NH{q', 49
                stor1[stor1.length] = 0
                stor1.length--
    else:
        if not shares[address(arg1)].field_0:
            stor2[address(arg1)] = stor1.length
            stor1.length++
            stor1[stor1.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if stor1.length < 1:
                        revert with 'NH{q', 17
                    if stor1.length - 1 >= stor1.length:
                        revert with 'NH{q', 50
                    if stor2[address(arg1)] >= stor1.length:
                        revert with 'NH{q', 50
                    stor1[stor2[address(arg1)]] = stor1[stor1.length]
                    if stor1.length < 1:
                        revert with 'NH{q', 17
                    if stor1.length - 1 >= stor1.length:
                        revert with 'NH{q', 50
                    stor2[stor1[stor1.length]] = stor2[address(arg1)]
                    if not stor1.length:
                        revert with 'NH{q', 49
                    stor1[stor1.length] = 0
                    stor1.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if totalShares - shares[address(arg1)].field_0 > !arg2:
        revert with 'NH{q', 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if not arg2:
        shares[address(arg1)].field_256 = 0
    else:
        if arg2 and dividendsPerShare > -1 / arg2:
            revert with 'NH{q', 17
        if not dividendsPerShareAccuracyFactor:
            revert with 'NH{q', 18
        shares[address(arg1)].field_256 = arg2 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
