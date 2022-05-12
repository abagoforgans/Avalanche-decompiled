contract main {




// =====================  Runtime code  =====================


#
#  - getDepositorsList(uint256 arg1, uint256 arg2)
#  - withdraw(address arg1, uint256 arg2, uint256[] arg3, uint256 arg4)
#  - claimAs(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - claim(uint256 arg1, uint256 arg2, uint256 arg3)
#  - deposit(address arg1, uint256 arg2, uint256[] arg3, uint256 arg4)
#
const disbursePercentX100 = 10000

const trustedDepositTokenAddress = 0x66eecc97203704d9e2db4a431cb0e9ce92539d5a

const trustedRewardTokenAddress = 0xbd100d061e120b2c67a24453cf6368e63f1be0

const swapAttemptPeriod = 600

const trustedStakingContractAddress = 0xf1ec6c5269ff2596eab1783d6ff8da6edfc35322

const trustedPlatformTokenAddress = 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17

const disburseDuration = 3600

const trustedBaseTokenAddress = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const burnOrDisburseTokensPeriod = 900

const adminCanClaimAfter = 300

const disburseAmount = 10 * 10^18

const EMERGENCY_WAIT_TIME = 300

const BURN_ADDRESS = 57005


address owner;
uint256 cliffTime;
uint256 STAKING_FEE_RATE_X_100;
uint256 UNSTAKING_FEE_RATE_X_100;
uint256 MAGIC_NUMBER;
mapping of uint8 stor5;
uint256 contractDeployTime;
uint256 adminClaimableTime;
uint256 lastDisburseTime;
uint256 lastSwapExecutionTime;
uint256 lastBurnOrTokenDistributeTime;
uint8 stor11;
address uniswapRouterV2Address; offset 8
address uniswapV2PairAddress;
array of address sWAP_PATH;
address feeRecipientAddress;
uint256 totalClaimedRewards;
uint256 totalClaimedRewardsEth;
uint256 numberOfHolders;
mapping of uint256 stor18;
mapping of uint256 depositedTokens;
mapping of uint256 depositTime;
mapping of uint256 lastClaimedTime;
mapping of uint256 totalEarnedTokens;
mapping of uint256 totalEarnedEth;
mapping of uint256 lastDivPoints;
mapping of uint256 lastEthDivPoints;
uint256 contractBalance;
uint256 totalDivPoints;
uint256 totalEthDivPoints;
uint256 totalTokens;
uint256 stor30; offset 32
uint256 tokensToBeDisbursedOrBurnt;
big480 stor30;
uint256 tokensToBeSwapped;

function cliffTime() payable {
    return cliffTime
}

function lastDivPoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastDivPoints[arg1]
}

function lastSwapExecutionTime() payable {
    return lastSwapExecutionTime
}

function SWAP_PATH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sWAP_PATH.length
    return sWAP_PATH[arg1]
}

function trustedClaimableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function getNumberOfHolders() payable {
    return numberOfHolders
}

function MAGIC_NUMBER() payable {
    return MAGIC_NUMBER
}

function totalClaimedRewardsEth() payable {
    return totalClaimedRewardsEth
}

function depositTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositTime[arg1]
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function tokensToBeSwapped() payable {
    return tokensToBeSwapped
}

function totalEarnedEth(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalEarnedEth[arg1]
}

function uniswapRouterV2() payable {
    return uniswapRouterV2Address
}

function isEmergency() payable {
    return bool(stor11)
}

function totalEarnedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalEarnedTokens[arg1]
}

function lastBurnOrTokenDistributeTime() payable {
    return lastBurnOrTokenDistributeTime
}

function tokensToBeDisbursedOrBurnt() payable {
    return tokensToBeDisbursedOrBurnt
}

function totalTokens() payable {
    return totalTokens
}

function STAKING_FEE_RATE_X_100() payable {
    return STAKING_FEE_RATE_X_100
}

function lastEthDivPoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastEthDivPoints[arg1]
}

function contractBalance() payable {
    return contractBalance
}

function owner() payable {
    return owner
}

function totalDivPoints() payable {
    return totalDivPoints
}

function contractDeployTime() payable {
    return contractDeployTime
}

