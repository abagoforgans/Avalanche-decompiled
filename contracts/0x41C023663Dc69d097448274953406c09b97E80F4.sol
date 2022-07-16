contract main {




// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 stor101;
address tokenAddress;
array of address stor152;
mapping of uint256 stor153;
mapping of uint256 stor154;
mapping of struct shares;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;
uint16 stor163;
address stor163; offset 16
address DEADAddress;
address ZEROAddress;
mapping of uint8 stor166;
mapping of uint8 stor167;
array of address stor15476983043190012384489343372246315920096275136309887072151708352759906752532;

function DEAD() {
    return DEADAddress
}

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function totalShares() {
    return totalShares
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor166[arg1])
}

function minDistribution() {
    return minDistribution
}

function ZERO() {
    return ZEROAddress
}

function paused() {
    return bool(stor101)
}

function owner() {
    return owner
}

function totalDividends() {
    return totalDividends
}

function tokenAddress() {
    return tokenAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPeriod = arg1
    minDistribution = arg2
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid token address'
    if not ext_code.size(arg1):
        revert with 0, 'invalid token address'
    tokenAddress = arg1
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

function sub_1a126d2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
        revert with 0, 17
    if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return (block.timestamp - stor154[address(arg1)])
}

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 0
    dividendsPerShareAccuracyFactor = 1000000000000000000 * 10^18
    minPeriod = 3600
    minDistribution = 10^18
    uint16(stor163.field_0) = 57005
    Mask(144, 0, stor163.field_16) = 0
    ZEROAddress = 0
    stor166[this.address] = 1
    stor166[address(stor163.field_0)] = 1
    minPeriod = 3600
}

