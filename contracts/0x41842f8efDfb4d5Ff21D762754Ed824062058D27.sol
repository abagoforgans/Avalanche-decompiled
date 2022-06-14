contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#
address stor0;
mapping of uint8 stor1;
uint8 paused;
address stor2; offset 8
address stakingTokenAddress;
address rewardTokenAddress;
uint256 totalRealised;
uint256 totalStaked;
mapping of struct stakes;
uint256 accuracyFactor;
uint256 cumulativeRewardsPerLP;
uint256 lastContractBalance;
uint256 sub_dfeab4e4;
uint256 penaltyFee;
uint256 sub_0da73073;
address sub_ee610e6cAddress;

function sub_0da73073(?) payable {
    return sub_0da73073
}

function stakes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakes[arg1].field_0, stakes[arg1].field_256, stakes[arg1].field_512, stakes[arg1].field_768
}

function getLastContractBalance() payable {
    return lastContractBalance
}

function penaltyFee() payable {
    return penaltyFee
}

function paused() payable {
    return bool(paused)
}

function getRealisedEarnings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakes[address(arg1)].field_768
}

function stakingToken() payable {
    return stakingTokenAddress
}

function getStake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakes[address(arg1)].field_256
}

function totalStaked() payable {
    return totalStaked
}

function getAccuracyFactor() payable {
    return accuracyFactor
}

function getCumulativeRewardsPerLP() payable {
    return cumulativeRewardsPerLP
}

function totalRealised() payable {
    return totalRealised
}

function sub_dfeab4e4(?) payable {
    return sub_dfeab4e4
}

function sub_ee610e6c(?) payable {
    return sub_ee610e6cAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function sub_c1a3ea87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor2 = address(arg1)
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function pause() payable {
    if not paused:
        require stor1[address(msg.sender)]
        paused = 1
        emit Paused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        paused = 1
        emit Paused()
}

function unpause() payable {
    if paused:
        require stor1[address(msg.sender)]
        paused = 0
        emit Unpaused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        paused = 0
        emit Unpaused()
}

function getCumulativeRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and cumulativeRewardsPerLP > -1 / arg1:
        revert with 'NH{q', 17
    if not accuracyFactor:
        revert with 'NH{q', 18
    return (arg1 * cumulativeRewardsPerLP / accuracyFactor)
}

function setAccuracyFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    if cumulativeRewardsPerLP and arg1 > -1 / cumulativeRewardsPerLP:
        revert with 'NH{q', 17
    if not accuracyFactor:
        revert with 'NH{q', 18
    cumulativeRewardsPerLP = cumulativeRewardsPerLP * arg1 / accuracyFactor
    accuracyFactor = arg1
}

function sub_a2e5f9aa(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require stor1[address(msg.sender)]
    if not arg2:
        revert with 'NH{q', 18
    if arg3 / arg2 < 20:
        revert with 'NH{q', 1
    sub_dfeab4e4 = arg1
    penaltyFee = arg2
    sub_0da73073 = arg3
    sub_ee610e6cAddress = address(arg4)
}

function getRewardsBalance() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalStaked)
}

function getPendingRewards() payable {
    require ext_code.size(stor2)
    staticcall stor2.0x31d7a262 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        return (2 * ext_call.return_data[0])
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalStaked > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return ((2 * ext_call.return_data[0]) - totalStaked)
}

