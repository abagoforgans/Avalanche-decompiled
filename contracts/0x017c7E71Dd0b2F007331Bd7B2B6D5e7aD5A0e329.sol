contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#  - _fallback()
#
const BONUS_MULTIPLIER = 10


address owner;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 tokensPerBlock;
uint256 totalAllocPoint;
uint8 stor5; offset 160
uint128 stor5; offset 160
address rewardReceiverAddress;
address sub_c453b6cdAddress;
address vestingAddress;
uint32 stor8;
address migratorAddress;
uint256 stor8;
address tokenAddress;
address stor10;
address stor11;
address stor12;
address stor13;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint8 stor16;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896574;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896575;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896576;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() {
    return totalAllocPoint
}

function tokensPerBlock() {
    return tokensPerBlock
}

function bonusEndBlock() {
    return bonusEndBlock
}

function rewardReceiver() {
    return rewardReceiverAddress
}

function withdrawEnabled() {
    return bool(uint8(stor5.field_160))
}

function vesting() {
    return vestingAddress
}

function startBlock() {
    return startBlock
}

function tokenAdded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function migrator() {
    return address(migratorAddress)
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_c453b6cd(?) {
    return sub_c453b6cdAddress
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_2e750771(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor5.field_160) = Mask(96, 0, not uint8(stor5.field_160))
}

function updateTokensPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokensPerBlock = arg1
}

function setMigrator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(migratorAddress) = arg1
}

function setRewardReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardReceiverAddress = arg1
}

function releaseETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function releaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg2 < arg1:
            revert with 0, 17
        if arg2 - arg1 and 10 > -1 / arg2 - arg1:
            revert with 0, 17
        return ((10 * arg2) - (10 * arg1))
    if arg1 >= bonusEndBlock:
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if arg2 < bonusEndBlock:
        revert with 0, 17
    if bonusEndBlock < arg1:
        revert with 0, 17
    if bonusEndBlock - arg1 and 10 > -1 / bonusEndBlock - arg1:
        revert with 0, 17
    if (10 * bonusEndBlock) - (10 * arg1) > !(arg2 - bonusEndBlock):
        revert with 0, 17
    return ((9 * bonusEndBlock) - (10 * arg1) + arg2)
}

function setEcosystemAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
    sub_c453b6cdAddress = arg1
    call arg1.0x68b64d1f with:
         gas gas_remaining wei
        args 'NMAC'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor13 = ext_call.return_data[12 len 20]
    tokenAddress = ext_call.return_data[12 len 20]
    call sub_c453b6cdAddress.0x68b64d1f with:
         gas gas_remaining wei
        args 'SSLinearVesting'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor11 = ext_call.return_data[12 len 20]
    vestingAddress = ext_call.return_data[12 len 20]
    call sub_c453b6cdAddress.0x68b64d1f with:
         gas gas_remaining wei
        args 'NanoReserve'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor12 = ext_call.return_data[12 len 20]
}

function migrate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(migratorAddress):
        revert with 0, 'Migrate: no migrator set'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[100] = this.address
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(migratorAddress)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor8)
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) << 288)
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
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(migratorAddress)
        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(migratorAddress)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(migratorAddress)
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) << 288)
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
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    call address(migratorAddress).migrate(address arg1) with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'Migrate: target balance doesn't match original balance'
    poolInfo[arg1].field_0 = address(ext_call.return_data[0])
}