function totalEthDivPoints() payable {
    return totalEthDivPoints
}

function UNSTAKING_FEE_RATE_X_100() payable {
    return UNSTAKING_FEE_RATE_X_100
}

function depositedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositedTokens[arg1]
}

function adminClaimableTime() payable {
    return adminClaimableTime
}

function totalClaimedRewards() payable {
    return totalClaimedRewards
}

function lastDisburseTime() payable {
    return lastDisburseTime
}

function feeRecipientAddress() payable {
    return feeRecipientAddress
}

function lastClaimedTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaimedTime[arg1]
}

function _fallback() payable {
    revert
}

function setMagicNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    MAGIC_NUMBER = arg1
    emit MagicNumberChanged(arg1);
}

function addTrustedClaimableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
    emit ClaimableTokenAdded(arg1);
}

function removeTrustedClaimableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 0
    emit ClaimableTokenRemoved(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLockupTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > 2160 * 24 * 3600:
        revert with 0, 'Lockup time too long!'
    cliffTime = arg1
    emit LockupTimeChanged(arg1);
}

function setStakingFeeRateX100(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 >= 10000:
        revert with 0, 'Invalid fee!'
    STAKING_FEE_RATE_X_100 = arg1
    emit StakingFeeChanged(arg1);
}

function setUnstakingFeeRateX100(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 >= 10000:
        revert with 0, 'Invalid fee!'
    UNSTAKING_FEE_RATE_X_100 = arg1
    emit UnstakingFeeChanged(arg1);
}

function setFeeRecipientAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address!'
    feeRecipientAddress = arg1
    emit FeeRecipientAddressChanged(arg1);
}

function setUniswapV2Router(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid router address!'
    uniswapRouterV2Address = arg1
    emit UniswapV2RouterChanged(address arg1):
                                0,
                                arg1,
}

function declareEmergency() payable {
    require msg.sender == owner
    if stor11:
        revert with 0, 'lCannot execute during emergency'
    stor11 = 1
    if block.timestamp + 300 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    adminClaimableTime = block.timestamp + 300
    cliffTime = 0
    emit EmergencyDeclared(owner);
}

function getPendingDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor18[address(arg1)]:
        return 0
    if not depositedTokens[address(arg1)]:
        return 0
    if lastDivPoints[address(arg1)] > totalDivPoints:
        revert with 0, 'SafeMath: subtraction overflow'
    if not depositedTokens[address(arg1)]:
        return 0
    if (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / depositedTokens[address(arg1)] != totalDivPoints - lastDivPoints[address(arg1)]:
        revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / 10^18)
}

