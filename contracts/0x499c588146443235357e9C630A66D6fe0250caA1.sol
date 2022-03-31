contract main {




// =====================  Runtime code  =====================


#
#  - getDepositorsList(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1)
#  - claim()
#  - claimAs(address arg1)
#  - deposit(uint256 arg1)
#
const disbursePercentX100 = 10000

const cliffTime = (72 * 24 * 3600)

const trustedDepositTokenAddress = 0x497070e8b6c55fd283d8b259a6971261e2021c01

const trustedRewardTokenAddress = 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17

const swapAttemptPeriod = (24 * 3600)

const disburseDuration = (4320 * 24 * 3600)

const burnOrDisburseTokensPeriod = (168 * 24 * 3600)

const adminCanClaimAfter = (5040 * 24 * 3600)

const disburseAmount = (50 * 10^18 * 3600)

const MAGIC_NUMBER = 6289308176100628

const SLIPPAGE_TOLERANCE_X_100 = 300

const BURN_ADDRESS = 57005


address owner;
mapping of uint8 stor1;
uint256 contractDeployTime;
uint256 adminClaimableTime;
uint256 lastDisburseTime;
uint256 lastSwapExecutionTime;
uint256 lastBurnOrTokenDistributeTime;
address uniswapRouterV2Address;
address uniswapV2PairAddress;
array of address sWAP_PATH;
uint256 totalClaimedRewards;
uint256 totalClaimedRewardsEth;
array of uint256 stor12;
mapping of uint256 stor13;
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
uint256 tokensToBeDisbursedOrBurnt;
uint256 tokensToBeSwapped;

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
    return bool(stor1[arg1])
}

function getNumberOfHolders() payable {
    return stor12.length
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

function lastClaimedTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaimedTime[arg1]
}

function _fallback() payable {
    revert
}

function addTrustedClaimableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 1
    emit ClaimableTokenAdded(arg1);
}

function removeTrustedClaimableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 0
    emit ClaimableTokenRemoved(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addContractBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17)
    call 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Cannot add balance!'
    require contractBalance + arg1 >= contractBalance
    contractBalance += arg1
}

function getMaxSwappableAmount() payable {
    require ext_code.size(0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17)
    staticcall 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17.0x70a08231 with:
            gas gas_remaining wei
           args 0x497070e8b6c55fd283d8b259a6971261e2021c01
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return (6289308176100628 * ext_call.return_data[0] / 10^18)
    require ext_call.return_data[0]
    require 6289308176100628 * ext_call.return_data[0] / ext_call.return_data[0] == 6289308176100628
    return (6289308176100628 * ext_call.return_data[0] / 10^18)
}

function burnRewardTokens() payable {
    require msg.sender == owner
    require lastBurnOrTokenDistributeTime <= block.timestamp
    if block.timestamp - lastBurnOrTokenDistributeTime <= 168 * 24 * 3600:
        revert with 0, 'Recently executed, Please wait!'
    require ext_code.size(0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17)
    call 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17.0xa9059cbb with:
         gas gas_remaining wei
        args 57005, tokensToBeDisbursedOrBurnt
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'burnRewardTokens failed!'
    tokensToBeDisbursedOrBurnt = 0
    lastBurnOrTokenDistributeTime = block.timestamp
}

function getPendingDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor13[address(arg1)]:
        return 0
    if not depositedTokens[address(arg1)]:
        return 0
    require lastDivPoints[address(arg1)] <= totalDivPoints
    if not depositedTokens[address(arg1)]:
        return ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / 10^18)
    require depositedTokens[address(arg1)]
    require (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / depositedTokens[address(arg1)] == totalDivPoints - lastDivPoints[address(arg1)]
    return ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / 10^18)
}