function pendingRewards(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if block.number - poolInfo[arg1].field_512 and 10 > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if (10 * block.number) - (10 * poolInfo[arg1].field_512) and tokensPerBlock > -1 / (10 * block.number) - (10 * poolInfo[arg1].field_512):
            revert with 0, 17
        if (10 * block.number * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (10 * block.number * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if block.number - poolInfo[arg1].field_512 and tokensPerBlock > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if (block.number * tokensPerBlock) - (poolInfo[arg1].field_512 * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokensPerBlock) - (poolInfo[arg1].field_512 * tokensPerBlock):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < bonusEndBlock:
        revert with 0, 17
    if bonusEndBlock < poolInfo[arg1].field_512:
        revert with 0, 17
    if bonusEndBlock - poolInfo[arg1].field_512 and 10 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
        revert with 0, 17
    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) > !(block.number - bonusEndBlock):
        revert with 0, 17
    if (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number and tokensPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
        revert with 0, 17
    if (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) + (block.number * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) + (block.number * tokensPerBlock):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and 10 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (10 * block.number) - (10 * poolInfo[arg1].field_512) and tokensPerBlock > -1 / (10 * block.number) - (10 * poolInfo[arg1].field_512):
                    revert with 0, 17
                if (10 * block.number * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (10 * block.number * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args stor12, rewardReceiverAddress, (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args stor12, this.address, (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[arg1].field_512 and tokensPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.number * tokensPerBlock) - (poolInfo[arg1].field_512 * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokensPerBlock) - (poolInfo[arg1].field_512 * tokensPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, rewardReceiverAddress, (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, this.address, (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < bonusEndBlock:
                        revert with 0, 17
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and 10 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) > !(block.number - bonusEndBlock):
                        revert with 0, 17
                    if (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number and tokensPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                        revert with 0, 17
                    if (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) + (block.number * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) + (block.number * tokensPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, rewardReceiverAddress, (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, this.address, (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 14
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _34 = mem[_33]
            if mem[_33]:
                if block.number <= bonusEndBlock:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and 10 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (10 * block.number) - (10 * poolInfo[idx].field_512) and tokensPerBlock > -1 / (10 * block.number) - (10 * poolInfo[idx].field_512):
                        revert with 0, 17
                    if (10 * block.number * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (10 * block.number * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    mem[mem[64] + 4] = stor12
                    mem[mem[64] + 36] = rewardReceiverAddress
                    mem[mem[64] + 68] = (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, rewardReceiverAddress, (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _41 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_41] == bool(mem[_41])
                    mem[mem[64] + 4] = stor12
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, this.address, (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _49 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_49] == bool(mem[_49])
                    if (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not _34:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and tokensPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * tokensPerBlock) - (poolInfo[idx].field_512 * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokensPerBlock) - (poolInfo[idx].field_512 * tokensPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = rewardReceiverAddress
                        mem[mem[64] + 68] = (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, rewardReceiverAddress, (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _37 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_37] == bool(mem[_37])
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, this.address, (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _45 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_45] == bool(mem[_45])
                        if (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _34:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34
                    else:
                        if block.number < bonusEndBlock:
                            revert with 0, 17
                        if bonusEndBlock < poolInfo[idx].field_512:
                            revert with 0, 17
                        if bonusEndBlock - poolInfo[idx].field_512 and 10 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) > !(block.number - bonusEndBlock):
                            revert with 0, 17
                        if (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number and tokensPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                            revert with 0, 17
                        if (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) + (block.number * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) + (block.number * tokensPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = rewardReceiverAddress
                        mem[mem[64] + 68] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, rewardReceiverAddress, (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _53 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_53] == bool(mem[_53])
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, this.address, (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _57 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_57] == bool(mem[_57])
                        if (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _34:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updatePoolAllocPoint(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 14
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _40 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _41 = mem[_40]
                if mem[_40]:
                    if block.number <= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 10 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (10 * block.number) - (10 * poolInfo[idx].field_512) and tokensPerBlock > -1 / (10 * block.number) - (10 * poolInfo[idx].field_512):
                            revert with 0, 17
                        if (10 * block.number * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (10 * block.number * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = rewardReceiverAddress
                        mem[mem[64] + 68] = (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, rewardReceiverAddress, (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _49 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_49] == bool(mem[_49])
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, this.address, (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _57 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_57] == bool(mem[_57])
                        if (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _41:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.number - poolInfo[idx].field_512 and tokensPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.number * tokensPerBlock) - (poolInfo[idx].field_512 * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokensPerBlock) - (poolInfo[idx].field_512 * tokensPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = rewardReceiverAddress
                            mem[mem[64] + 68] = (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, rewardReceiverAddress, (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _45 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_45] == bool(mem[_45])
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, this.address, (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _53 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_53] == bool(mem[_53])
                            if (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _41:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41
                        else:
                            if block.number < bonusEndBlock:
                                revert with 0, 17
                            if bonusEndBlock < poolInfo[idx].field_512:
                                revert with 0, 17
                            if bonusEndBlock - poolInfo[idx].field_512 and 10 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) > !(block.number - bonusEndBlock):
                                revert with 0, 17
                            if (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number and tokensPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                                revert with 0, 17
                            if (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) + (block.number * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) + (block.number * tokensPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = rewardReceiverAddress
                            mem[mem[64] + 68] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, rewardReceiverAddress, (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _61 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_61] == bool(mem[_61])
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, this.address, (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _65 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_65] == bool(mem[_65])
                            if (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _41:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function addPool(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        if stor16[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking: this pool was already added'
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 14
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _67 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _68 = mem[_67]
                if mem[_67]:
                    if block.number <= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 10 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (10 * block.number) - (10 * poolInfo[idx].field_512) and tokensPerBlock > -1 / (10 * block.number) - (10 * poolInfo[idx].field_512):
                            revert with 0, 17
                        if (10 * block.number * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (10 * block.number * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = rewardReceiverAddress
                        mem[mem[64] + 68] = (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, rewardReceiverAddress, (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _85 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_85] == bool(mem[_85])
                        mem[mem[64] + 4] = stor12
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor12, this.address, (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _93 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_93] == bool(mem[_93])
                        if (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _68:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _68):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (10 * block.number * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _68
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.number - poolInfo[idx].field_512 and tokensPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.number * tokensPerBlock) - (poolInfo[idx].field_512 * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokensPerBlock) - (poolInfo[idx].field_512 * tokensPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = rewardReceiverAddress
                            mem[mem[64] + 68] = (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, rewardReceiverAddress, (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _81 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_81] == bool(mem[_81])
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, this.address, (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _89 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_89] == bool(mem[_89])
                            if (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _68:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _68):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.number * tokensPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _68
                        else:
                            if block.number < bonusEndBlock:
                                revert with 0, 17
                            if bonusEndBlock < poolInfo[idx].field_512:
                                revert with 0, 17
                            if bonusEndBlock - poolInfo[idx].field_512 and 10 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) > !(block.number - bonusEndBlock):
                                revert with 0, 17
                            if (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number and tokensPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                                revert with 0, 17
                            if (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) + (block.number * tokensPerBlock) and poolInfo[idx].field_256 > -1 / (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[idx].field_512 * tokensPerBlock) + (block.number * tokensPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = rewardReceiverAddress
                            mem[mem[64] + 68] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, rewardReceiverAddress, (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _97 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_97] == bool(mem[_97])
                            mem[mem[64] + 4] = stor12
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor12, this.address, (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_101] == bool(mem[_101])
                            if (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _68:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _68):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * tokensPerBlock * poolInfo[idx].field_256) + (block.number * tokensPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _68
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor16[address(arg2)]:
            revert with 0, 'Staking: this pool was already added'
    ('iszero', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor16', 16))))
    stor16[address(arg2)] = 1
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storBB7B[stor14.length] = arg1
    if block.number > startBlock:
        storBB7B[stor14.length] = block.number
    else:
        storBB7B[stor14.length] = startBlock
    storBB7B[stor14.length] = 0
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor5.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking: withdrawing is not enabled'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking: withdrawal request exceeds reward balance'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[100] = this.address
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = stor11
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor11, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor11, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        call vestingAddress.0x5b55232e with:
             gas gas_remaining wei
            args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        if userInfo[arg1][msg.sender].field_0 - arg2 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0 - arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
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
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = this.address
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 100] = stor11
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            else:
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            call vestingAddress.0x5b55232e with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_0 < arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 -= arg2
            if userInfo[arg1][msg.sender].field_0 - arg2 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0 - arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = arg2
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
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
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if block.number <= bonusEndBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and 10 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (10 * block.number) - (10 * poolInfo[arg1].field_512) and tokensPerBlock > -1 / (10 * block.number) - (10 * poolInfo[arg1].field_512):
                    revert with 0, 17
                if (10 * block.number * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (10 * block.number * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                mem[ceil32(return_data.size) + 100] = stor12
                mem[ceil32(return_data.size) + 132] = rewardReceiverAddress
                mem[ceil32(return_data.size) + 164] = (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args stor12, rewardReceiverAddress, (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 100] = stor12
                mem[(2 * ceil32(return_data.size)) + 132] = this.address
                mem[(2 * ceil32(return_data.size)) + 164] = (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args stor12, this.address, (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[arg1].field_512 and tokensPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.number * tokensPerBlock) - (poolInfo[arg1].field_512 * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokensPerBlock) - (poolInfo[arg1].field_512 * tokensPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    mem[ceil32(return_data.size) + 100] = stor12
                    mem[ceil32(return_data.size) + 132] = rewardReceiverAddress
                    mem[ceil32(return_data.size) + 164] = (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, rewardReceiverAddress, (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 100] = stor12
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, this.address, (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.number * tokensPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < bonusEndBlock:
                        revert with 0, 17
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and 10 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) > !(block.number - bonusEndBlock):
                        revert with 0, 17
                    if (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number and tokensPerBlock > -1 / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                        revert with 0, 17
                    if (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) + (block.number * tokensPerBlock) and poolInfo[arg1].field_256 > -1 / (9 * bonusEndBlock * tokensPerBlock) - (10 * poolInfo[arg1].field_512 * tokensPerBlock) + (block.number * tokensPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    mem[ceil32(return_data.size) + 100] = stor12
                    mem[ceil32(return_data.size) + 132] = rewardReceiverAddress
                    mem[ceil32(return_data.size) + 164] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, rewardReceiverAddress, (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 100] = stor12
                    mem[(2 * ceil32(return_data.size)) + 132] = this.address
                    mem[(2 * ceil32(return_data.size)) + 164] = (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args stor12, this.address, (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * tokensPerBlock * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * tokensPerBlock * poolInfo[arg1].field_256) + (block.number * tokensPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.number
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 100] = stor11
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            else:
                mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            call vestingAddress.0x5b55232e with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_0 < arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 -= arg2
            if userInfo[arg1][msg.sender].field_0 - arg2 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0 - arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
            mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(8 * ceil32(return_data.size)) + 164] = arg2
            mem[(8 * ceil32(return_data.size)) + 96] = 68
            mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(8 * ceil32(return_data.size)) + 196] = 32
            mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[(8 * ceil32(return_data.size)) + 328] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
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
                mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                    if not mem[(8 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(arg2, msg.sender, arg1);
    return ext_call.return_data[0]
}



}
