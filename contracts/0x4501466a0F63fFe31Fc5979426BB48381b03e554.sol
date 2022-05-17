contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositRewards(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#  - compound()
#  - _fallback()
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address STAKE_TOKENAddress;
address REWARD_TOKENAddress;
uint256 rewardPerBlock;
uint256 sub_dd69f04f;
uint256 totalStaked;
uint256 lastRewardBlock;
mapping of struct userInfo;
uint256 startBlock;
uint256 endBlock;
uint256 depositFee;
address feeAddress;
uint256 sub_6df73c50;
address burnAddress;

function endBlock() {
    return endBlock
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function STAKE_TOKEN() {
    return STAKE_TOKENAddress
}

function feeAddress() {
    return feeAddress
}

function startBlock() {
    return startBlock
}

function depositFee() {
    return depositFee
}

function sub_6df73c50(?) {
    return sub_6df73c50
}

function burnAddress() {
    return burnAddress
}

function totalStaked() {
    return totalStaked
}

function rewardPerBlock() {
    return rewardPerBlock
}

function owner() {
    return owner
}

function REWARD_TOKEN() {
    return REWARD_TOKENAddress
}

function lastRewardBlock() {
    return lastRewardBlock
}

function sub_dd69f04f(?) {
    return sub_dd69f04f
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
    emit LogUpdatePool(endBlock, arg1);
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setBurnAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burnAddress = arg1
    emit SetBurnAddress(msg.sender, arg1);
}

function withdrawEther() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= endBlock:
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if arg1 >= endBlock:
        return 0
    if endBlock < arg1:
        revert with 0, 17
    return (endBlock - arg1)
}

function setEndBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= endBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new bonus end block must be greater than current'
    endBlock = arg1
    emit LogUpdatePool(arg1, rewardPerBlock);
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

function totalStakeTokenBalance() {
    if REWARD_TOKENAddress == STAKE_TOKENAddress:
        return totalStaked
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getStakeTokenFeeBalance() {
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalStaked:
        revert with 0, 17
    return (ext_call.return_data[0] - totalStaked)
}

function rewardBalance() {
    require ext_code.size(REWARD_TOKENAddress)
    staticcall REWARD_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if REWARD_TOKENAddress != STAKE_TOKENAddress:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 0, 17
    return (ext_call.return_data[0] - totalStaked)
}

function sweepToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if STAKE_TOKENAddress == arg1:
        revert with 0, 'can not sweep stake token'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencySweepWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function sub_90c8aa5c(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg7 == address(arg7)
    require arg9 == address(arg9)
    if uint8(stor0.field_168):
        STAKE_TOKENAddress = address(arg1)
        REWARD_TOKENAddress = address(arg2)
        rewardPerBlock = arg3
        startBlock = arg4
        lastRewardBlock = arg4
        endBlock = arg5
        depositFee = arg6
        feeAddress = address(arg7)
        sub_6df73c50 = arg8
        burnAddress = address(arg9)
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_168):
            STAKE_TOKENAddress = address(arg1)
            REWARD_TOKENAddress = address(arg2)
            rewardPerBlock = arg3
            startBlock = arg4
            lastRewardBlock = arg4
            endBlock = arg5
            depositFee = arg6
            feeAddress = address(arg7)
            sub_6df73c50 = arg8
            burnAddress = address(arg9)
        else:
            uint16(stor0.field_160) = 257
            STAKE_TOKENAddress = address(arg1)
            REWARD_TOKENAddress = address(arg2)
            rewardPerBlock = arg3
            startBlock = arg4
            lastRewardBlock = arg4
            endBlock = arg5
            depositFee = arg6
            feeAddress = address(arg7)
            sub_6df73c50 = arg8
            burnAddress = address(arg9)
            uint8(stor0.field_168) = 0
}

function updatePool() {
    if block.number > lastRewardBlock:
        if totalStaked:
            if block.number <= endBlock:
                if block.number < lastRewardBlock:
                    revert with 0, 17
                if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                    revert with 0, 17
                if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) > 0x14484bfeebc29f863424b06f3529a051a31be599:
                    revert with 0, 17
                if not totalStaked:
                    revert with 0, 18
                if sub_dd69f04f > !((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked):
                    revert with 0, 17
                sub_dd69f04f += (1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
            else:
                if lastRewardBlock >= endBlock:
                    if False and rewardPerBlock > 0:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if sub_dd69f04f > !(0 / totalStaked):
                        revert with 0, 17
                    sub_dd69f04f += 0 / totalStaked
                else:
                    if endBlock < lastRewardBlock:
                        revert with 0, 17
                    if endBlock - lastRewardBlock and rewardPerBlock > -1 / endBlock - lastRewardBlock:
                        revert with 0, 17
                    if (endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) > 0x14484bfeebc29f863424b06f3529a051a31be599:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if sub_dd69f04f > !((1000000000000 * 10^18 * endBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked):
                        revert with 0, 17
                    sub_dd69f04f += (1000000000000 * 10^18 * endBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
        lastRewardBlock = block.number
}

function skimStakeTokenFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalStaked:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStaked
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(STAKE_TOKENAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - totalStaked, 0
    mem[ceil32(return_data.size) + 328] = 0
    call STAKE_TOKENAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - totalStaked, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - totalStaked, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function emergencyRewardWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(REWARD_TOKENAddress)
    staticcall REWARD_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if REWARD_TOKENAddress != STAKE_TOKENAddress:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'not enough rewards'
    else:
        if ext_call.return_data[0] < totalStaked:
            revert with 0, 17
        if arg1 > ext_call.return_data[0] - totalStaked:
            revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(REWARD_TOKENAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call REWARD_TOKENAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function pendingReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if userInfo[address(arg1)].field_0 and sub_dd69f04f > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and sub_dd69f04f > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.number <= endBlock:
        if block.number < lastRewardBlock:
            revert with 0, 17
        if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
            revert with 0, 17
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) > 0x14484bfeebc29f863424b06f3529a051a31be599:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if sub_dd69f04f > !((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= endBlock:
        if False and rewardPerBlock > 0:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if sub_dd69f04f > !(0 / totalStaked):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if endBlock < lastRewardBlock:
        revert with 0, 17
    if endBlock - lastRewardBlock and rewardPerBlock > -1 / endBlock - lastRewardBlock:
        revert with 0, 17
    if (endBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    if sub_dd69f04f > !((1000000000000 * 10^18 * endBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((1000000000000 * 10^18 * endBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * endBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * endBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}



}
