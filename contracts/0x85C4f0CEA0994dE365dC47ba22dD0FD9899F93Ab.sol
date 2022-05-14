contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2, uint256[] arg3, uint256 arg4)
#  - claimAs(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - claim(uint256 arg1, uint256 arg2, uint256 arg3)
#  - deposit(address arg1, uint256 arg2, uint256[] arg3, uint256 arg4)
#
const disbursePercentX100 = 10000

const trustedDepositTokenAddress = 0x66eecc97203704d9e2db4a431cb0e9ce92539d5a

const trustedRewardTokenAddress = 0xbd100d061e120b2c67a24453cf6368e63f1be0

const swapAttemptPeriod = (24 * 3600)

const trustedStakingContractAddress = 0xc2ba0abfc89a5a258e6440d82bb95a5e2b541581

const trustedPlatformTokenAddress = 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17

const disburseDuration = (8760 * 24 * 3600)

const trustedBaseTokenAddress = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const burnOrDisburseTokensPeriod = (168 * 24 * 3600)

const adminCanClaimAfter = (9480 * 24 * 3600)

const disburseAmount = 1680000 * 10^18

const EMERGENCY_WAIT_TIME = (72 * 24 * 3600)

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
array of address stor17;
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
    return stor17.length
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
    if block.timestamp + (72 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    adminClaimableTime = block.timestamp + (72 * 24 * 3600)
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
    if contractDeployTime + (8760 * 24 * 3600) < contractDeployTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= contractDeployTime + (8760 * 24 * 3600):
        if lastDisburseTime >= block.timestamp:
            return 0
        if lastDisburseTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if (16800000000 * 10^18 * block.timestamp) - (16800000000 * 10^18 * lastDisburseTime) / 16800000000 * 10^18 != block.timestamp - lastDisburseTime:
            revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((16800000000 * 10^18 * block.timestamp) - (16800000000 * 10^18 * lastDisburseTime) / 8760 * 24 * 3600 / 10000)
    if lastDisburseTime >= contractDeployTime + (8760 * 24 * 3600):
        return 0
    if lastDisburseTime > contractDeployTime + (8760 * 24 * 3600):
        revert with 0, 'SafeMath: subtraction overflow'
    if (16800000000 * 10^18 * contractDeployTime) + (-16800000000 * 10^18 * lastDisburseTime) + (40880000000 * 10^18 * 3600 * 24 * 3600) / 16800000000 * 10^18 != contractDeployTime + -lastDisburseTime + (8760 * 24 * 3600):
        revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((16800000000 * 10^18 * contractDeployTime) + (-16800000000 * 10^18 * lastDisburseTime) + (40880000000 * 10^18 * 3600 * 24 * 3600) / 8760 * 24 * 3600 / 10000)
}

function burnRewardTokens() payable {
    require msg.sender == owner
    if lastBurnOrTokenDistributeTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - lastBurnOrTokenDistributeTime <= 168 * 24 * 3600:
        revert with 0, 'Recently executed, Please wait!'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(0xbd100d061e120b2c67a24453cf6368e63f1be0):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), 0, 57005, Mask(224, 0, stor30.field_32)
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
    if block.timestamp - lastBurnOrTokenDistributeTime <= 168 * 24 * 3600:
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

