contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - claim()
#  - claimAs(address arg1)
#  - deposit(uint256 arg1)
#
const disbursePercentX100 = 10000

const cliffTime = 600

const trustedDepositTokenAddress = 0xe6b9e067762da9049f6834487dacc95b1d53c853

const trustedRewardTokenAddress = 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d

const swapAttemptPeriod = 600

const disburseDuration = (24 * 3600)

const burnOrDisburseTokensPeriod = 1800

const adminCanClaimAfter = 1800

const disburseAmount = (120 * 10^18 * 24 * 3600)

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
array of address stor12;
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
    require ext_code.size(0x8c7b453f1e692912626294fe30a03b8d4d7dd35d)
    call 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d.0x23b872dd with:
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
    require ext_code.size(0x8c7b453f1e692912626294fe30a03b8d4d7dd35d)
    staticcall 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d.0x70a08231 with:
            gas gas_remaining wei
           args 0xe6b9e067762da9049f6834487dacc95b1d53c853
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
    if block.timestamp - lastBurnOrTokenDistributeTime <= 1800:
        revert with 0, 'Recently executed, Please wait!'
    require ext_code.size(0x8c7b453f1e692912626294fe30a03b8d4d7dd35d)
    call 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d.0xa9059cbb with:
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
    require contractDeployTime + (24 * 3600) >= contractDeployTime
    if block.timestamp <= contractDeployTime + (24 * 3600):
        if lastDisburseTime >= block.timestamp:
            return 0
        if lastDisburseTime <= block.timestamp:
            if (1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 1200000 * 10^18 * 24 * 3600 == block.timestamp - lastDisburseTime:
                return ((1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 24 * 3600 / 10000)
    else:
        if lastDisburseTime >= contractDeployTime + (24 * 3600):
            return 0
        if lastDisburseTime <= contractDeployTime + (24 * 3600):
            if (1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 1200000 * 10^18 * 24 * 3600 == contractDeployTime + -lastDisburseTime + (24 * 3600):
                return ((1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 24 * 3600 / 10000)
    revert
}

function transferAnyOldERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 == 0xe6b9e067762da9049f6834487dacc95b1d53c853:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x2e41646d696e2063616e6e6f74207472616e73666572206f7574206465706f73697420746f6b656e732066726f6d2074686973207661756c74,
                    mem[221 len 7]
    if arg1 == 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d:
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
    if arg1 == 0xe6b9e067762da9049f6834487dacc95b1d53c853:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x2e41646d696e2063616e6e6f74207472616e73666572206f7574206465706f73697420746f6b656e732066726f6d2074686973207661756c74,
                    mem[221 len 7]
    if arg1 == 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d:
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
    if block.timestamp - lastBurnOrTokenDistributeTime <= 1800:
        revert with 0, 'Recently executed, Please wait!'
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8c7b453f1e692912626294fe30a03b8d4d7dd35d)
    staticcall 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d.0x70a08231 with:
            gas gas_remaining wei
           args 0xe6b9e067762da9049f6834487dacc95b1d53c853
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
            require ext_code.size(0x8c7b453f1e692912626294fe30a03b8d4d7dd35d)
            call 0x8c7b453f1e692912626294fe30a03b8d4d7dd35d.0xa9059cbb with:
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
    if block.timestamp - depositTime[address(msg.sender)] <= 600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x21596f7520726563656e746c79206465706f73697465642c20706c656173652077616974206265666f7265207769746864726177696e67,
                    mem[219 len 9]
    require contractDeployTime + (24 * 3600) >= contractDeployTime
    if block.timestamp <= contractDeployTime + (24 * 3600):
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
            require (1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 1200000 * 10^18 * 24 * 3600 == block.timestamp - lastDisburseTime
            if contractBalance >= (1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 24 * 3600 / 10000:
                if (1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 24 * 3600 / 10000:
                    if totalTokens:
                        require tokensToBeSwapped + ((1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 24 * 3600 / 10000) >= tokensToBeSwapped
                        tokensToBeSwapped += (1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 24 * 3600 / 10000
                        require (1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 24 * 3600 / 10000 <= contractBalance
                        contractBalance -= (1200000 * 10^18 * 24 * 3600 * block.timestamp) - (1200000 * 10^18 * 24 * 3600 * lastDisburseTime) / 24 * 3600 / 10000
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
        if lastDisburseTime >= contractDeployTime + (24 * 3600):
            if contractBalance < 0:
                if contractBalance:
                    if totalTokens:
                        require tokensToBeSwapped + contractBalance >= tokensToBeSwapped
                        tokensToBeSwapped += contractBalance
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= contractDeployTime + (24 * 3600)
            require (1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 1200000 * 10^18 * 24 * 3600 == contractDeployTime + -lastDisburseTime + (24 * 3600)
            if contractBalance >= (1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 24 * 3600 / 10000:
                if (1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 24 * 3600 / 10000:
                    if totalTokens:
                        require tokensToBeSwapped + ((1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 24 * 3600 / 10000) >= tokensToBeSwapped
                        tokensToBeSwapped += (1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 24 * 3600 / 10000
                        require (1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 24 * 3600 / 10000 <= contractBalance
                        contractBalance -= (1200000 * 10^18 * 24 * 3600 * contractDeployTime) + (-4320000000 * 10^18 * lastDisburseTime) + (8000 * 10^18 * 3600 * 24 * 3600 * 24 * 3600) / 24 * 3600 / 10000
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
    require ext_code.size(0xe6b9e067762da9049f6834487dacc95b1d53c853)
    call 0xe6b9e067762da9049f6834487dacc95b1d53c853.0xa9059cbb with:
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
                uint256(stor12[stor13[address(msg.sender)]]) = uint256(stor12[stor12.length])
                stor13[uint256(stor12[stor12.length])] = stor13[address(msg.sender)]
                require stor12.length
                uint256(stor12[stor12.length]) = 0
                stor12.length--
                stor13[address(msg.sender)] = 0
}

function getDepositorsList(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < arg2
    require arg1 <= arg2
    require arg2 - arg1 <= test266151307()
    mem[96] = arg2 - arg1
    if not arg2 - arg1:
        require arg2 - arg1 <= test266151307()
        mem[(32 * arg2 - arg1) + 128] = arg2 - arg1
        if not arg2 - arg1:
            require arg2 - arg1 <= test266151307()
            mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
            if not arg2 - arg1:
                require arg2 - arg1 <= test266151307()
                mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
                mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
                if not arg2 - arg1:
                    idx = arg1
                    while idx < arg2:
                        if stor12.length <= idx:
                            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                        require idx < stor12.length
                        require arg1 <= idx
                        require idx - arg1 < mem[96]
                        mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                        require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                        mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                        require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                        mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                        mem[0] = address(stor12[idx])
                        mem[32] = 14
                        require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                        mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                        require idx + 1 >= idx
                        idx = idx + 1
                        continue 
                    _400 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[96]
                    _402 = mem[96]
                    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 160
                    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
                    _785 = mem[(32 * arg2 - arg1) + 128]
                    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
                    mem[mem[64] + 64] = (32 * _785) + (32 * mem[96]) + 192
                    mem[(32 * _785) + (32 * _402) + _400 + 192] = mem[(64 * arg2 - arg1) + 160]
                    _961 = mem[(64 * arg2 - arg1) + 160]
                    mem[(32 * _785) + (32 * _402) + _400 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
                    mem[_400 + 96] = (32 * _961) + (32 * _785) + (32 * _402) + 224
                    mem[(32 * _961) + (32 * _785) + (32 * _402) + _400 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
                    _1089 = mem[(98 * arg2) + (-98 * arg1) + 192]
                    mem[(32 * _961) + (32 * _785) + (32 * _402) + _400 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _1089) + (32 * _961) + (32 * _785) + (32 * _402) + _400 + -mem[64] + 256
                mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                idx = arg1
                while idx < arg2:
                    if stor12.length <= idx:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    require idx < stor12.length
                    require arg1 <= idx
                    require idx - arg1 < mem[96]
                    mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                    mem[0] = address(stor12[idx])
                    mem[32] = 14
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                    require idx + 1 >= idx
                    idx = idx + 1
                    continue 
                _403 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _405 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
                _788 = mem[(32 * arg2 - arg1) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
                mem[mem[64] + 64] = (32 * _788) + (32 * mem[96]) + 192
                mem[(32 * _788) + (32 * _405) + _403 + 192] = mem[(64 * arg2 - arg1) + 160]
                _964 = mem[(64 * arg2 - arg1) + 160]
                mem[(32 * _788) + (32 * _405) + _403 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
                mem[_403 + 96] = (32 * _964) + (32 * _788) + (32 * _405) + 224
                mem[(32 * _964) + (32 * _788) + (32 * _405) + _403 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
                _1092 = mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * _964) + (32 * _788) + (32 * _405) + _403 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1092) + (32 * _964) + (32 * _788) + (32 * _405) + _403 + -mem[64] + 256
            mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            require arg2 - arg1 <= test266151307()
            mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
            mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
            if not arg2 - arg1:
                idx = arg1
                while idx < arg2:
                    if stor12.length <= idx:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    require idx < stor12.length
                    require arg1 <= idx
                    require idx - arg1 < mem[96]
                    mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                    mem[0] = address(stor12[idx])
                    mem[32] = 14
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                    require idx + 1 >= idx
                    idx = idx + 1
                    continue 
                _406 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _408 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
                _791 = mem[(32 * arg2 - arg1) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
                mem[mem[64] + 64] = (32 * _791) + (32 * mem[96]) + 192
                mem[(32 * _791) + (32 * _408) + _406 + 192] = mem[(64 * arg2 - arg1) + 160]
                _967 = mem[(64 * arg2 - arg1) + 160]
                mem[(32 * _791) + (32 * _408) + _406 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
                mem[_406 + 96] = (32 * _967) + (32 * _791) + (32 * _408) + 224
                mem[(32 * _967) + (32 * _791) + (32 * _408) + _406 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
                _1095 = mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * _967) + (32 * _791) + (32 * _408) + _406 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1095) + (32 * _967) + (32 * _791) + (32 * _408) + _406 + -mem[64] + 256
            mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            idx = arg1
            while idx < arg2:
                if stor12.length <= idx:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                require idx < stor12.length
                require arg1 <= idx
                require idx - arg1 < mem[96]
                mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                mem[0] = address(stor12[idx])
                mem[32] = 14
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            _409 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _411 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
            _794 = mem[(32 * arg2 - arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
            mem[mem[64] + 64] = (32 * _794) + (32 * mem[96]) + 192
            mem[(32 * _794) + (32 * _411) + _409 + 192] = mem[(64 * arg2 - arg1) + 160]
            _970 = mem[(64 * arg2 - arg1) + 160]
            mem[(32 * _794) + (32 * _411) + _409 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
            mem[_409 + 96] = (32 * _970) + (32 * _794) + (32 * _411) + 224
            mem[(32 * _970) + (32 * _794) + (32 * _411) + _409 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
            _1098 = mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * _970) + (32 * _794) + (32 * _411) + _409 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
            return memory
              from mem[64]
               len (32 * _1098) + (32 * _970) + (32 * _794) + (32 * _411) + _409 + -mem[64] + 256
        mem[(32 * arg2 - arg1) + 160 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        require arg2 - arg1 <= test266151307()
        mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
        if not arg2 - arg1:
            require arg2 - arg1 <= test266151307()
            mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
            mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
            if not arg2 - arg1:
                idx = arg1
                while idx < arg2:
                    if stor12.length <= idx:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    require idx < stor12.length
                    require arg1 <= idx
                    require idx - arg1 < mem[96]
                    mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                    mem[0] = address(stor12[idx])
                    mem[32] = 14
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                    require idx + 1 >= idx
                    idx = idx + 1
                    continue 
                _412 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _414 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
                _797 = mem[(32 * arg2 - arg1) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
                mem[mem[64] + 64] = (32 * _797) + (32 * mem[96]) + 192
                mem[(32 * _797) + (32 * _414) + _412 + 192] = mem[(64 * arg2 - arg1) + 160]
                _973 = mem[(64 * arg2 - arg1) + 160]
                mem[(32 * _797) + (32 * _414) + _412 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
                mem[_412 + 96] = (32 * _973) + (32 * _797) + (32 * _414) + 224
                mem[(32 * _973) + (32 * _797) + (32 * _414) + _412 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
                _1101 = mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * _973) + (32 * _797) + (32 * _414) + _412 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1101) + (32 * _973) + (32 * _797) + (32 * _414) + _412 + -mem[64] + 256
            mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            idx = arg1
            while idx < arg2:
                if stor12.length <= idx:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                require idx < stor12.length
                require arg1 <= idx
                require idx - arg1 < mem[96]
                mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                mem[0] = address(stor12[idx])
                mem[32] = 14
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            _415 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _417 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
            _800 = mem[(32 * arg2 - arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
            mem[mem[64] + 64] = (32 * _800) + (32 * mem[96]) + 192
            mem[(32 * _800) + (32 * _417) + _415 + 192] = mem[(64 * arg2 - arg1) + 160]
            _976 = mem[(64 * arg2 - arg1) + 160]
            mem[(32 * _800) + (32 * _417) + _415 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
            mem[_415 + 96] = (32 * _976) + (32 * _800) + (32 * _417) + 224
            mem[(32 * _976) + (32 * _800) + (32 * _417) + _415 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
            _1104 = mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * _976) + (32 * _800) + (32 * _417) + _415 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
            return memory
              from mem[64]
               len (32 * _1104) + (32 * _976) + (32 * _800) + (32 * _417) + _415 + -mem[64] + 256
        mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        require arg2 - arg1 <= test266151307()
        mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
        mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
        if not arg2 - arg1:
            idx = arg1
            while idx < arg2:
                if stor12.length <= idx:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                require idx < stor12.length
                require arg1 <= idx
                require idx - arg1 < mem[96]
                mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                mem[0] = address(stor12[idx])
                mem[32] = 14
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            _418 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _420 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
            _803 = mem[(32 * arg2 - arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
            mem[mem[64] + 64] = (32 * _803) + (32 * mem[96]) + 192
            mem[(32 * _803) + (32 * _420) + _418 + 192] = mem[(64 * arg2 - arg1) + 160]
            _979 = mem[(64 * arg2 - arg1) + 160]
            mem[(32 * _803) + (32 * _420) + _418 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
            mem[_418 + 96] = (32 * _979) + (32 * _803) + (32 * _420) + 224
            mem[(32 * _979) + (32 * _803) + (32 * _420) + _418 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
            _1107 = mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * _979) + (32 * _803) + (32 * _420) + _418 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
            return memory
              from mem[64]
               len (32 * _1107) + (32 * _979) + (32 * _803) + (32 * _420) + _418 + -mem[64] + 256
        mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        idx = arg1
        while idx < arg2:
            if stor12.length <= idx:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            require idx < stor12.length
            require arg1 <= idx
            require idx - arg1 < mem[96]
            mem[(32 * idx - arg1) + 128] = address(stor12[idx])
            require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
            mem[0] = address(stor12[idx])
            mem[32] = 14
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
            require idx + 1 >= idx
            idx = idx + 1
            continue 
        _421 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _423 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
        _806 = mem[(32 * arg2 - arg1) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
        mem[mem[64] + 64] = (32 * _806) + (32 * mem[96]) + 192
        mem[(32 * _806) + (32 * _423) + _421 + 192] = mem[(64 * arg2 - arg1) + 160]
        _982 = mem[(64 * arg2 - arg1) + 160]
        mem[(32 * _806) + (32 * _423) + _421 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
        mem[_421 + 96] = (32 * _982) + (32 * _806) + (32 * _423) + 224
        mem[(32 * _982) + (32 * _806) + (32 * _423) + _421 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
        _1110 = mem[(98 * arg2) + (-98 * arg1) + 192]
        mem[(32 * _982) + (32 * _806) + (32 * _423) + _421 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
        return memory
          from mem[64]
           len (32 * _1110) + (32 * _982) + (32 * _806) + (32 * _423) + _421 + -mem[64] + 256
    mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    require arg2 - arg1 <= test266151307()
    mem[(32 * arg2 - arg1) + 128] = arg2 - arg1
    if not arg2 - arg1:
        require arg2 - arg1 <= test266151307()
        mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
        if not arg2 - arg1:
            require arg2 - arg1 <= test266151307()
            mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
            mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
            if not arg2 - arg1:
                idx = arg1
                while idx < arg2:
                    if stor12.length <= idx:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                    require idx < stor12.length
                    require arg1 <= idx
                    require idx - arg1 < mem[96]
                    mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                    require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                    mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                    require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                    mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                    mem[0] = address(stor12[idx])
                    mem[32] = 14
                    require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                    mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                    require idx + 1 >= idx
                    idx = idx + 1
                    continue 
                _424 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _426 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
                _809 = mem[(32 * arg2 - arg1) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
                mem[mem[64] + 64] = (32 * _809) + (32 * mem[96]) + 192
                mem[(32 * _809) + (32 * _426) + _424 + 192] = mem[(64 * arg2 - arg1) + 160]
                _985 = mem[(64 * arg2 - arg1) + 160]
                mem[(32 * _809) + (32 * _426) + _424 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
                mem[_424 + 96] = (32 * _985) + (32 * _809) + (32 * _426) + 224
                mem[(32 * _985) + (32 * _809) + (32 * _426) + _424 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
                _1113 = mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * _985) + (32 * _809) + (32 * _426) + _424 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1113) + (32 * _985) + (32 * _809) + (32 * _426) + _424 + -mem[64] + 256
            mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            idx = arg1
            while idx < arg2:
                if stor12.length <= idx:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                require idx < stor12.length
                require arg1 <= idx
                require idx - arg1 < mem[96]
                mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                mem[0] = address(stor12[idx])
                mem[32] = 14
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            _427 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _429 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
            _812 = mem[(32 * arg2 - arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
            mem[mem[64] + 64] = (32 * _812) + (32 * mem[96]) + 192
            mem[(32 * _812) + (32 * _429) + _427 + 192] = mem[(64 * arg2 - arg1) + 160]
            _988 = mem[(64 * arg2 - arg1) + 160]
            mem[(32 * _812) + (32 * _429) + _427 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
            mem[_427 + 96] = (32 * _988) + (32 * _812) + (32 * _429) + 224
            mem[(32 * _988) + (32 * _812) + (32 * _429) + _427 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
            _1116 = mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * _988) + (32 * _812) + (32 * _429) + _427 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
            return memory
              from mem[64]
               len (32 * _1116) + (32 * _988) + (32 * _812) + (32 * _429) + _427 + -mem[64] + 256
        mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        require arg2 - arg1 <= test266151307()
        mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
        mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
        if not arg2 - arg1:
            idx = arg1
            while idx < arg2:
                if stor12.length <= idx:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                require idx < stor12.length
                require arg1 <= idx
                require idx - arg1 < mem[96]
                mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                mem[0] = address(stor12[idx])
                mem[32] = 14
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            _430 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _432 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
            _815 = mem[(32 * arg2 - arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
            mem[mem[64] + 64] = (32 * _815) + (32 * mem[96]) + 192
            mem[(32 * _815) + (32 * _432) + _430 + 192] = mem[(64 * arg2 - arg1) + 160]
            _991 = mem[(64 * arg2 - arg1) + 160]
            mem[(32 * _815) + (32 * _432) + _430 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
            mem[_430 + 96] = (32 * _991) + (32 * _815) + (32 * _432) + 224
            mem[(32 * _991) + (32 * _815) + (32 * _432) + _430 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
            _1119 = mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * _991) + (32 * _815) + (32 * _432) + _430 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
            return memory
              from mem[64]
               len (32 * _1119) + (32 * _991) + (32 * _815) + (32 * _432) + _430 + -mem[64] + 256
        mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        idx = arg1
        while idx < arg2:
            if stor12.length <= idx:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            require idx < stor12.length
            require arg1 <= idx
            require idx - arg1 < mem[96]
            mem[(32 * idx - arg1) + 128] = address(stor12[idx])
            require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
            mem[0] = address(stor12[idx])
            mem[32] = 14
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
            require idx + 1 >= idx
            idx = idx + 1
            continue 
        _433 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _435 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
        _818 = mem[(32 * arg2 - arg1) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
        mem[mem[64] + 64] = (32 * _818) + (32 * mem[96]) + 192
        mem[(32 * _818) + (32 * _435) + _433 + 192] = mem[(64 * arg2 - arg1) + 160]
        _994 = mem[(64 * arg2 - arg1) + 160]
        mem[(32 * _818) + (32 * _435) + _433 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
        mem[_433 + 96] = (32 * _994) + (32 * _818) + (32 * _435) + 224
        mem[(32 * _994) + (32 * _818) + (32 * _435) + _433 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
        _1122 = mem[(98 * arg2) + (-98 * arg1) + 192]
        mem[(32 * _994) + (32 * _818) + (32 * _435) + _433 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
        return memory
          from mem[64]
           len (32 * _1122) + (32 * _994) + (32 * _818) + (32 * _435) + _433 + -mem[64] + 256
    mem[(32 * arg2 - arg1) + 160 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    require arg2 - arg1 <= test266151307()
    mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
    if not arg2 - arg1:
        require arg2 - arg1 <= test266151307()
        mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
        mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
        if not arg2 - arg1:
            idx = arg1
            while idx < arg2:
                if stor12.length <= idx:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
                require idx < stor12.length
                require arg1 <= idx
                require idx - arg1 < mem[96]
                mem[(32 * idx - arg1) + 128] = address(stor12[idx])
                require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
                mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
                require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
                mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
                mem[0] = address(stor12[idx])
                mem[32] = 14
                require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
                mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            _436 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _438 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
            _821 = mem[(32 * arg2 - arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
            mem[mem[64] + 64] = (32 * _821) + (32 * mem[96]) + 192
            mem[(32 * _821) + (32 * _438) + _436 + 192] = mem[(64 * arg2 - arg1) + 160]
            _997 = mem[(64 * arg2 - arg1) + 160]
            mem[(32 * _821) + (32 * _438) + _436 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
            mem[_436 + 96] = (32 * _997) + (32 * _821) + (32 * _438) + 224
            mem[(32 * _997) + (32 * _821) + (32 * _438) + _436 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
            _1125 = mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * _997) + (32 * _821) + (32 * _438) + _436 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
            return memory
              from mem[64]
               len (32 * _1125) + (32 * _997) + (32 * _821) + (32 * _438) + _436 + -mem[64] + 256
        mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
        idx = arg1
        while idx < arg2:
            if stor12.length <= idx:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            require idx < stor12.length
            require arg1 <= idx
            require idx - arg1 < mem[96]
            mem[(32 * idx - arg1) + 128] = address(stor12[idx])
            require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
            mem[0] = address(stor12[idx])
            mem[32] = 14
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
            require idx + 1 >= idx
            idx = idx + 1
            continue 
        _439 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _441 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
        _824 = mem[(32 * arg2 - arg1) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
        mem[mem[64] + 64] = (32 * _824) + (32 * mem[96]) + 192
        mem[(32 * _824) + (32 * _441) + _439 + 192] = mem[(64 * arg2 - arg1) + 160]
        _1000 = mem[(64 * arg2 - arg1) + 160]
        mem[(32 * _824) + (32 * _441) + _439 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
        mem[_439 + 96] = (32 * _1000) + (32 * _824) + (32 * _441) + 224
        mem[(32 * _1000) + (32 * _824) + (32 * _441) + _439 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
        _1128 = mem[(98 * arg2) + (-98 * arg1) + 192]
        mem[(32 * _1000) + (32 * _824) + (32 * _441) + _439 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
        return memory
          from mem[64]
           len (32 * _1128) + (32 * _1000) + (32 * _824) + (32 * _441) + _439 + -mem[64] + 256
    mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    require arg2 - arg1 <= test266151307()
    mem[(98 * arg2) + (-98 * arg1) + 192] = arg2 - arg1
    mem[64] = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 224
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            if stor12.length <= idx:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            require idx < stor12.length
            require arg1 <= idx
            require idx - arg1 < mem[96]
            mem[(32 * idx - arg1) + 128] = address(stor12[idx])
            require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
            mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
            require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
            mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
            mem[0] = address(stor12[idx])
            mem[32] = 14
            require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
            mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
            require idx + 1 >= idx
            idx = idx + 1
            continue 
        _442 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _444 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
        _827 = mem[(32 * arg2 - arg1) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
        mem[mem[64] + 64] = (32 * _827) + (32 * mem[96]) + 192
        mem[(32 * _827) + (32 * _444) + _442 + 192] = mem[(64 * arg2 - arg1) + 160]
        _1003 = mem[(64 * arg2 - arg1) + 160]
        mem[(32 * _827) + (32 * _444) + _442 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
        mem[_442 + 96] = (32 * _1003) + (32 * _827) + (32 * _444) + 224
        mem[(32 * _1003) + (32 * _827) + (32 * _444) + _442 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
        _1131 = mem[(98 * arg2) + (-98 * arg1) + 192]
        mem[(32 * _1003) + (32 * _827) + (32 * _444) + _442 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
        return memory
          from mem[64]
           len (32 * _1131) + (32 * _1003) + (32 * _827) + (32 * _444) + _442 + -mem[64] + 256
    mem[(98 * arg2) + (-98 * arg1) + 224 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        if stor12.length <= idx:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
        require idx < stor12.length
        require arg1 <= idx
        require idx - arg1 < mem[96]
        mem[(32 * idx - arg1) + 128] = address(stor12[idx])
        require idx - arg1 < mem[(32 * arg2 - arg1) + 128]
        mem[(32 * idx - arg1) + (32 * arg2 - arg1) + 160] = depositTime[address(stor12[idx])]
        require idx - arg1 < mem[(64 * arg2 - arg1) + 160]
        mem[(32 * idx - arg1) + (64 * arg2 - arg1) + 192] = lastClaimedTime[address(stor12[idx])]
        mem[0] = address(stor12[idx])
        mem[32] = 14
        require idx - arg1 < mem[(98 * arg2) + (-98 * arg1) + 192]
        mem[(32 * idx - arg1) + (98 * arg2) + (-98 * arg1) + 224] = depositedTokens[address(stor12[idx])]
        require idx + 1 >= idx
        idx = idx + 1
        continue 
    _445 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _447 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * arg2 - arg1) + 128]
    _830 = mem[(32 * arg2 - arg1) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * arg2 - arg1) + 128])] = mem[(32 * arg2 - arg1) + 160 len floor32(mem[(32 * arg2 - arg1) + 128])]
    mem[mem[64] + 64] = (32 * _830) + (32 * mem[96]) + 192
    mem[(32 * _830) + (32 * _447) + _445 + 192] = mem[(64 * arg2 - arg1) + 160]
    _1006 = mem[(64 * arg2 - arg1) + 160]
    mem[(32 * _830) + (32 * _447) + _445 + 224 len floor32(mem[(64 * arg2 - arg1) + 160])] = mem[(64 * arg2 - arg1) + 192 len floor32(mem[(64 * arg2 - arg1) + 160])]
    mem[_445 + 96] = (32 * _1006) + (32 * _830) + (32 * _447) + 224
    mem[(32 * _1006) + (32 * _830) + (32 * _447) + _445 + 224] = mem[(98 * arg2) + (-98 * arg1) + 192]
    _1134 = mem[(98 * arg2) + (-98 * arg1) + 192]
    mem[(32 * _1006) + (32 * _830) + (32 * _447) + _445 + 256 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])] = mem[(98 * arg2) + (-98 * arg1) + 224 len floor32(mem[(98 * arg2) + (-98 * arg1) + 192])]
    return memory
      from mem[64]
       len (32 * _1134) + (32 * _1006) + (32 * _830) + (32 * _447) + _445 + -mem[64] + 256
}



}
