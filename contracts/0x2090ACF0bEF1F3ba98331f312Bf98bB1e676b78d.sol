contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - sub_57b5ac33(?)
#  - depositBehalf(address arg1, uint256 arg2, uint256 arg3)
#  - deposit(uint256 arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor51;
uint8 stor101;
address veeAddress; offset 8
uint32 stor102;
address sub_0ff8b0abAddress;
uint256 stor102;
uint256 rewardsPerBlock;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
mapping of uint8 stor110;
mapping of uint256 sub_838825eb;
array of address stor57762096780731528330405058414938765910932439953606620384872163540286326260488;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260489;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260490;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260491;

function endBlock() payable {
    return endBlock
}

function sub_0ff8b0ab(?) payable {
    return address(sub_0ff8b0abAddress)
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function getPoolSize() payable {
    return poolInfo.length
}

function vee() payable {
    return veeAddress
}

function startBlock() payable {
    return startBlock
}

function rewardsPerBlock() payable {
    return rewardsPerBlock
}

function sub_838825eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_838825eb[arg1]
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return address(owner)
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           bool(userInfo[arg1][arg2].field_1024)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    BONUS_MULTIPLIER = arg1
}

function setRewardsPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPerBlock = arg1
    emit 0xfa18e69a: arg1, rewardsPerBlock
}

function sub_20d9931f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_0ff8b0abAddress) = address(arg1)
    emit 0x9e24714b: address(arg1), address(sub_0ff8b0abAddress)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if uint8(stor0.field_8):
        rewardsPerBlock = arg2
        startBlock = arg3
        endBlock = arg4
        totalAllocPoint = 0
        BONUS_MULTIPLIER = 1
        stor101 = 1
        veeAddress = arg1
        uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
        emit OwnershipTransferred(0, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            rewardsPerBlock = arg2
            startBlock = arg3
            endBlock = arg4
            totalAllocPoint = 0
            BONUS_MULTIPLIER = 1
            stor101 = 1
            veeAddress = arg1
            uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            rewardsPerBlock = arg2
            startBlock = arg3
            endBlock = arg4
            totalAllocPoint = 0
            BONUS_MULTIPLIER = 1
            stor101 = 1
            veeAddress = arg1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}

