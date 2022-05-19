contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - depositRewards(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw()
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address STAKE_TOKENAddress;
address sub_059524ccAddress;
address sub_54747cbaAddress;
uint256 sub_0eec6047;
uint256 sub_cfb395e4;
uint256 sub_cd48a44f;
uint256 sub_09849c33;
uint256 totalStaked;
uint256 lastRewardTimestamp;
mapping of struct userInfo;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 depositFee;
address feeAddress;
uint256 sub_6df73c50;
address burnAddress;

function sub_059524cc(?) {
    return sub_059524ccAddress
}

function sub_09849c33(?) {
    return sub_09849c33
}

function sub_0eec6047(?) {
    return sub_0eec6047
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function STAKE_TOKEN() {
    return STAKE_TOKENAddress
}

function feeAddress() {
    return feeAddress
}

function sub_54747cba(?) {
    return sub_54747cbaAddress
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

function owner() {
    return owner
}

function endTimestamp() {
    return endTimestamp
}

function sub_cd48a44f(?) {
    return sub_cd48a44f
}

function sub_cfb395e4(?) {
    return sub_cfb395e4
}

function startTimestamp() {
    return startTimestamp
}

function lastRewardTimestamp() {
    return lastRewardTimestamp
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

function sub_8cfed341(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0eec6047 = arg1
    sub_cfb395e4 = arg2
    emit LogUpdatePool(endTimestamp, arg1, arg2);
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
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= endTimestamp:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= endTimestamp:
        return 0
    if endTimestamp < arg1:
        revert with 'NH{q', 17
    return (endTimestamp - arg1)
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

function setEndTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= endTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new end timestamp must be greater than current'
    endTimestamp = arg1
    emit LogUpdatePool(endTimestamp, sub_0eec6047, sub_cfb395e4);
}

function getStakeTokenFeeBalance() {
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalStaked)
}

function sweepToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == STAKE_TOKENAddress:
        revert with 0, 'can not sweep stake token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencySweepWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function rewardBalance() {
    require ext_code.size(sub_059524ccAddress)
    staticcall sub_059524ccAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_54747cbaAddress)
    staticcall sub_54747cbaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if STAKE_TOKENAddress == sub_059524ccAddress:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        return ext_call.return_data[0] - totalStaked, ext_call.return_data[0]
    if STAKE_TOKENAddress != sub_54747cbaAddress:
        return ext_call.return_data[0], ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return ext_call.return_data[0], ext_call.return_data[0] - totalStaked
}

function sub_2d399e48(?) {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == address(arg9)
    require arg10 == arg10
    require arg11 == address(arg11)
    if uint8(stor0.field_168):
        STAKE_TOKENAddress = address(arg1)
        sub_059524ccAddress = address(arg2)
        sub_54747cbaAddress = address(arg3)
        sub_0eec6047 = arg4
        sub_cfb395e4 = arg5
        startTimestamp = arg6
        lastRewardTimestamp = arg6
        endTimestamp = arg7
        depositFee = arg8
        feeAddress = address(arg9)
        sub_6df73c50 = arg10
        burnAddress = address(arg11)
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_168):
            STAKE_TOKENAddress = address(arg1)
            sub_059524ccAddress = address(arg2)
            sub_54747cbaAddress = address(arg3)
            sub_0eec6047 = arg4
            sub_cfb395e4 = arg5
            startTimestamp = arg6
            lastRewardTimestamp = arg6
            endTimestamp = arg7
            depositFee = arg8
            feeAddress = address(arg9)
            sub_6df73c50 = arg10
            burnAddress = address(arg11)
        else:
            Mask(88, 0, stor0.field_168) = 1
            Mask(96, 0, stor0.field_160) = 1
            STAKE_TOKENAddress = address(arg1)
            sub_059524ccAddress = address(arg2)
            sub_54747cbaAddress = address(arg3)
            sub_0eec6047 = arg4
            sub_cfb395e4 = arg5
            startTimestamp = arg6
            lastRewardTimestamp = arg6
            endTimestamp = arg7
            depositFee = arg8
            feeAddress = address(arg9)
            sub_6df73c50 = arg10
            burnAddress = address(arg11)
            Mask(88, 0, stor0.field_168) = 0
}

function skimStakeTokenFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStaked
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(STAKE_TOKENAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0
    mem[ceil32(return_data.size) + 328] = 0
    call STAKE_TOKENAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function updatePool() {
    if block.timestamp > lastRewardTimestamp:
        if totalStaked:
            if block.timestamp <= endTimestamp:
                if block.timestamp < lastRewardTimestamp:
                    revert with 'NH{q', 17
                if block.timestamp - lastRewardTimestamp and sub_0eec6047 > -1 / block.timestamp - lastRewardTimestamp:
                    revert with 'NH{q', 17
                if (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if sub_cd48a44f > -(1000000000000 * 10^18 * (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked) - 1:
                    revert with 'NH{q', 17
                sub_cd48a44f += 1000000000000 * 10^18 * (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked
                if block.timestamp - lastRewardTimestamp and sub_cfb395e4 > -1 / block.timestamp - lastRewardTimestamp:
                    revert with 'NH{q', 17
                if (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if sub_09849c33 > -(1000000000000 * 10^18 * (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked) - 1:
                    revert with 'NH{q', 17
                sub_09849c33 += 1000000000000 * 10^18 * (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked
            else:
                if lastRewardTimestamp >= endTimestamp:
                    if False and sub_0eec6047 > 0:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_cd48a44f > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_cd48a44f += 0 / totalStaked
                    if False and sub_cfb395e4 > 0:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_09849c33 > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_09849c33 += 0 / totalStaked
                else:
                    if endTimestamp < lastRewardTimestamp:
                        revert with 'NH{q', 17
                    if endTimestamp - lastRewardTimestamp and sub_0eec6047 > -1 / endTimestamp - lastRewardTimestamp:
                        revert with 'NH{q', 17
                    if (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_cd48a44f > -(1000000000000 * 10^18 * (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_cd48a44f += 1000000000000 * 10^18 * (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked
                    if endTimestamp - lastRewardTimestamp and sub_cfb395e4 > -1 / endTimestamp - lastRewardTimestamp:
                        revert with 'NH{q', 17
                    if (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_09849c33 > -(1000000000000 * 10^18 * (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_09849c33 += 1000000000000 * 10^18 * (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked
        lastRewardTimestamp = block.timestamp
}

function pendingReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= lastRewardTimestamp:
        if userInfo[address(arg1)].field_0 and sub_cd48a44f > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_cd48a44f / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_09849c33 > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_09849c33 / 1000000000000 * 10^18 < userInfo[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (userInfo[address(arg1)].field_0 * sub_cd48a44f / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256, 
               (userInfo[address(arg1)].field_0 * sub_09849c33 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_512
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and sub_cd48a44f > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_cd48a44f / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_09849c33 > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_09849c33 / 1000000000000 * 10^18 < userInfo[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (userInfo[address(arg1)].field_0 * sub_cd48a44f / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256, 
               (userInfo[address(arg1)].field_0 * sub_09849c33 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_512
    if block.timestamp <= endTimestamp:
        if block.timestamp < lastRewardTimestamp:
            revert with 'NH{q', 17
        if block.timestamp - lastRewardTimestamp and sub_0eec6047 > -1 / block.timestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if sub_cd48a44f > -(1000000000000 * 10^18 * (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked) - 1:
            revert with 'NH{q', 17
        if block.timestamp - lastRewardTimestamp and sub_cfb395e4 > -1 / block.timestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if sub_09849c33 > -(1000000000000 * 10^18 * (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_cd48a44f + (1000000000000 * 10^18 * (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_cd48a44f * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_09849c33 + (1000000000000 * 10^18 * (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_09849c33 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((sub_cd48a44f * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256, 
               ((sub_09849c33 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_512
    if lastRewardTimestamp >= endTimestamp:
        if False and sub_0eec6047 > 0:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if sub_cd48a44f > -(0 / totalStaked) - 1:
            revert with 'NH{q', 17
        if False and sub_cfb395e4 > 0:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if sub_09849c33 > -(0 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_cd48a44f + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_cd48a44f * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_09849c33 + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_09849c33 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((sub_cd48a44f * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256, 
               ((sub_09849c33 * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_512
    if endTimestamp < lastRewardTimestamp:
        revert with 'NH{q', 17
    if endTimestamp - lastRewardTimestamp and sub_0eec6047 > -1 / endTimestamp - lastRewardTimestamp:
        revert with 'NH{q', 17
    if (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if sub_cd48a44f > -(1000000000000 * 10^18 * (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked) - 1:
        revert with 'NH{q', 17
    if endTimestamp - lastRewardTimestamp and sub_cfb395e4 > -1 / endTimestamp - lastRewardTimestamp:
        revert with 'NH{q', 17
    if (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 and 1000000000000 * 10^18 > -1 / (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if sub_09849c33 > -(1000000000000 * 10^18 * (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and sub_cd48a44f + (1000000000000 * 10^18 * (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (sub_cd48a44f * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and sub_09849c33 + (1000000000000 * 10^18 * (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (sub_09849c33 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_512:
        revert with 'NH{q', 17
    return ((sub_cd48a44f * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (endTimestamp * sub_0eec6047) - (lastRewardTimestamp * sub_0eec6047) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256, 
           ((sub_09849c33 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (endTimestamp * sub_cfb395e4) - (lastRewardTimestamp * sub_cfb395e4) / 24 * 3600 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_512
}

function emergencyRewardWithdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_059524ccAddress)
    staticcall sub_059524ccAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_54747cbaAddress)
    staticcall sub_54747cbaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if STAKE_TOKENAddress == sub_059524ccAddress:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        if arg1 > ext_call.return_data[0] - totalStaked:
            revert with 0, 'not enough rewards'
        if arg2 > ext_call.return_data[0]:
            revert with 0, 'not enough rewards'
    else:
        if STAKE_TOKENAddress != sub_54747cbaAddress:
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'not enough rewards'
            if arg2 > ext_call.return_data[0]:
                revert with 0, 'not enough rewards'
        else:
            if ext_call.return_data[0] < totalStaked:
                revert with 'NH{q', 17
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'not enough rewards'
            if arg2 > ext_call.return_data[0] - totalStaked:
                revert with 0, 'not enough rewards'
    if arg1 <= 0:
        if arg2 > 0:
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(sub_54747cbaAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call sub_54747cbaAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x5d13bc32: arg1, arg2, msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = arg1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_059524ccAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call sub_059524ccAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg2 > 0:
            mem[(2 * ceil32(return_data.size)) + 296] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 328] = arg2
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(sub_54747cbaAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, msg.sender, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call sub_54747cbaAddress with:
               funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x5d13bc32: arg1, arg2, msg.sender
    mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
        if not mem[(2 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg2 <= 0:
        emit 0x5d13bc32: arg1, arg2, msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_54747cbaAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, arg2, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call sub_54747cbaAddress with:
       funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x5d13bc32: arg1, arg2, msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size <= 0:
        emit 0x5d13bc32: arg1, arg2, msg.sender
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        emit 0x5d13bc32: arg1, arg2, msg.sender
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