function getPendingDivsEth(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor18[address(arg1)]:
        return 0
    if not depositedTokens[address(arg1)]:
        return 0
    if lastEthDivPoints[address(arg1)] > totalEthDivPoints:
        revert with 0, 'SafeMath: subtraction overflow'
    if not depositedTokens[address(arg1)]:
        return 0
    if (totalEthDivPoints * depositedTokens[address(arg1)]) - (lastEthDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / depositedTokens[address(arg1)] != totalEthDivPoints - lastEthDivPoints[address(arg1)]:
        revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((totalEthDivPoints * depositedTokens[address(arg1)]) - (lastEthDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / 10^18)
}

function getMaxSwappableAmount() payable {
    require ext_code.size(0x21000000000000000000000000bd100d061e120b2c67a24453cf6368e63f1be0)
    staticcall 0x21000000000000000000000000bd100d061e120b2c67a24453cf6368e63f1be0.0x70a08231 with:
            gas gas_remaining wei
           args 0x66eecc97203704d9e2db4a431cb0e9ce92539d5a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if MAGIC_NUMBER * ext_call.return_data[0] / ext_call.return_data[0] != MAGIC_NUMBER:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (MAGIC_NUMBER * ext_call.return_data[0] / 10^18)
}

function setContractVariables(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    MAGIC_NUMBER = arg1
    emit MagicNumberChanged(arg1);
    if arg2 > 2160 * 24 * 3600:
        revert with 0, 'Lockup time too long!'
    cliffTime = arg2
    emit LockupTimeChanged(arg2);
    require msg.sender == owner
    if arg3 >= 10000:
        revert with 0, 'Invalid fee!'
    STAKING_FEE_RATE_X_100 = arg3
    emit StakingFeeChanged(arg3);
    require msg.sender == owner
    if arg4 >= 10000:
        revert with 0, 'Invalid fee!'
    UNSTAKING_FEE_RATE_X_100 = arg4
    emit UnstakingFeeChanged(arg4);
    require msg.sender == owner
    if not arg5:
        revert with 0, 'Invalid router address!'
    uniswapRouterV2Address = arg5
    emit UniswapV2RouterChanged(address arg1):
                                0,
                                arg5,
    require msg.sender == owner
    if not arg6:
        revert with 0, 'Invalid address!'
    feeRecipientAddress = arg6
    emit FeeRecipientAddressChanged(arg6);
}

function getPendingDisbursement() payable {
    if contractDeployTime + 3600 < contractDeployTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= contractDeployTime + 3600:
        if lastDisburseTime >= block.timestamp:
            return 0
        if lastDisburseTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if (100000 * 10^18 * block.timestamp) - (100000 * 10^18 * lastDisburseTime) / 100000 * 10^18 != block.timestamp - lastDisburseTime:
            revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((100000 * 10^18 * block.timestamp) - (100000 * 10^18 * lastDisburseTime) / 3600 / 10000)
    if lastDisburseTime >= contractDeployTime + 3600:
        return 0
    if lastDisburseTime > contractDeployTime + 3600:
        revert with 0, 'SafeMath: subtraction overflow'
    if (100000 * 10^18 * contractDeployTime) + (-100000 * 10^18 * lastDisburseTime) + (100000 * 10^18 * 3600) / 100000 * 10^18 != contractDeployTime + -lastDisburseTime + 3600:
        revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((100000 * 10^18 * contractDeployTime) + (-100000 * 10^18 * lastDisburseTime) + (100000 * 10^18 * 3600) / 3600 / 10000)
}

function burnRewardTokens() payable {
    require msg.sender == owner
    if lastBurnOrTokenDistributeTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - lastBurnOrTokenDistributeTime <= 900:
        revert with 0, 'Recently executed, Please wait!'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(0xbd100d061e120b2c67a24453cf6368e63f1be0):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 0, stor30.field_32)
    mem[388 len 0] = 0
    call 0x00bd100d061e120b2c67a24453cf6368e63f1be0.0xdead with:
         gas gas_remaining wei
        args Mask(480, 0, stor30.field_0), mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    tokensToBeDisbursedOrBurnt = 0
    lastBurnOrTokenDistributeTime = block.timestamp
}

function addContractBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0xbd100d061e120b2c67a24453cf6368e63f1be0):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x00bd100d061e120b2c67a24453cf6368e63f1be0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg1 + contractBalance < contractBalance:
        revert with 0, 'SafeMath: addition overflow'
    contractBalance += arg1
}

function claimAnyToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if not arg2:
        revert with 0, 'Invalid Recipient'
    if block.timestamp <= adminClaimableTime:
        revert with 0, 'Contract not expired yet!'
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        mem[324 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function disburseRewardTokens() payable {
    require msg.sender == owner
    if lastBurnOrTokenDistributeTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - lastBurnOrTokenDistributeTime <= 900:
        revert with 0, 'Recently executed, Please wait!'
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x21000000000000000000000000bd100d061e120b2c67a24453cf6368e63f1be0)
    staticcall 0x21000000000000000000000000bd100d061e120b2c67a24453cf6368e63f1be0.0x70a08231 with:
            gas gas_remaining wei
           args 0x66eecc97203704d9e2db4a431cb0e9ce92539d5a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 < tokensToBeDisbursedOrBurnt:
            if 0 > tokensToBeDisbursedOrBurnt:
                revert with 0, 'SafeMath: subtraction overflow'
            revert with 0, 'distributeDivs failed!'
        if tokensToBeDisbursedOrBurnt <= 0:
            revert with 0, 'distributeDivs failed!'
        if totalTokens <= 0:
            revert with 0, 'distributeDivs failed!'
        if not tokensToBeDisbursedOrBurnt:
            if not totalTokens:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalTokens) + totalDivPoints < totalDivPoints:
                revert with 0, 'SafeMath: addition overflow'
            totalDivPoints += 0 / totalTokens
        else:
            if 10^18 * tokensToBeDisbursedOrBurnt / tokensToBeDisbursedOrBurnt != 10^18:
                revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not totalTokens:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * tokensToBeDisbursedOrBurnt / totalTokens) + totalDivPoints < totalDivPoints:
                revert with 0, 'SafeMath: addition overflow'
            totalDivPoints += 10^18 * tokensToBeDisbursedOrBurnt / totalTokens
        emit RewardsDisbursed(tokensToBeDisbursedOrBurnt);
    else:
        if MAGIC_NUMBER * ext_call.return_data[0] / ext_call.return_data[0] != MAGIC_NUMBER:
            revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if MAGIC_NUMBER * ext_call.return_data[0] / 10^18 >= tokensToBeDisbursedOrBurnt:
            if tokensToBeDisbursedOrBurnt <= 0:
                revert with 0, 'distributeDivs failed!'
            if totalTokens <= 0:
                revert with 0, 'distributeDivs failed!'
            if not tokensToBeDisbursedOrBurnt:
                if not totalTokens:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalTokens) + totalDivPoints < totalDivPoints:
                    revert with 0, 'SafeMath: addition overflow'
                totalDivPoints += 0 / totalTokens
            else:
                if 10^18 * tokensToBeDisbursedOrBurnt / tokensToBeDisbursedOrBurnt != 10^18:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not totalTokens:
                    revert with 0, 'SafeMath: division by zero'
                if (10^18 * tokensToBeDisbursedOrBurnt / totalTokens) + totalDivPoints < totalDivPoints:
                    revert with 0, 'SafeMath: addition overflow'
                totalDivPoints += 10^18 * tokensToBeDisbursedOrBurnt / totalTokens
            emit RewardsDisbursed(tokensToBeDisbursedOrBurnt);
        else:
            if MAGIC_NUMBER * ext_call.return_data[0] / 10^18 > tokensToBeDisbursedOrBurnt:
                revert with 0, 'SafeMath: subtraction overflow'
            if MAGIC_NUMBER * ext_call.return_data[0] / 10^18 <= 0:
                revert with 0, 'distributeDivs failed!'
            if totalTokens <= 0:
                revert with 0, 'distributeDivs failed!'
            if not MAGIC_NUMBER * ext_call.return_data[0] / 10^18:
                if not totalTokens:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalTokens) + totalDivPoints < totalDivPoints:
                    revert with 0, 'SafeMath: addition overflow'
                totalDivPoints += 0 / totalTokens
            else:
                if 10^18 * MAGIC_NUMBER * ext_call.return_data[0] / 10^18 / MAGIC_NUMBER * ext_call.return_data[0] / 10^18 != 10^18:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not totalTokens:
                    revert with 0, 'SafeMath: division by zero'
                if (10^18 * MAGIC_NUMBER * ext_call.return_data[0] / 10^18 / totalTokens) + totalDivPoints < totalDivPoints:
                    revert with 0, 'SafeMath: addition overflow'
                totalDivPoints += 10^18 * MAGIC_NUMBER * ext_call.return_data[0] / 10^18 / totalTokens
            emit RewardsDisbursed((MAGIC_NUMBER * ext_call.return_data[0] / 10^18));
            if tokensToBeDisbursedOrBurnt - (MAGIC_NUMBER * ext_call.return_data[0] / 10^18):
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                if not ext_code.size(0xbd100d061e120b2c67a24453cf6368e63f1be0):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, tokensToBeDisbursedOrBurnt - (MAGIC_NUMBER * ext_call.return_data[0] / 10^18)) >> 32
                mem[580 len 0] = 0
                call 0x00bd100d061e120b2c67a24453cf6368e63f1be0.0xdead with:
                     gas gas_remaining wei
                    args Mask(224, 32, tokensToBeDisbursedOrBurnt - (MAGIC_NUMBER * ext_call.return_data[0] / 10^18)) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
    tokensToBeDisbursedOrBurnt = 0
    lastBurnOrTokenDistributeTime = block.timestamp
}



}