function getPendingDivsEth(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor13[address(arg1)]:
        return 0
    if not depositedTokens[address(arg1)]:
        return 0
    require lastEthDivPoints[address(arg1)] <= totalEthDivPoints
    if not depositedTokens[address(arg1)]:
        return ((totalEthDivPoints * depositedTokens[address(arg1)]) - (lastEthDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / 10^18)
    require depositedTokens[address(arg1)]
    require (totalEthDivPoints * depositedTokens[address(arg1)]) - (lastEthDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / depositedTokens[address(arg1)] == totalEthDivPoints - lastEthDivPoints[address(arg1)]
    return ((totalEthDivPoints * depositedTokens[address(arg1)]) - (lastEthDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / 10^18)
}

function getPendingDisbursement() payable {
    require contractDeployTime + (4320 * 24 * 3600) >= contractDeployTime
    if block.timestamp <= contractDeployTime + (4320 * 24 * 3600):
        if lastDisburseTime >= block.timestamp:
            return 0
        if lastDisburseTime <= block.timestamp:
            if (500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 500000 * 10^18 * 3600 == block.timestamp - lastDisburseTime:
                return ((500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 4320 * 24 * 3600 / 10000)
    else:
        if lastDisburseTime >= contractDeployTime + (4320 * 24 * 3600):
            return 0
        if lastDisburseTime <= contractDeployTime + (4320 * 24 * 3600):
            if (500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 500000 * 10^18 * 3600 == contractDeployTime + -lastDisburseTime + (4320 * 24 * 3600):
                return ((500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 / 10000)
    revert
}

function transferAnyOldERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 == 0x497070e8b6c55fd283d8b259a6971261e2021c01:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x2e41646d696e2063616e6e6f74207472616e73666572206f7574206465706f73697420746f6b656e732066726f6d2074686973207661756c74,
                    mem[221 len 7]
    if arg1 == 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17:
        if block.timestamp <= adminClaimableTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        52,
                        0x7341646d696e2063616e6e6f74205472616e73666572206f75742052657761726420546f6b656e73206f72205745544820596574,
                        mem[216 len 12]
    else:
        require ext_code.size(uniswapRouterV2Address)
        staticcall uniswapRouterV2Address.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == ext_call.return_data[12 len 20]:
            if block.timestamp <= adminClaimableTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            52,
                            0x7341646d696e2063616e6e6f74205472616e73666572206f75742052657761726420546f6b656e73206f72205745544820596574,
                            mem[216 len 12]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 == 0x497070e8b6c55fd283d8b259a6971261e2021c01:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x2e41646d696e2063616e6e6f74207472616e73666572206f7574206465706f73697420746f6b656e732066726f6d2074686973207661756c74,
                    mem[221 len 7]
    if arg1 == 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17:
        if block.timestamp <= adminClaimableTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        52,
                        0x7341646d696e2063616e6e6f74205472616e73666572206f75742052657761726420546f6b656e73206f72205745544820596574,
                        mem[216 len 12]
    else:
        require ext_code.size(uniswapRouterV2Address)
        staticcall uniswapRouterV2Address.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == ext_call.return_data[12 len 20]:
            if block.timestamp <= adminClaimableTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            52,
                            0x7341646d696e2063616e6e6f74205472616e73666572206f75742052657761726420546f6b656e73206f72205745544820596574,
                            mem[216 len 12]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer out tokens!'
}

function disburseRewardTokens() payable {
    require msg.sender == owner
    require lastBurnOrTokenDistributeTime <= block.timestamp
    if block.timestamp - lastBurnOrTokenDistributeTime <= 168 * 24 * 3600:
        revert with 0, 'Recently executed, Please wait!'
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17)
    staticcall 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17.0x70a08231 with:
            gas gas_remaining wei
           args 0x497070e8b6c55fd283d8b259a6971261e2021c01
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 6289308176100628 * ext_call.return_data[0] / ext_call.return_data[0] == 6289308176100628
    if 6289308176100628 * ext_call.return_data[0] / 10^18 >= tokensToBeDisbursedOrBurnt:
        if tokensToBeDisbursedOrBurnt <= 0:
            revert with 0, 'distributeDivs failed!'
        if totalTokens <= 0:
            revert with 0, 'distributeDivs failed!'
        if tokensToBeDisbursedOrBurnt:
            require tokensToBeDisbursedOrBurnt
            require 10^18 * tokensToBeDisbursedOrBurnt / tokensToBeDisbursedOrBurnt == 10^18
        require totalTokens
        require totalDivPoints + (10^18 * tokensToBeDisbursedOrBurnt / totalTokens) >= totalDivPoints
        totalDivPoints += 10^18 * tokensToBeDisbursedOrBurnt / totalTokens
        emit RewardsDisbursed(tokensToBeDisbursedOrBurnt);
    else:
        require 6289308176100628 * ext_call.return_data[0] / 10^18 <= tokensToBeDisbursedOrBurnt
        if 6289308176100628 * ext_call.return_data[0] / 10^18 <= 0:
            revert with 0, 'distributeDivs failed!'
        if totalTokens <= 0:
            revert with 0, 'distributeDivs failed!'
        if 6289308176100628 * ext_call.return_data[0] / 10^18:
            require 6289308176100628 * ext_call.return_data[0] / 10^18
            require 10^18 * 6289308176100628 * ext_call.return_data[0] / 10^18 / 6289308176100628 * ext_call.return_data[0] / 10^18 == 10^18
        require totalTokens
        require totalDivPoints + (10^18 * 6289308176100628 * ext_call.return_data[0] / 10^18 / totalTokens) >= totalDivPoints
        totalDivPoints += 10^18 * 6289308176100628 * ext_call.return_data[0] / 10^18 / totalTokens
        emit RewardsDisbursed((6289308176100628 * ext_call.return_data[0] / 10^18));
        if tokensToBeDisbursedOrBurnt - (6289308176100628 * ext_call.return_data[0] / 10^18) > 0:
            require ext_code.size(0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17)
            call 0x961c8c0b1aad0c0b10a51fef6a867e3091bcef17.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, tokensToBeDisbursedOrBurnt - (6289308176100628 * ext_call.return_data[0] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x216469736275727365526577617264546f6b656e733a206275726e206661696c6564,
                            mem[198 len 30]
    tokensToBeDisbursedOrBurnt = 0
    lastBurnOrTokenDistributeTime = block.timestamp
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'No Contracts Allowed!'
    if msg.sender != tx.origin:
        revert with 0, 'No Contracts Allowed!'
    if arg1 <= 0:
        revert with 0, 'Cannot withdraw 0 Tokens!'
    if depositedTokens[address(msg.sender)] < arg1:
        revert with 0, 'Invalid amount to withdraw'
    require depositTime[address(msg.sender)] <= block.timestamp
    if block.timestamp - depositTime[address(msg.sender)] <= 72 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x21596f7520726563656e746c79206465706f73697465642c20706c656173652077616974206265666f7265207769746864726177696e67,
                    mem[219 len 9]
    require contractDeployTime + (4320 * 24 * 3600) >= contractDeployTime
    if block.timestamp <= contractDeployTime + (4320 * 24 * 3600):
        if lastDisburseTime >= block.timestamp:
            if contractBalance < 0:
                if contractBalance:
                    if totalTokens:
                        require tokensToBeSwapped + contractBalance >= tokensToBeSwapped
                        tokensToBeSwapped += contractBalance
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= block.timestamp
            require (500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 500000 * 10^18 * 3600 == block.timestamp - lastDisburseTime
            if contractBalance >= (500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 4320 * 24 * 3600 / 10000:
                if (500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 4320 * 24 * 3600 / 10000:
                    if totalTokens:
                        require tokensToBeSwapped + ((500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 4320 * 24 * 3600 / 10000) >= tokensToBeSwapped
                        tokensToBeSwapped += (500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 4320 * 24 * 3600 / 10000
                        require (500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 4320 * 24 * 3600 / 10000 <= contractBalance
                        contractBalance -= (500000 * 10^18 * 3600 * block.timestamp) - (500000 * 10^18 * 3600 * lastDisburseTime) / 4320 * 24 * 3600 / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        require tokensToBeSwapped + contractBalance >= tokensToBeSwapped
                        tokensToBeSwapped += contractBalance
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    else:
        if lastDisburseTime >= contractDeployTime + (4320 * 24 * 3600):
            if contractBalance < 0:
                if contractBalance:
                    if totalTokens:
                        require tokensToBeSwapped + contractBalance >= tokensToBeSwapped
                        tokensToBeSwapped += contractBalance
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= contractDeployTime + (4320 * 24 * 3600)
            require (500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 500000 * 10^18 * 3600 == contractDeployTime + -lastDisburseTime + (4320 * 24 * 3600)
            if contractBalance >= (500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 / 10000:
                if (500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 / 10000:
                    if totalTokens:
                        require tokensToBeSwapped + ((500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 / 10000) >= tokensToBeSwapped
                        tokensToBeSwapped += (500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 / 10000
                        require (500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 / 10000 <= contractBalance
                        contractBalance -= (500000 * 10^18 * 3600 * contractDeployTime) + (-1800000000 * 10^18 * lastDisburseTime) + (600000 * 10^18 * 24 * 3600 * 24 * 3600 * 24 * 3600) / 4320 * 24 * 3600 / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        require tokensToBeSwapped + contractBalance >= tokensToBeSwapped
                        tokensToBeSwapped += contractBalance
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    lastClaimedTime[address(msg.sender)] = block.timestamp
    lastDivPoints[address(msg.sender)] = totalDivPoints
    lastEthDivPoints[address(msg.sender)] = totalEthDivPoints
    require ext_code.size(0x497070e8b6c55fd283d8b259a6971261e2021c01)
    call 0x497070e8b6c55fd283d8b259a6971261e2021c01.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens.'
    require arg1 <= depositedTokens[address(msg.sender)]
    depositedTokens[address(msg.sender)] -= arg1
    require arg1 <= totalTokens
    totalTokens -= arg1
    if stor13[address(msg.sender)]:
        if not depositedTokens[address(msg.sender)]:
            if stor13[address(msg.sender)]:
                require stor12.length - 1 < stor12.length
                require stor13[address(msg.sender)] - 1 < stor12.length
                stor12[stor13[address(msg.sender)]] = stor12[stor12.length]
                stor13[stor12[stor12.length]] = stor13[address(msg.sender)]
                require stor12.length
                stor12[stor12.length] = 0
                stor12.length--
                stor13[address(msg.sender)] = 0
}



}