function updateAllPools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 105
        if block.number > poolInfo[idx].field_512:
            mem[0] = poolInfo[idx].field_0
            mem[32] = 111
            if sub_838825eb[stor105[idx].field_0]:
                if block.number <= endBlock:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not sub_838825eb[stor105[idx].field_0]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                else:
                    if poolInfo[idx].field_512 >= endBlock:
                        if False and rewardsPerBlock > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not sub_838825eb[stor105[idx].field_0]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                    else:
                        if endBlock < poolInfo[idx].field_512:
                            revert with 0, 17
                        if endBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / endBlock - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not sub_838825eb[stor105[idx].field_0]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7b56b40a(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(0xd69de4d5ff6778b59ff504d7d09327b73344ff10)
    staticcall 0xd69de4d5ff6778b59ff504d7d09327b73344ff10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = 0xda959f3464fe2375f0b1f8a872404181931978b2
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = 0xda959f3464fe2375f0b1f8a872404181
        mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xd69de4d5ff6778b59ff504d7d09327b73344ff10):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address rg1, uint256 rg2), 0xda959f3464fe2375f0b1f8a8, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call 0xd69de4d5ff6778b59ff504d7d09327b73344ff10 with:
           funct Mask(32, 224, approve(address rg1, uint256 rg2), 0xda959f3464fe2375f0b1f8a8, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address rg1, uint256 rg2), 0xda959f3464fe2375f0b1f8a8, 0, ext_call.return_data[0], 0) << 288)
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
        mem[ceil32(return_data.size) + 132] = 0xda959f3464fe2375f0b1f8a872404181931978b2
        require ext_code.size(0xd69de4d5ff6778b59ff504d7d09327b73344ff10)
        staticcall 0xd69de4d5ff6778b59ff504d7d09327b73344ff10.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0xda959f3464fe2375f0b1f8a872404181931978b2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = 0xda959f3464fe2375f0b1f8a872404181931978b2
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = 0xda959f3464fe2375f0b1f8a872404181
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xd69de4d5ff6778b59ff504d7d09327b73344ff10):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address rg1, uint256 rg2), 0xda959f3464fe2375f0b1f8a8, 0, ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call 0xd69de4d5ff6778b59ff504d7d09327b73344ff10 with:
           funct Mask(32, 224, approve(address rg1, uint256 rg2), 0xda959f3464fe2375f0b1f8a8, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address rg1, uint256 rg2), 0xda959f3464fe2375f0b1f8a8, 0, ext_call.return_data[0], 0) << 288)
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
    require ext_code.size(0xda959f3464fe2375f0b1f8a872404181931978b2)
    call 0xda959f3464fe2375f0b1f8a872404181931978b2.stake(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pendingRewards(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_768)
    if not sub_838825eb[stor105[arg1].field_0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_768)
    if block.number <= endBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if block.number - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
            revert with 0, 17
        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not sub_838825eb[stor105[arg1].field_0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768)
    if poolInfo[arg1].field_512 >= endBlock:
        if False and rewardsPerBlock > 0:
            revert with 0, 17
        if False and poolInfo[arg1].field_256 > 0:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not sub_838825eb[stor105[arg1].field_0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[arg1].field_0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[arg1].field_0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[arg1].field_0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[arg1].field_0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768)
    if endBlock < poolInfo[arg1].field_512:
        revert with 0, 17
    if endBlock - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / endBlock - poolInfo[arg1].field_512:
        revert with 0, 17
    if (endBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (endBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
        revert with 0, 17
    if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not sub_838825eb[stor105[arg1].field_0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / sub_838825eb[stor105[arg1].field_0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768)
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 105
            if block.number > poolInfo[idx].field_512:
                mem[0] = poolInfo[idx].field_0
                mem[32] = 111
                if sub_838825eb[stor105[idx].field_0]:
                    if block.number <= endBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not sub_838825eb[stor105[idx].field_0]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                    else:
                        if poolInfo[idx].field_512 >= endBlock:
                            if False and rewardsPerBlock > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not sub_838825eb[stor105[idx].field_0]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                        else:
                            if endBlock < poolInfo[idx].field_512:
                                revert with 0, 17
                            if endBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / endBlock - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                revert with 0, 17
                            if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not sub_838825eb[stor105[idx].field_0]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    if poolInfo[arg1].field_256 != arg2:
        if totalAllocPoint < poolInfo[arg1].field_256:
            revert with 0, 17
        if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
            revert with 0, 17
        totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
        idx = 0
        s = 0
        while idx < poolInfo.length:
            mem[0] = 105
            if s > !poolInfo[idx].field_256:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + poolInfo[idx].field_256
            continue 
        totalAllocPoint = s * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor110[address(arg2)]:
        revert with 0, 'token exists'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 105
            if block.number > poolInfo[idx].field_512:
                mem[0] = poolInfo[idx].field_0
                mem[32] = 111
                if sub_838825eb[stor105[idx].field_0]:
                    if block.number <= endBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not sub_838825eb[stor105[idx].field_0]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                    else:
                        if poolInfo[idx].field_512 >= endBlock:
                            if False and rewardsPerBlock > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not sub_838825eb[stor105[idx].field_0]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                        else:
                            if endBlock < poolInfo[idx].field_512:
                                revert with 0, 17
                            if endBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / endBlock - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                revert with 0, 17
                            if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not sub_838825eb[stor105[idx].field_0]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    stor7FB4[stor105.length] = arg2
    stor7FB4[stor105.length] = arg1
    if block.number > startBlock:
        stor7FB4[stor105.length] = block.number
    else:
        stor7FB4[stor105.length] = startBlock
    stor7FB4[stor105.length] = 0
    stor110[address(arg2)] = 1
    idx = 0
    s = 0
    while idx < poolInfo.length:
        mem[0] = 105
        if s > !poolInfo[idx].field_256:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + poolInfo[idx].field_256
        continue 
    totalAllocPoint = s * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length
}

function sub_c06d638e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor101:
        revert with 0, 're-entered!'
    stor101 = 0
    idx = 0
    s = 0
    while idx < poolInfo.length:
        mem[32] = sha3(idx, 106)
        mem[0] = 105
        if block.number > poolInfo[idx].field_512:
            mem[0] = poolInfo[idx].field_0
            mem[32] = 111
            if sub_838825eb[stor105[idx].field_0]:
                if block.number <= endBlock:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not sub_838825eb[stor105[idx].field_0]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                else:
                    if poolInfo[idx].field_512 >= endBlock:
                        if False and rewardsPerBlock > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not sub_838825eb[stor105[idx].field_0]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
                    else:
                        if endBlock < poolInfo[idx].field_512:
                            revert with 0, 17
                        if endBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / endBlock - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardsPerBlock > -1 / (endBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * BONUS_MULTIPLIER * rewardsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not sub_838825eb[stor105[idx].field_0]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (endBlock * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / sub_838825eb[stor105[idx].field_0]
            poolInfo[idx].field_512 = block.number
        if userInfo[idx][address(arg1)].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[idx][address(arg1)].field_0:
            userInfo[idx][address(arg1)].field_768 = userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12 < userInfo[idx][address(arg1)].field_768:
            revert with 0, 17
        if s > !((userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(arg1)].field_768):
            revert with 0, 17
        mem[96] = (userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(arg1)].field_768
        emit 0x31bebc70: ((userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(arg1)].field_768), address(arg1), idx
        if userInfo[idx][address(arg1)].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][address(arg1)].field_0:
            revert with 0, 17
        userInfo[idx][address(arg1)].field_768 = userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(arg1)].field_768
        continue 
    mem[100] = this.address
    require ext_code.size(veeAddress)
    staticcall veeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if s > 0:
        if s <= ext_call.return_data[0]:
            if not s:
                mem[ceil32(return_data.size) + 132] = address(sub_0ff8b0abAddress)
                mem[ceil32(return_data.size) + 164] = s
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor102)
                mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(veeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), s, 0
                mem[ceil32(return_data.size) + 328] = 0
                call veeAddress with:
                   funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), s, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), s, 0) << 288)
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
                mem[ceil32(return_data.size) + 132] = address(sub_0ff8b0abAddress)
                require ext_code.size(veeAddress)
                staticcall veeAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(sub_0ff8b0abAddress)
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(2 * ceil32(return_data.size)) + 132] = address(sub_0ff8b0abAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = s
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor102)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address rg1, uint256 rg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(veeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), s, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call veeAddress with:
                   funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), s, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), s, 0) << 288)
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
            require ext_code.size(address(sub_0ff8b0abAddress))
            call address(sub_0ff8b0abAddress).deposit(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}



}