function getDepositorsList(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < arg2
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg2 - arg1 <= test266151307()
    mem[160] = arg2 - arg1
    if not arg2 - arg1:
        require arg2 - arg1 <= test266151307()
        mem[(32 * arg2 - arg1) + 192] = arg2 - arg1
        if not arg2 - arg1:
            require arg2 - arg1 <= test266151307()
            mem[(64 * arg2 - arg1) + 224] = arg2 - arg1
            if not arg2 - arg1:
                require arg2 - arg1 <= test266151307()
                mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
                mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
                if not arg2 - arg1:
                    idx = arg1
                    while idx < arg2:
                        if idx >= stor17.length:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        mem[0] = 17
                        _812 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_812] = 30
                        mem[_812 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > idx:
                            _860 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _860 + 68] = mem[idx + _812 + 32]
                                idx = idx + 32
                                continue 
                            mem[_860 + 68] = mem[_860 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _860 + -mem[64] + 100
                        require idx - arg1 < mem[160]
                        mem[(32 * idx - arg1) + 192] = stor17[idx]
                        require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                        mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                        require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                        mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                        mem[0] = stor17[idx]
                        mem[32] = 19
                        require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                        mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                        if idx + 1 < idx:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _569 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[160]
                    _571 = mem[160]
                    mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
                    mem[mem[64] + 32] = (32 * mem[160]) + 160
                    mem[(32 * _571) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
                    _1117 = mem[(32 * arg2 - arg1) + 192]
                    mem[(32 * _571) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
                    mem[mem[64] + 64] = (32 * _1117) + (32 * _571) + 192
                    mem[(32 * _1117) + (32 * _571) + _569 + 192] = mem[(64 * arg2 - arg1) + 224]
                    _1357 = mem[(64 * arg2 - arg1) + 224]
                    mem[(32 * _1117) + (32 * _571) + _569 + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
                    mem[_569 + 96] = (32 * _1357) + (32 * _1117) + (32 * _571) + 224
                    mem[(32 * _1357) + (32 * _1117) + (32 * _571) + _569 + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
                    _1485 = mem[(98 * arg2) + (-98 * arg1) + 256]
                    mem[(32 * _1357) + (32 * _1117) + (32 * _571) + _569 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
                    return memory
                      from mem[64]
                       len (32 * _1485) + (32 * _1357) + (32 * _1117) + (32 * _571) + _569 + -mem[64] + 256
                mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                idx = arg1
                while idx < arg2:
                    if idx >= stor17.length:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = 17
                    _813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_813] = 30
                    mem[_813 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > idx:
                        _863 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _863 + 68] = mem[idx + _813 + 32]
                            idx = idx + 32
                            continue 
                        mem[_863 + 68] = mem[_863 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _863 + -mem[64] + 100
                    require idx - arg1 < mem[160]
                    mem[(32 * idx - arg1) + 192] = stor17[idx]
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                    mem[0] = stor17[idx]
                    mem[32] = 19
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[160]
                _574 = mem[160]
                mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
                mem[mem[64] + 32] = (32 * mem[160]) + 160
                mem[(32 * _574) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
                _1121 = mem[(32 * arg2 - arg1) + 192]
                mem[(32 * _574) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
                mem[mem[64] + 64] = (32 * _1121) + (32 * _574) + 192
                mem[(32 * _1121) + (32 * _574) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
                _1360 = mem[(64 * arg2 - arg1) + 224]
                mem[(32 * _1121) + (32 * _574) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
                mem[mem[64] + 96] = (32 * _1360) + (32 * _1121) + (32 * _574) + 224
                mem[(32 * _1360) + (32 * _1121) + (32 * _574) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
                _1488 = mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * _1360) + (32 * _1121) + (32 * _574) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
                return 128, 
                       mem[mem[64] + 32],
                       (32 * _1121) + (32 * _574) + 192,
                       (32 * _1360) + (32 * _1121) + (32 * _574) + 224,
                       mem[mem[64] + 128 len (32 * _1488) + (32 * _1360) + (32 * _1121) + (32 * _574) + 128]
            mem[(64 * arg2 - arg1) + 256 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            require arg2 - arg1 <= test266151307()
            mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
            mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
            if not arg2 - arg1:
                idx = arg1
                while idx < arg2:
                    if idx >= stor17.length:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = 17
                    _814 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_814] = 30
                    mem[_814 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > idx:
                        _866 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _866 + 68] = mem[idx + _814 + 32]
                            idx = idx + 32
                            continue 
                        mem[_866 + 68] = mem[_866 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _866 + -mem[64] + 100
                    require idx - arg1 < mem[160]
                    mem[(32 * idx - arg1) + 192] = stor17[idx]
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                    mem[0] = stor17[idx]
                    mem[32] = 19
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[160]
                _577 = mem[160]
                mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
                mem[mem[64] + 32] = (32 * mem[160]) + 160
                mem[(32 * _577) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
                _1125 = mem[(32 * arg2 - arg1) + 192]
                mem[(32 * _577) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
                mem[mem[64] + 64] = (32 * _1125) + (32 * _577) + 192
                mem[(32 * _1125) + (32 * _577) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
                _1363 = mem[(64 * arg2 - arg1) + 224]
                mem[(32 * _1125) + (32 * _577) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
                mem[mem[64] + 96] = (32 * _1363) + (32 * _1125) + (32 * _577) + 224
                mem[(32 * _1363) + (32 * _1125) + (32 * _577) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
                _1491 = mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * _1363) + (32 * _1125) + (32 * _577) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
                return 128, 
                       mem[mem[64] + 32],
                       (32 * _1125) + (32 * _577) + 192,
                       (32 * _1363) + (32 * _1125) + (32 * _577) + 224,
                       mem[mem[64] + 128 len (32 * _1491) + (32 * _1363) + (32 * _1125) + (32 * _577) + 128]
            mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            idx = arg1
            while idx < arg2:
                if idx >= stor17.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                mem[0] = 17
                _815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_815] = 30
                mem[_815 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > idx:
                    _869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _869 + 68] = mem[idx + _815 + 32]
                        idx = idx + 32
                        continue 
                    mem[_869 + 68] = mem[_869 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _869 + -mem[64] + 100
                require idx - arg1 < mem[160]
                mem[(32 * idx - arg1) + 192] = stor17[idx]
                require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                mem[0] = stor17[idx]
                mem[32] = 19
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _578 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[160]
            _580 = mem[160]
            mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[mem[64] + 32] = (32 * mem[160]) + 160
            mem[(32 * _580) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
            _1129 = mem[(32 * arg2 - arg1) + 192]
            mem[(32 * _580) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
            mem[mem[64] + 64] = (32 * _1129) + (32 * _580) + 192
            mem[(32 * _1129) + (32 * _580) + _578 + 192] = mem[(64 * arg2 - arg1) + 224]
            _1366 = mem[(64 * arg2 - arg1) + 224]
            mem[(32 * _1129) + (32 * _580) + _578 + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
            mem[_578 + 96] = (32 * _1366) + (32 * _1129) + (32 * _580) + 224
            mem[(32 * _1366) + (32 * _1129) + (32 * _580) + _578 + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
            _1494 = mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * _1366) + (32 * _1129) + (32 * _580) + _578 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
            return memory
              from mem[64]
               len (32 * _1494) + (32 * _1366) + (32 * _1129) + (32 * _580) + _578 + -mem[64] + 256
        mem[(32 * arg2 - arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        require arg2 - arg1 <= test266151307()
        mem[(64 * arg2 - arg1) + 224] = arg2 - arg1
        if not arg2 - arg1:
            require arg2 - arg1 <= test266151307()
            mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
            mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
            if not arg2 - arg1:
                idx = arg1
                while idx < arg2:
                    if idx >= stor17.length:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = 17
                    _816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_816] = 30
                    mem[_816 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > idx:
                        _872 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _872 + 68] = mem[idx + _816 + 32]
                            idx = idx + 32
                            continue 
                        mem[_872 + 68] = mem[_872 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _872 + -mem[64] + 100
                    require idx - arg1 < mem[160]
                    mem[(32 * idx - arg1) + 192] = stor17[idx]
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                    mem[0] = stor17[idx]
                    mem[32] = 19
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _581 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[160]
                _583 = mem[160]
                mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
                mem[mem[64] + 32] = (32 * mem[160]) + 160
                mem[(32 * _583) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
                _1133 = mem[(32 * arg2 - arg1) + 192]
                mem[(32 * _583) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
                mem[mem[64] + 64] = (32 * _1133) + (32 * _583) + 192
                mem[(32 * _1133) + (32 * _583) + _581 + 192] = mem[(64 * arg2 - arg1) + 224]
                _1369 = mem[(64 * arg2 - arg1) + 224]
                mem[(32 * _1133) + (32 * _583) + _581 + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
                mem[_581 + 96] = (32 * _1369) + (32 * _1133) + (32 * _583) + 224
                mem[(32 * _1369) + (32 * _1133) + (32 * _583) + _581 + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
                _1497 = mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * _1369) + (32 * _1133) + (32 * _583) + _581 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
                return memory
                  from mem[64]
                   len (32 * _1497) + (32 * _1369) + (32 * _1133) + (32 * _583) + _581 + -mem[64] + 256
            mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            idx = arg1
            while idx < arg2:
                if idx >= stor17.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                mem[0] = 17
                _817 = mem[64]
                mem[64] = mem[64] + 64
                mem[_817] = 30
                mem[_817 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > idx:
                    _875 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _875 + 68] = mem[idx + _817 + 32]
                        idx = idx + 32
                        continue 
                    mem[_875 + 68] = mem[_875 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _875 + -mem[64] + 100
                require idx - arg1 < mem[160]
                mem[(32 * idx - arg1) + 192] = stor17[idx]
                require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                mem[0] = stor17[idx]
                mem[32] = 19
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _584 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[160]
            _586 = mem[160]
            mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[mem[64] + 32] = (32 * mem[160]) + 160
            mem[(32 * _586) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
            _1137 = mem[(32 * arg2 - arg1) + 192]
            mem[(32 * _586) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
            mem[mem[64] + 64] = (32 * _1137) + (32 * _586) + 192
            mem[(32 * _1137) + (32 * _586) + _584 + 192] = mem[(64 * arg2 - arg1) + 224]
            _1372 = mem[(64 * arg2 - arg1) + 224]
            mem[(32 * _1137) + (32 * _586) + _584 + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
            mem[_584 + 96] = (32 * _1372) + (32 * _1137) + (32 * _586) + 224
            mem[(32 * _1372) + (32 * _1137) + (32 * _586) + _584 + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
            _1500 = mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * _1372) + (32 * _1137) + (32 * _586) + _584 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
            return memory
              from mem[64]
               len (32 * _1500) + (32 * _1372) + (32 * _1137) + (32 * _586) + _584 + -mem[64] + 256
        mem[(64 * arg2 - arg1) + 256 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        require arg2 - arg1 <= test266151307()
        mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
        mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
        if not arg2 - arg1:
            idx = arg1
            while idx < arg2:
                if idx >= stor17.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                mem[0] = 17
                _818 = mem[64]
                mem[64] = mem[64] + 64
                mem[_818] = 30
                mem[_818 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > idx:
                    _878 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _878 + 68] = mem[idx + _818 + 32]
                        idx = idx + 32
                        continue 
                    mem[_878 + 68] = mem[_878 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _878 + -mem[64] + 100
                require idx - arg1 < mem[160]
                mem[(32 * idx - arg1) + 192] = stor17[idx]
                require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                mem[0] = stor17[idx]
                mem[32] = 19
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            _587 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[160]
            _589 = mem[160]
            mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[mem[64] + 32] = (32 * mem[160]) + 160
            mem[(32 * _589) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
            _1141 = mem[(32 * arg2 - arg1) + 192]
            mem[(32 * _589) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
            mem[mem[64] + 64] = (32 * _1141) + (32 * _589) + 192
            mem[(32 * _1141) + (32 * _589) + _587 + 192] = mem[(64 * arg2 - arg1) + 224]
            _1375 = mem[(64 * arg2 - arg1) + 224]
            mem[(32 * _1141) + (32 * _589) + _587 + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
            mem[_587 + 96] = (32 * _1375) + (32 * _1141) + (32 * _589) + 224
            mem[(32 * _1375) + (32 * _1141) + (32 * _589) + _587 + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
            _1503 = mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * _1375) + (32 * _1141) + (32 * _589) + _587 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
            return memory
              from mem[64]
               len (32 * _1503) + (32 * _1375) + (32 * _1141) + (32 * _589) + _587 + -mem[64] + 256
        mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        idx = arg1
        while idx < arg2:
            if idx >= stor17.length:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            mem[0] = 17
            _819 = mem[64]
            mem[64] = mem[64] + 64
            mem[_819] = 30
            mem[_819 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > idx:
                _881 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _881 + 68] = mem[idx + _819 + 32]
                    idx = idx + 32
                    continue 
                mem[_881 + 68] = mem[_881 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _881 + -mem[64] + 100
            require idx - arg1 < mem[160]
            mem[(32 * idx - arg1) + 192] = stor17[idx]
            require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
            mem[0] = stor17[idx]
            mem[32] = 19
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
            if idx + 1 < idx:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[160]
        _592 = mem[160]
        mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[mem[64] + 32] = (32 * mem[160]) + 160
        mem[(32 * _592) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
        _1145 = mem[(32 * arg2 - arg1) + 192]
        mem[(32 * _592) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
        mem[mem[64] + 64] = (32 * _1145) + (32 * _592) + 192
        mem[(32 * _1145) + (32 * _592) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
        _1378 = mem[(64 * arg2 - arg1) + 224]
        mem[(32 * _1145) + (32 * _592) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
        mem[mem[64] + 96] = (32 * _1378) + (32 * _1145) + (32 * _592) + 224
        mem[(32 * _1378) + (32 * _1145) + (32 * _592) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
        _1506 = mem[(98 * arg2) + (-98 * arg1) + 256]
        mem[(32 * _1378) + (32 * _1145) + (32 * _592) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
        return 128, 
               mem[mem[64] + 32],
               (32 * _1145) + (32 * _592) + 192,
               (32 * _1378) + (32 * _1145) + (32 * _592) + 224,
               mem[mem[64] + 128 len (32 * _1506) + (32 * _1378) + (32 * _1145) + (32 * _592) + 128]
    mem[192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    require arg2 - arg1 <= test266151307()
    mem[(32 * arg2 - arg1) + 192] = arg2 - arg1
    if not arg2 - arg1:
        require arg2 - arg1 <= test266151307()
        mem[(64 * arg2 - arg1) + 224] = arg2 - arg1
        if not arg2 - arg1:
            require arg2 - arg1 <= test266151307()
            mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
            mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
            if not arg2 - arg1:
                idx = arg1
                while idx < arg2:
                    if idx >= stor17.length:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    mem[0] = 17
                    _820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_820] = 30
                    mem[_820 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > idx:
                        _884 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _884 + 68] = mem[idx + _820 + 32]
                            idx = idx + 32
                            continue 
                        mem[_884 + 68] = mem[_884 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _884 + -mem[64] + 100
                    require idx - arg1 < mem[160]
                    mem[(32 * idx - arg1) + 192] = stor17[idx]
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                    mem[0] = stor17[idx]
                    mem[32] = 19
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                    if idx + 1 < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[160]
                _595 = mem[160]
                mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
                mem[mem[64] + 32] = (32 * mem[160]) + 160
                mem[(32 * _595) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
                _1149 = mem[(32 * arg2 - arg1) + 192]
                mem[(32 * _595) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
                mem[mem[64] + 64] = (32 * _1149) + (32 * _595) + 192
                mem[(32 * _1149) + (32 * _595) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
                _1381 = mem[(64 * arg2 - arg1) + 224]
                mem[(32 * _1149) + (32 * _595) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
                mem[mem[64] + 96] = (32 * _1381) + (32 * _1149) + (32 * _595) + 224
                mem[(32 * _1381) + (32 * _1149) + (32 * _595) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
                _1509 = mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * _1381) + (32 * _1149) + (32 * _595) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
                return 128, 
                       mem[mem[64] + 32],
                       (32 * _1149) + (32 * _595) + 192,
                       (32 * _1381) + (32 * _1149) + (32 * _595) + 224,
                       mem[mem[64] + 128 len (32 * _1509) + (32 * _1381) + (32 * _1149) + (32 * _595) + 128]
            mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            idx = arg1
            while idx < arg2:
                if idx >= stor17.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                mem[0] = 17
                _821 = mem[64]
                mem[64] = mem[64] + 64
                mem[_821] = 30
                mem[_821 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > idx:
                    _887 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _887 + 68] = mem[idx + _821 + 32]
                        idx = idx + 32
                        continue 
                    mem[_887 + 68] = mem[_887 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _887 + -mem[64] + 100
                require idx - arg1 < mem[160]
                mem[(32 * idx - arg1) + 192] = stor17[idx]
                require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                mem[0] = stor17[idx]
                mem[32] = 19
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[160]
            _598 = mem[160]
            mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[mem[64] + 32] = (32 * mem[160]) + 160
            mem[(32 * _598) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
            _1153 = mem[(32 * arg2 - arg1) + 192]
            mem[(32 * _598) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
            mem[mem[64] + 64] = (32 * _1153) + (32 * _598) + 192
            mem[(32 * _1153) + (32 * _598) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
            _1384 = mem[(64 * arg2 - arg1) + 224]
            mem[(32 * _1153) + (32 * _598) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
            mem[mem[64] + 96] = (32 * _1384) + (32 * _1153) + (32 * _598) + 224
            mem[(32 * _1384) + (32 * _1153) + (32 * _598) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
            _1512 = mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * _1384) + (32 * _1153) + (32 * _598) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
            return 128, 
                   mem[mem[64] + 32],
                   (32 * _1153) + (32 * _598) + 192,
                   (32 * _1384) + (32 * _1153) + (32 * _598) + 224,
                   mem[mem[64] + 128 len (32 * _1512) + (32 * _1384) + (32 * _1153) + (32 * _598) + 128]
        mem[(64 * arg2 - arg1) + 256 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        require arg2 - arg1 <= test266151307()
        mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
        mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
        if not arg2 - arg1:
            idx = arg1
            while idx < arg2:
                if idx >= stor17.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                mem[0] = 17
                _822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_822] = 30
                mem[_822 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > idx:
                    _890 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _890 + 68] = mem[idx + _822 + 32]
                        idx = idx + 32
                        continue 
                    mem[_890 + 68] = mem[_890 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _890 + -mem[64] + 100
                require idx - arg1 < mem[160]
                mem[(32 * idx - arg1) + 192] = stor17[idx]
                require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                mem[0] = stor17[idx]
                mem[32] = 19
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[160]
            _601 = mem[160]
            mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[mem[64] + 32] = (32 * mem[160]) + 160
            mem[(32 * _601) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
            _1157 = mem[(32 * arg2 - arg1) + 192]
            mem[(32 * _601) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
            mem[mem[64] + 64] = (32 * _1157) + (32 * _601) + 192
            mem[(32 * _1157) + (32 * _601) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
            _1387 = mem[(64 * arg2 - arg1) + 224]
            mem[(32 * _1157) + (32 * _601) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
            mem[mem[64] + 96] = (32 * _1387) + (32 * _1157) + (32 * _601) + 224
            mem[(32 * _1387) + (32 * _1157) + (32 * _601) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
            _1515 = mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * _1387) + (32 * _1157) + (32 * _601) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
            return 128, 
                   mem[mem[64] + 32],
                   (32 * _1157) + (32 * _601) + 192,
                   (32 * _1387) + (32 * _1157) + (32 * _601) + 224,
                   mem[mem[64] + 128 len (32 * _1515) + (32 * _1387) + (32 * _1157) + (32 * _601) + 128]
        mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        idx = arg1
        while idx < arg2:
            if idx >= stor17.length:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            mem[0] = 17
            _823 = mem[64]
            mem[64] = mem[64] + 64
            mem[_823] = 30
            mem[_823 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > idx:
                _893 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _893 + 68] = mem[idx + _823 + 32]
                    idx = idx + 32
                    continue 
                mem[_893 + 68] = mem[_893 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _893 + -mem[64] + 100
            require idx - arg1 < mem[160]
            mem[(32 * idx - arg1) + 192] = stor17[idx]
            require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
            mem[0] = stor17[idx]
            mem[32] = 19
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
            if idx + 1 < idx:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[160]
        _604 = mem[160]
        mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[mem[64] + 32] = (32 * mem[160]) + 160
        mem[(32 * _604) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
        _1161 = mem[(32 * arg2 - arg1) + 192]
        mem[(32 * _604) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
        mem[mem[64] + 64] = (32 * _1161) + (32 * _604) + 192
        mem[(32 * _1161) + (32 * _604) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
        _1390 = mem[(64 * arg2 - arg1) + 224]
        mem[(32 * _1161) + (32 * _604) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
        mem[mem[64] + 96] = (32 * _1390) + (32 * _1161) + (32 * _604) + 224
        mem[(32 * _1390) + (32 * _1161) + (32 * _604) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
        _1518 = mem[(98 * arg2) + (-98 * arg1) + 256]
        mem[(32 * _1390) + (32 * _1161) + (32 * _604) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
        return 128, 
               mem[mem[64] + 32],
               (32 * _1161) + (32 * _604) + 192,
               (32 * _1390) + (32 * _1161) + (32 * _604) + 224,
               mem[mem[64] + 128 len (32 * _1518) + (32 * _1390) + (32 * _1161) + (32 * _604) + 128]
    mem[(32 * arg2 - arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    require arg2 - arg1 <= test266151307()
    mem[(64 * arg2 - arg1) + 224] = arg2 - arg1
    if not arg2 - arg1:
        require arg2 - arg1 <= test266151307()
        mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
        mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
        if not arg2 - arg1:
            idx = arg1
            while idx < arg2:
                if idx >= stor17.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                mem[0] = 17
                _824 = mem[64]
                mem[64] = mem[64] + 64
                mem[_824] = 30
                mem[_824 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > idx:
                    _896 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _896 + 68] = mem[idx + _824 + 32]
                        idx = idx + 32
                        continue 
                    mem[_896 + 68] = mem[_896 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _896 + -mem[64] + 100
                require idx - arg1 < mem[160]
                mem[(32 * idx - arg1) + 192] = stor17[idx]
                require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
                mem[0] = stor17[idx]
                mem[32] = 19
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
                if idx + 1 < idx:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[160]
            _607 = mem[160]
            mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[mem[64] + 32] = (32 * mem[160]) + 160
            mem[(32 * _607) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
            _1165 = mem[(32 * arg2 - arg1) + 192]
            mem[(32 * _607) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
            mem[mem[64] + 64] = (32 * _1165) + (32 * _607) + 192
            mem[(32 * _1165) + (32 * _607) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
            _1393 = mem[(64 * arg2 - arg1) + 224]
            mem[(32 * _1165) + (32 * _607) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
            mem[mem[64] + 96] = (32 * _1393) + (32 * _1165) + (32 * _607) + 224
            mem[(32 * _1393) + (32 * _1165) + (32 * _607) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
            _1521 = mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * _1393) + (32 * _1165) + (32 * _607) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
            return 128, 
                   mem[mem[64] + 32],
                   (32 * _1165) + (32 * _607) + 192,
                   (32 * _1393) + (32 * _1165) + (32 * _607) + 224,
                   mem[mem[64] + 128 len (32 * _1521) + (32 * _1393) + (32 * _1165) + (32 * _607) + 128]
        mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        idx = arg1
        while idx < arg2:
            if idx >= stor17.length:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            mem[0] = 17
            _825 = mem[64]
            mem[64] = mem[64] + 64
            mem[_825] = 30
            mem[_825 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > idx:
                _899 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _899 + 68] = mem[idx + _825 + 32]
                    idx = idx + 32
                    continue 
                mem[_899 + 68] = mem[_899 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _899 + -mem[64] + 100
            require idx - arg1 < mem[160]
            mem[(32 * idx - arg1) + 192] = stor17[idx]
            require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
            mem[0] = stor17[idx]
            mem[32] = 19
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
            if idx + 1 < idx:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _608 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[160]
        _610 = mem[160]
        mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[mem[64] + 32] = (32 * mem[160]) + 160
        mem[(32 * _610) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
        _1169 = mem[(32 * arg2 - arg1) + 192]
        mem[(32 * _610) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
        mem[mem[64] + 64] = (32 * _1169) + (32 * _610) + 192
        mem[(32 * _1169) + (32 * _610) + _608 + 192] = mem[(64 * arg2 - arg1) + 224]
        _1396 = mem[(64 * arg2 - arg1) + 224]
        mem[(32 * _1169) + (32 * _610) + _608 + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
        mem[_608 + 96] = (32 * _1396) + (32 * _1169) + (32 * _610) + 224
        mem[(32 * _1396) + (32 * _1169) + (32 * _610) + _608 + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
        _1524 = mem[(98 * arg2) + (-98 * arg1) + 256]
        mem[(32 * _1396) + (32 * _1169) + (32 * _610) + _608 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
        return memory
          from mem[64]
           len (32 * _1524) + (32 * _1396) + (32 * _1169) + (32 * _610) + _608 + -mem[64] + 256
    mem[(64 * arg2 - arg1) + 256 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    require arg2 - arg1 <= test266151307()
    mem[(98 * arg2) + (-98 * arg1) + 256] = arg2 - arg1
    mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 288
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            if idx >= stor17.length:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            mem[0] = 17
            _826 = mem[64]
            mem[64] = mem[64] + 64
            mem[_826] = 30
            mem[_826 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > idx:
                _902 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _902 + 68] = mem[idx + _826 + 32]
                    idx = idx + 32
                    continue 
                mem[_902 + 68] = mem[_902 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _902 + -mem[64] + 100
            require idx - arg1 < mem[160]
            mem[(32 * idx - arg1) + 192] = stor17[idx]
            require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
            mem[0] = stor17[idx]
            mem[32] = 19
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
            if idx + 1 < idx:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        _611 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[160]
        _613 = mem[160]
        mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[mem[64] + 32] = (32 * mem[160]) + 160
        mem[(32 * _613) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
        _1173 = mem[(32 * arg2 - arg1) + 192]
        mem[(32 * _613) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
        mem[mem[64] + 64] = (32 * _1173) + (32 * _613) + 192
        mem[(32 * _1173) + (32 * _613) + _611 + 192] = mem[(64 * arg2 - arg1) + 224]
        _1399 = mem[(64 * arg2 - arg1) + 224]
        mem[(32 * _1173) + (32 * _613) + _611 + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
        mem[_611 + 96] = (32 * _1399) + (32 * _1173) + (32 * _613) + 224
        mem[(32 * _1399) + (32 * _1173) + (32 * _613) + _611 + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
        _1527 = mem[(98 * arg2) + (-98 * arg1) + 256]
        mem[(32 * _1399) + (32 * _1173) + (32 * _613) + _611 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
        return memory
          from mem[64]
           len (32 * _1527) + (32 * _1399) + (32 * _1173) + (32 * _613) + _611 + -mem[64] + 256
    mem[(98 * arg2) + (-98 * arg1) + 288 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        if idx >= stor17.length:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
        mem[0] = 17
        _827 = mem[64]
        mem[64] = mem[64] + 64
        mem[_827] = 30
        mem[_827 + 32] = 'SafeMath: subtraction overflow'
        if arg1 > idx:
            _905 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _905 + 68] = mem[idx + _827 + 32]
                idx = idx + 32
                continue 
            mem[_905 + 68] = mem[_905 + 70 len 30]
            revert with memory
              from mem[64]
               len _905 + -mem[64] + 100
        require idx - arg1 < mem[160]
        mem[(32 * idx - arg1) + 192] = stor17[idx]
        require idx - arg1 < mem[(32 * arg2 - arg1) + 192]
        mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 224] = depositTime[stor17[idx]]
        require idx - arg1 < mem[(64 * arg2 - arg1) + 224]
        mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 256] = lastClaimedTime[stor17[idx]]
        mem[0] = stor17[idx]
        mem[32] = 19
        require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 256]
        mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 288] = depositedTokens[stor17[idx]]
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[160]
    _616 = mem[160]
    mem[mem[64] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    mem[mem[64] + 32] = (32 * mem[160]) + 160
    mem[(32 * _616) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 192]
    _1177 = mem[(32 * arg2 - arg1) + 192]
    mem[(32 * _616) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 192])] = mem[(32 * arg2 - arg1) + 224 len floor32(mem[(32 * arg2 - arg1) + 192])]
    mem[mem[64] + 64] = (32 * _1177) + (32 * _616) + 192
    mem[(32 * _1177) + (32 * _616) + mem[64] + 192] = mem[(64 * arg2 - arg1) + 224]
    _1402 = mem[(64 * arg2 - arg1) + 224]
    mem[(32 * _1177) + (32 * _616) + mem[64] + 224 len floor32(mem[(64 * arg2 - arg1) + 224])] = mem[(64 * arg2 - arg1) + 256 len floor32(mem[(64 * arg2 - arg1) + 224])]
    mem[mem[64] + 96] = (32 * _1402) + (32 * _1177) + (32 * _616) + 224
    mem[(32 * _1402) + (32 * _1177) + (32 * _616) + mem[64] + 224] = mem[(98 * arg2) + (-98 * arg1) + 256]
    _1530 = mem[(98 * arg2) + (-98 * arg1) + 256]
    mem[(32 * _1402) + (32 * _1177) + (32 * _616) + mem[64] + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])] = mem[(98 * arg2) + (-98 * arg1) + 288 len floor32(mem[(98 * arg2) + (-98 * arg1) + 256])]
    return 128, 
           mem[mem[64] + 32],
           (32 * _1177) + (32 * _616) + 192,
           (32 * _1402) + (32 * _1177) + (32 * _616) + 224,
           mem[mem[64] + 128 len (32 * _1530) + (32 * _1402) + (32 * _1177) + (32 * _616) + 128]
}



}