function deposit() payable {
    if tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only token contract can set shares'
    if totalDividends > !msg.value:
        revert with 0, 17
    if totalDividends + msg.value < totalDividends:
        revert with 0, 'SafeMath: addition overflow'
    totalDividends += msg.value
    if not dividendsPerShareAccuracyFactor:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        if dividendsPerShare > !(0 / totalShares):
            revert with 0, 17
        if dividendsPerShare + (0 / totalShares) < dividendsPerShare:
            revert with 0, 'SafeMath: addition overflow'
        dividendsPerShare += 0 / totalShares
    else:
        if dividendsPerShareAccuracyFactor and msg.value > -1 / dividendsPerShareAccuracyFactor:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if dividendsPerShareAccuracyFactor * msg.value / dividendsPerShareAccuracyFactor != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        if dividendsPerShare > !(dividendsPerShareAccuracyFactor * msg.value / totalShares):
            revert with 0, 17
        if dividendsPerShare + (dividendsPerShareAccuracyFactor * msg.value / totalShares) < dividendsPerShare:
            revert with 0, 'SafeMath: addition overflow'
        dividendsPerShare += dividendsPerShareAccuracyFactor * msg.value / totalShares
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if not shares[address(arg1)].field_0:
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
            return 0
        if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
            revert with 0, 17
        return ((0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not shares[address(arg1)].field_0:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: division by zero', 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 0, 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function setExempt(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor166[address(arg1)] = uint8(arg2)
    if 1 == arg2:
        if shares[address(arg1)].field_0:
            if not shares[address(arg1)].field_0:
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        call msg.sender with:
                           value (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                             gas 30000 wei
            else:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not shares[address(arg1)].field_0:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 'SafeMath: division by zero', 0
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        call msg.sender with:
                           value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                             gas 30000 wei
        if stor152.length < 1:
            revert with 0, 17
        if stor152.length - 1 >= stor152.length:
            revert with 0, 50
        if stor153[address(arg1)] >= stor152.length:
            revert with 0, 50
        stor152[stor153[address(arg1)]] = stor152[stor152.length]
        if stor152.length < 1:
            revert with 0, 17
        if stor152.length - 1 >= stor152.length:
            revert with 0, 50
        stor153[stor152[stor152.length]] = stor153[address(arg1)]
        if not stor152.length:
            revert with 0, 49
        stor152[stor152.length] = 0
        stor152.length--
        if shares[address(arg1)].field_0 > totalShares:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalShares < shares[address(arg1)].field_0:
            revert with 0, 17
        totalShares -= shares[address(arg1)].field_0
        if not shares[address(arg1)].field_0:
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: division by zero', 0
            shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
        else:
            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                revert with 0, 17
            if not shares[address(arg1)].field_0:
                revert with 0, 18
            if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                revert with 0, 'SafeMath: multiplication overflow'
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: division by zero', 0
            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
        shares[address(arg1)].field_0 = 0
}

function sub_1accf233(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only token contract can set shares'
    if bool(stor167[address(arg1)]) != 1:
        if shares[address(arg1)].field_0:
            stor167[address(arg1)] = 1
            if shares[address(arg1)].field_0:
                if not shares[address(arg1)].field_0:
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            stor154[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !((0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            if shares[address(arg1)].field_512 + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not shares[address(arg1)].field_0:
                                    revert with 0, 18
                                if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            if totalDistributed + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed = totalDistributed + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            call address(arg1) with:
                               value (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                 gas 30000 wei
                            if bool(ext_call.success) != 1:
                                revert with 0, 'reward to the holder failed'
                else:
                    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                        revert with 0, 17
                    if not shares[address(arg1)].field_0:
                        revert with 0, 18
                    if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero', 0
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            stor154[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            if shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not shares[address(arg1)].field_0:
                                    revert with 0, 18
                                if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            if totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            call address(arg1) with:
                               value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                 gas 30000 wei
                            if bool(ext_call.success) != 1:
                                revert with 0, 'reward to the holder failed'
            stor167[address(arg1)] = 0
}

function claimDividend() {
    if bool(stor167[address(msg.sender)]) != 1:
        if shares[address(msg.sender)].field_0:
            stor167[address(msg.sender)] = 1
            if shares[address(msg.sender)].field_0:
                if not shares[address(msg.sender)].field_0:
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                        if shares[address(msg.sender)].field_256 > 0 / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                            revert with 0, 17
                        if (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                            stor154[address(msg.sender)] = block.timestamp
                            if shares[address(msg.sender)].field_512 > !((0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                                revert with 0, 17
                            if shares[address(msg.sender)].field_512 + (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 < shares[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                            if not shares[address(msg.sender)].field_0:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(msg.sender)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                                    revert with 0, 17
                                if not shares[address(msg.sender)].field_0:
                                    revert with 0, 18
                                if shares[address(msg.sender)].field_0 * dividendsPerShare / shares[address(msg.sender)].field_0 != dividendsPerShare:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                                revert with 0, 17
                            if totalDistributed + (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed = totalDistributed + (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                            call msg.sender with:
                               value (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 wei
                                 gas 30000 wei
                            if bool(ext_call.success) != 1:
                                revert with 0, 'reward to the holder failed'
                else:
                    if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not shares[address(msg.sender)].field_0:
                        revert with 0, 18
                    if shares[address(msg.sender)].field_0 * dividendsPerShare / shares[address(msg.sender)].field_0 != dividendsPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero', 0
                    if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                        if shares[address(msg.sender)].field_256 > shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                            revert with 0, 17
                        if (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                            stor154[address(msg.sender)] = block.timestamp
                            if shares[address(msg.sender)].field_512 > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                                revert with 0, 17
                            if shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 < shares[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                            if not shares[address(msg.sender)].field_0:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(msg.sender)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                                    revert with 0, 17
                                if not shares[address(msg.sender)].field_0:
                                    revert with 0, 18
                                if shares[address(msg.sender)].field_0 * dividendsPerShare / shares[address(msg.sender)].field_0 != dividendsPerShare:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero', 0
                                shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                                revert with 0, 17
                            if totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed = totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                            call msg.sender with:
                               value (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 wei
                                 gas 30000 wei
                            if bool(ext_call.success) != 1:
                                revert with 0, 'reward to the holder failed'
            stor167[address(msg.sender)] = 0
}

function getAccountInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: division by zero', 0
        if not shares[address(arg1)].field_0:
            if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
                revert with 0, 17
            if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return 0 / dividendsPerShareAccuracyFactor, 0, stor154[address(arg1)], block.timestamp - stor154[address(arg1)]
        if not shares[address(arg1)].field_0:
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
                if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
                    revert with 0, 17
                if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                return 0 / dividendsPerShareAccuracyFactor, 0, stor154[address(arg1)], block.timestamp - stor154[address(arg1)]
            if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                revert with 0, 17
            if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
                revert with 0, 17
            if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return 0 / dividendsPerShareAccuracyFactor, 
                   (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256,
                   stor154[address(arg1)],
                   block.timestamp - stor154[address(arg1)]
        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
            revert with 0, 17
        if not shares[address(arg1)].field_0:
            revert with 0, 18
        if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
            revert with 0, 'SafeMath: multiplication overflow'
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: division by zero', 0
        if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
            if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
                revert with 0, 17
            if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return 0 / dividendsPerShareAccuracyFactor, 0, stor154[address(arg1)], block.timestamp - stor154[address(arg1)]
        if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
            revert with 0, 17
        if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
            revert with 0, 17
        if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return 0 / dividendsPerShareAccuracyFactor, 
               (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256,
               stor154[address(arg1)],
               block.timestamp - stor154[address(arg1)]
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not shares[address(arg1)].field_0:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: division by zero', 0
    if not shares[address(arg1)].field_0:
        if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
            revert with 0, 17
        if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor, 
               0,
               stor154[address(arg1)],
               block.timestamp - stor154[address(arg1)]
    if not shares[address(arg1)].field_0:
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
            if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
                revert with 0, 17
            if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor, 
                   0,
                   stor154[address(arg1)],
                   block.timestamp - stor154[address(arg1)]
        if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
            revert with 0, 17
        if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
            revert with 0, 17
        if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor, 
               (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256,
               stor154[address(arg1)],
               block.timestamp - stor154[address(arg1)]
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not shares[address(arg1)].field_0:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
        revert with 0, 'SafeMath: multiplication overflow'
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: division by zero', 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
            revert with 0, 17
        if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor, 
               0,
               stor154[address(arg1)],
               block.timestamp - stor154[address(arg1)]
    if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 0, 17
    if block.timestamp < stor154[address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor154[address(arg1)] >= 0:
        revert with 0, 17
    if stor154[address(arg1)] < 0 and block.timestamp > stor154[address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor, 
           (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256,
           stor154[address(arg1)],
           block.timestamp - stor154[address(arg1)]
}

function setShare(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only token contract can set shares'
    if bool(stor166[address(arg1)]) != 1:
        if shares[address(arg1)].field_0:
            if bool(stor167[address(arg1)]) != 1:
                if shares[address(arg1)].field_0:
                    stor167[address(arg1)] = 1
                    if shares[address(arg1)].field_0:
                        if not shares[address(arg1)].field_0:
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero', 0
                            if 0 / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                                if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                                    revert with 0, 17
                                if (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                                    stor154[address(arg1)] = block.timestamp
                                    if shares[address(arg1)].field_512 > !((0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                        revert with 0, 17
                                    if shares[address(arg1)].field_512 + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                                    if not shares[address(arg1)].field_0:
                                        if not dividendsPerShareAccuracyFactor:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                                    else:
                                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                            revert with 0, 17
                                        if not shares[address(arg1)].field_0:
                                            revert with 0, 18
                                        if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not dividendsPerShareAccuracyFactor:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                                    if totalDistributed > !((0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                        revert with 0, 17
                                    if totalDistributed + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < totalDistributed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDistributed = totalDistributed + (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                                    call arg1 with:
                                       value (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                         gas 30000 wei
                                    if bool(ext_call.success) != 1:
                                        revert with 0, 'reward to the holder failed'
                        else:
                            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 0, 17
                            if not shares[address(arg1)].field_0:
                                revert with 0, 18
                            if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero', 0
                            if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                                if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                                    revert with 0, 17
                                if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                                    stor154[address(arg1)] = block.timestamp
                                    if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                        revert with 0, 17
                                    if shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < shares[address(arg1)].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                                    if not shares[address(arg1)].field_0:
                                        if not dividendsPerShareAccuracyFactor:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                                    else:
                                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                            revert with 0, 17
                                        if not shares[address(arg1)].field_0:
                                            revert with 0, 18
                                        if shares[address(arg1)].field_0 * dividendsPerShare / shares[address(arg1)].field_0 != dividendsPerShare:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not dividendsPerShareAccuracyFactor:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                                    if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                        revert with 0, 17
                                    if totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 < totalDistributed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                                    call arg1 with:
                                       value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                         gas 30000 wei
                                    if bool(ext_call.success) != 1:
                                        revert with 0, 'reward to the holder failed'
                    stor167[address(arg1)] = 0
        if arg2 <= 0:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if stor152.length < 1:
                        revert with 0, 17
                    if stor152.length - 1 >= stor152.length:
                        revert with 0, 50
                    if stor153[address(arg1)] >= stor152.length:
                        revert with 0, 50
                    stor152[stor153[address(arg1)]] = stor152[stor152.length]
                    if stor152.length < 1:
                        revert with 0, 17
                    if stor152.length - 1 >= stor152.length:
                        revert with 0, 50
                    stor153[stor152[stor152.length]] = stor153[address(arg1)]
                    if not stor152.length:
                        revert with 0, 49
                    stor152[stor152.length] = 0
                    stor152.length--
        else:
            if not shares[address(arg1)].field_0:
                stor153[address(arg1)] = stor152.length
                stor152.length++
                stor2237[stor152.length] = arg1
            else:
                if not arg2:
                    if shares[address(arg1)].field_0:
                        if stor152.length < 1:
                            revert with 0, 17
                        if stor152.length - 1 >= stor152.length:
                            revert with 0, 50
                        if stor153[address(arg1)] >= stor152.length:
                            revert with 0, 50
                        stor152[stor153[address(arg1)]] = stor152[stor152.length]
                        if stor152.length < 1:
                            revert with 0, 17
                        if stor152.length - 1 >= stor152.length:
                            revert with 0, 50
                        stor153[stor152[stor152.length]] = stor153[address(arg1)]
                        if not stor152.length:
                            revert with 0, 49
                        stor152[stor152.length] = 0
                        stor152.length--
        if shares[address(arg1)].field_0 > totalShares:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalShares < shares[address(arg1)].field_0:
            revert with 0, 17
        if totalShares - shares[address(arg1)].field_0 > !arg2:
            revert with 0, 17
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalShares = totalShares - shares[address(arg1)].field_0 + arg2
        shares[address(arg1)].field_0 = arg2
        if not arg2:
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: division by zero', 0
            shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
        else:
            if arg2 and dividendsPerShare > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * dividendsPerShare / arg2 != dividendsPerShare:
                revert with 0, 'SafeMath: multiplication overflow'
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: division by zero', 0
            shares[address(arg1)].field_256 = arg2 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