function getTotalRewards() payable {
    require ext_code.size(stor2)
    staticcall stor2.0x31d7a262 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if totalRealised > (-2 * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return (totalRealised + (2 * ext_call.return_data[0]))
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalStaked > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if totalRealised > (-2 * ext_call.return_data[0]) + totalStaked - 1:
        revert with 'NH{q', 17
    return (totalRealised + (2 * ext_call.return_data[0]) - totalStaked)
}

function getCurrentRewardsPerLP() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] <= lastContractBalance:
            return cumulativeRewardsPerLP
        if not totalStaked:
            return cumulativeRewardsPerLP
        if ext_call.return_data[0] < lastContractBalance:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
            revert with 'NH{q', 17
        return (cumulativeRewardsPerLP + ((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked))
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalStaked <= lastContractBalance:
        return cumulativeRewardsPerLP
    if not totalStaked:
        return cumulativeRewardsPerLP
    if ext_call.return_data[0] - totalStaked < lastContractBalance:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
        revert with 'NH{q', 17
    return (cumulativeRewardsPerLP + ((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked))
}

function emergencyUnstakeAll() payable {
    if stakes[address(msg.sender)].field_256 <= 0:
        revert with 0, 'No Stake'
    stakes[address(msg.sender)].field_256 = 0
    if totalStaked < stakes[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    totalStaked -= stakes[address(msg.sender)].field_256
    if stakes[address(msg.sender)].field_0 > -sub_dfeab4e4 - 1:
        revert with 'NH{q', 17
    if stakes[address(msg.sender)].field_0 + sub_dfeab4e4 <= block.timestamp:
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stakes[address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stakes[address(msg.sender)].field_256 and penaltyFee > -1 / stakes[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not sub_0da73073:
            revert with 'NH{q', 18
        if stakes[address(msg.sender)].field_256 < stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073:
            revert with 'NH{q', 17
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stakes[address(msg.sender)].field_256 - (stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_ee610e6cAddress, stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xb6a45448: msg.sender, stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073
}

function getUnrealisedEarnings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stakes[address(arg1)].field_256:
        return 0
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] <= lastContractBalance:
            if stakes[address(arg1)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(arg1)].field_256:
                revert with 'NH{q', 17
            if not accuracyFactor:
                revert with 'NH{q', 18
            if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor <= stakes[address(arg1)].field_512:
                return 0
            if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(arg1)].field_512:
                revert with 'NH{q', 17
            return ((stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(arg1)].field_512)
        if not totalStaked:
            if stakes[address(arg1)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(arg1)].field_256:
                revert with 'NH{q', 17
            if not accuracyFactor:
                revert with 'NH{q', 18
            if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor <= stakes[address(arg1)].field_512:
                return 0
            if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(arg1)].field_512:
                revert with 'NH{q', 17
            return ((stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(arg1)].field_512)
        if ext_call.return_data[0] < lastContractBalance:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
            revert with 'NH{q', 17
        if stakes[address(arg1)].field_256 and cumulativeRewardsPerLP + ((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) > -1 / stakes[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not accuracyFactor:
            revert with 'NH{q', 18
        if (cumulativeRewardsPerLP * stakes[address(arg1)].field_256) + ((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked * stakes[address(arg1)].field_256) / accuracyFactor <= stakes[address(arg1)].field_512:
            return 0
        if (cumulativeRewardsPerLP * stakes[address(arg1)].field_256) + ((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked * stakes[address(arg1)].field_256) / accuracyFactor < stakes[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (((cumulativeRewardsPerLP * stakes[address(arg1)].field_256) + ((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked * stakes[address(arg1)].field_256) / accuracyFactor) - stakes[address(arg1)].field_512)
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalStaked <= lastContractBalance:
        if stakes[address(arg1)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not accuracyFactor:
            revert with 'NH{q', 18
        if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor <= stakes[address(arg1)].field_512:
            return 0
        if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(arg1)].field_512)
    if not totalStaked:
        if stakes[address(arg1)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not accuracyFactor:
            revert with 'NH{q', 18
        if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor <= stakes[address(arg1)].field_512:
            return 0
        if stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((stakes[address(arg1)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(arg1)].field_512)
    if ext_call.return_data[0] - totalStaked < lastContractBalance:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
        revert with 'NH{q', 17
    if stakes[address(arg1)].field_256 and cumulativeRewardsPerLP + ((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) > -1 / stakes[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not accuracyFactor:
        revert with 'NH{q', 18
    if (cumulativeRewardsPerLP * stakes[address(arg1)].field_256) + ((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked * stakes[address(arg1)].field_256) / accuracyFactor <= stakes[address(arg1)].field_512:
        return 0
    if (cumulativeRewardsPerLP * stakes[address(arg1)].field_256) + ((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked * stakes[address(arg1)].field_256) / accuracyFactor < stakes[address(arg1)].field_512:
        revert with 'NH{q', 17
    return (((cumulativeRewardsPerLP * stakes[address(arg1)].field_256) + ((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked * stakes[address(arg1)].field_256) / accuracyFactor) - stakes[address(arg1)].field_512)
}

function realise() payable {
    if paused:
        require stor1[address(msg.sender)]
    require ext_code.size(stor2)
    call stor2.0xe4fc6b6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - totalStaked > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0] - totalStaked
    if stakes[address(msg.sender)].field_256:
        if stakes[address(msg.sender)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not accuracyFactor:
            revert with 'NH{q', 18
        if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor > stakes[address(msg.sender)].field_512:
            if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if stakes[address(msg.sender)].field_256:
                if (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512:
                    if stakes[address(msg.sender)].field_768 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_768 = stakes[address(msg.sender)].field_768 + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if stakes[address(msg.sender)].field_512 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_512 = stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor
                    if totalRealised > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    totalRealised = totalRealised + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    call stor2.0xe4fc6b6d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if rewardTokenAddress != stakingTokenAddress:
                        if ext_call.return_data[0] > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] < totalStaked:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - totalStaked > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0] - totalStaked
                    emit Realised(msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 > 0
    require ext_code.size(stor2)
    call stor2.0xe4fc6b6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - totalStaked > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0] - totalStaked
    if stakes[address(msg.sender)].field_256:
        if stakes[address(msg.sender)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not accuracyFactor:
            revert with 'NH{q', 18
        if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor > stakes[address(msg.sender)].field_512:
            if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if stakes[address(msg.sender)].field_256:
                if (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512:
                    if stakes[address(msg.sender)].field_768 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_768 = stakes[address(msg.sender)].field_768 + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if stakes[address(msg.sender)].field_512 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_512 = stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor
                    if totalRealised > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    totalRealised = totalRealised + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    call stor2.0xe4fc6b6d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if rewardTokenAddress != stakingTokenAddress:
                        if ext_call.return_data[0] > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] < totalStaked:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - totalStaked > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0] - totalStaked
                    emit Realised(msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512);
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if paused:
        require stor1[address(msg.sender)]
    require arg1 > 0
    stakes[address(msg.sender)].field_0 = block.timestamp
    if stakes[address(msg.sender)].field_256 > -arg1 - 1:
        revert with 'NH{q', 17
    stakes[address(msg.sender)].field_256 += arg1
    if stakes[address(msg.sender)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not accuracyFactor:
        revert with 'NH{q', 18
    stakes[address(msg.sender)].field_512 = stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor
    if totalStaked > -arg1 - 1:
        revert with 'NH{q', 17
    totalStaked += arg1
    emit Staked(msg.sender, arg1);
}

function stakeAll() payable {
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] > 0
    require ext_code.size(stor2)
    call stor2.0xe4fc6b6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - totalStaked > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0] - totalStaked
    if stakes[address(msg.sender)].field_256:
        if stakes[address(msg.sender)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not accuracyFactor:
            revert with 'NH{q', 18
        if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor > stakes[address(msg.sender)].field_512:
            if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if stakes[address(msg.sender)].field_256:
                if (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512:
                    if stakes[address(msg.sender)].field_768 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_768 = stakes[address(msg.sender)].field_768 + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if stakes[address(msg.sender)].field_512 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_512 = stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor
                    if totalRealised > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    totalRealised = totalRealised + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    call stor2.0xe4fc6b6d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if rewardTokenAddress != stakingTokenAddress:
                        if ext_call.return_data[0] > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] < totalStaked:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - totalStaked > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0] - totalStaked
                    emit Realised(msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512);
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if paused:
        require stor1[address(msg.sender)]
    require ext_call.return_data[0] > 0
    stakes[address(msg.sender)].field_0 = block.timestamp
    if stakes[address(msg.sender)].field_256 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    stakes[address(msg.sender)].field_256 += ext_call.return_data[0]
    if stakes[address(msg.sender)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not accuracyFactor:
        revert with 'NH{q', 18
    stakes[address(msg.sender)].field_512 = stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor
    if totalStaked > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    totalStaked += ext_call.return_data[0]
    emit Staked(msg.sender, ext_call.return_data[0]);
}

function unstakeAll() payable {
    require stakes[address(msg.sender)].field_256 > 0
    if paused:
        require stor1[address(msg.sender)]
    if stakes[address(msg.sender)].field_256 < stakes[address(msg.sender)].field_256:
        revert with 0, 'Insufficient Stake'
    require ext_code.size(stor2)
    call stor2.0xe4fc6b6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardTokenAddress != stakingTokenAddress:
        if ext_call.return_data[0] > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - totalStaked > lastContractBalance:
            if totalStaked:
                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                    revert with 'NH{q', 17
                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
        if totalStaked > 0:
            lastContractBalance = ext_call.return_data[0] - totalStaked
    if stakes[address(msg.sender)].field_256:
        if stakes[address(msg.sender)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not accuracyFactor:
            revert with 'NH{q', 18
        if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor > stakes[address(msg.sender)].field_512:
            if stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor < stakes[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if stakes[address(msg.sender)].field_256:
                if (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512:
                    if stakes[address(msg.sender)].field_768 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_768 = stakes[address(msg.sender)].field_768 + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if stakes[address(msg.sender)].field_512 > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    stakes[address(msg.sender)].field_512 = stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor
                    if totalRealised > -(stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) + stakes[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    totalRealised = totalRealised + (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    call stor2.0xe4fc6b6d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if rewardTokenAddress != stakingTokenAddress:
                        if ext_call.return_data[0] > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] < totalStaked:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - totalStaked > lastContractBalance:
                            if totalStaked:
                                if ext_call.return_data[0] - totalStaked < lastContractBalance:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - totalStaked - lastContractBalance and accuracyFactor > -1 / ext_call.return_data[0] - totalStaked - lastContractBalance:
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if cumulativeRewardsPerLP > -((ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                cumulativeRewardsPerLP += (ext_call.return_data[0] * accuracyFactor) - (totalStaked * accuracyFactor) - (lastContractBalance * accuracyFactor) / totalStaked
                        if totalStaked > 0:
                            lastContractBalance = ext_call.return_data[0] - totalStaked
                    emit Realised(msg.sender, (stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor) - stakes[address(msg.sender)].field_512);
    if stakes[address(msg.sender)].field_256 < stakes[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    stakes[address(msg.sender)].field_256 = 0
    if stakes[address(msg.sender)].field_256 and cumulativeRewardsPerLP > -1 / stakes[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not accuracyFactor:
        revert with 'NH{q', 18
    stakes[address(msg.sender)].field_512 = stakes[address(msg.sender)].field_256 * cumulativeRewardsPerLP / accuracyFactor
    if totalStaked < stakes[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    totalStaked -= stakes[address(msg.sender)].field_256
    if stakes[address(msg.sender)].field_0 > -sub_dfeab4e4 - 1:
        revert with 'NH{q', 17
    if stakes[address(msg.sender)].field_0 + sub_dfeab4e4 <= block.timestamp:
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stakes[address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stakes[address(msg.sender)].field_256 and penaltyFee > -1 / stakes[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not sub_0da73073:
            revert with 'NH{q', 18
        if stakes[address(msg.sender)].field_256 < stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073:
            revert with 'NH{q', 17
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stakes[address(msg.sender)].field_256 - (stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_ee610e6cAddress, stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xb6a45448: msg.sender, stakes[address(msg.sender)].field_256 * penaltyFee / sub_0da73073
    emit Unstaked(msg.sender, stakes[address(msg.sender)].field_256);
}



}
