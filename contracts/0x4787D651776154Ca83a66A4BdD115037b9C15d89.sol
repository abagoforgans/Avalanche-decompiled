contract main {




// =====================  Runtime code  =====================


#
#  - claim(address arg1)
#
const MULTIPLIER = 1000000000000000000 * 10^18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stakeTokenAddress;
uint256 totalStaked;
mapping of uint256 userStaked;
mapping of struct rewards;
uint256 rewardsId;
mapping of struct userStates;

function userStates(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userStates[arg1][arg2].field_0, userStates[arg1][arg2].field_256
}

function stakeToken() payable {
    return stakeTokenAddress
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function userStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userStaked[arg1]
}

function rewardsId() payable {
    return rewardsId
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1].field_0, 
           rewards[arg1].field_256,
           rewards[arg1].field_512,
           rewards[arg1].field_768,
           rewards[arg1].field_1024,
           rewards[arg1].field_1280
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stakeTokenAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stakeTokenAddress = arg1
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stakeTokenAddress = arg1
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stakeTokenAddress = arg1
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        stakeTokenAddress = arg1
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        stakeTokenAddress = arg1
                        Mask(248, 0, stor0.field_8) = 0
}

function setNewReward(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= block.number:
        revert with 0, 'illegal start block'
    if arg4 <= arg3:
        revert with 0, 'illegal end block'
    if rewardsId == -1:
        revert with 'NH{q', 17
    rewardsId++
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = 1000000000000000000 * 10^18
    mem[256] = arg3
    rewards[stor105].field_0 = arg1
    rewards[stor105].field_256 = arg2
    rewards[stor105].field_512 = arg3
    rewards[stor105].field_768 = arg4
    rewards[stor105].field_1024 = 1000000000000000000 * 10^18
    rewards[stor105].field_1280 = arg3
    if arg4 < arg3:
        revert with 'NH{q', 17
    if arg4 - arg3 and arg2 > -1 / arg4 - arg3:
        revert with 'NH{q', 17
    mem[324] = msg.sender
    mem[356] = this.address
    mem[388] = (arg4 * arg2) - (arg3 * arg2)
    mem[288] = 100
    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[320 len 4] = unknown_0x23b872dd(?????)
    mem[420] = 32
    mem[452] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), (arg4 * arg2) - (arg3 * arg2), 0
    mem[584] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), (arg4 * arg2) - (arg3 * arg2), 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), (arg4 * arg2) - (arg3 * arg2), 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg1 > 0:
                revert with memory
                  from 128
                   len arg1
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1 > 0:
            require arg1 >= 32
            require arg2 == bool(arg2)
            if not arg2:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[516] == bool(mem[516])
            if not mem[516]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x97c9184a: rewardsId, address(arg1), arg2, arg3, arg4
}

function claimReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalStaked:
        if rewards[arg2].field_512 < block.number:
            if block.number < rewards[arg2].field_768:
                if block.number < rewards[arg2].field_1280:
                    revert with 'NH{q', 17
                if block.number - rewards[arg2].field_1280:
                    if block.number - rewards[arg2].field_1280 and rewards[arg2].field_256 > -1 / block.number - rewards[arg2].field_1280:
                        revert with 'NH{q', 17
                    if (block.number * rewards[arg2].field_256) - (rewards[arg2].field_1280 * rewards[arg2].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[arg2].field_256) - (rewards[arg2].field_1280 * rewards[arg2].field_256):
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if rewards[arg2].field_1024 > -((1000000000000000000 * 10^18 * block.number * rewards[arg2].field_256) - (1000000000000000000 * 10^18 * rewards[arg2].field_1280 * rewards[arg2].field_256) / totalStaked) - 1:
                        revert with 'NH{q', 17
                    rewards[arg2].field_1024 += (1000000000000000000 * 10^18 * block.number * rewards[arg2].field_256) - (1000000000000000000 * 10^18 * rewards[arg2].field_1280 * rewards[arg2].field_256) / totalStaked
                    rewards[arg2].field_1280 = block.number
            else:
                if rewards[arg2].field_768 < rewards[arg2].field_1280:
                    revert with 'NH{q', 17
                if rewards[arg2].field_768 - rewards[arg2].field_1280:
                    if rewards[arg2].field_768 - rewards[arg2].field_1280 and rewards[arg2].field_256 > -1 / rewards[arg2].field_768 - rewards[arg2].field_1280:
                        revert with 'NH{q', 17
                    if (rewards[arg2].field_768 * rewards[arg2].field_256) - (rewards[arg2].field_1280 * rewards[arg2].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[arg2].field_768 * rewards[arg2].field_256) - (rewards[arg2].field_1280 * rewards[arg2].field_256):
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if rewards[arg2].field_1024 > -((1000000000000000000 * 10^18 * rewards[arg2].field_768 * rewards[arg2].field_256) - (1000000000000000000 * 10^18 * rewards[arg2].field_1280 * rewards[arg2].field_256) / totalStaked) - 1:
                        revert with 'NH{q', 17
                    rewards[arg2].field_1024 += (1000000000000000000 * 10^18 * rewards[arg2].field_768 * rewards[arg2].field_256) - (1000000000000000000 * 10^18 * rewards[arg2].field_1280 * rewards[arg2].field_256) / totalStaked
                    rewards[arg2].field_1280 = rewards[arg2].field_768
    if not userStates[address(arg1)][arg2].field_0:
        if rewards[arg2].field_1024 >= 1000000000000000000 * 10^18:
            userStates[address(arg1)][arg2].field_0 = 1000000000000000000 * 10^18
    if rewards[arg2].field_1024 < userStates[address(arg1)][arg2].field_0:
        revert with 'NH{q', 17
    if rewards[arg2].field_1024 - userStates[address(arg1)][arg2].field_0 and userStaked[address(arg1)] > -1 / rewards[arg2].field_1024 - userStates[address(arg1)][arg2].field_0:
        revert with 'NH{q', 17
    if userStates[address(arg1)][arg2].field_256 > -((rewards[arg2].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][arg2].field_0 * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
        revert with 'NH{q', 17
    userStates[address(arg1)][arg2].field_256 += (rewards[arg2].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][arg2].field_0 * userStaked[address(arg1)]) / 1000000000000000000 * 10^18
    userStates[address(arg1)][arg2].field_0 = rewards[arg2].field_1024
    if userStates[address(arg1)][arg2].field_256 > 0:
        mem[100] = this.address
        require ext_code.size(rewards[arg2].field_0)
        staticcall rewards[arg2].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > userStates[address(arg1)][arg2].field_256:
            mem[ceil32(return_data.size) + 132] = arg1
            mem[ceil32(return_data.size) + 164] = userStates[address(arg1)][arg2].field_256
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(rewards[arg2].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, userStates[address(arg1)][arg2].field_256, 0
            mem[ceil32(return_data.size) + 328] = 0
            call rewards[arg2].field_0 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, userStates[address(arg1)][arg2].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, userStates[address(arg1)][arg2].field_256, 0) << 288)
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
            userStates[address(arg1)][arg2].field_256 = 0
    emit 0x6c649450: arg2, address(arg1), userStates[address(arg1)][arg2].field_0, (rewards[arg2].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][arg2].field_0 * userStaked[address(arg1)]) / 1000000000000000000 * 10^18
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardsId > test266151307():
        revert with 'NH{q', 65
    mem[96] = rewardsId
    mem[64] = (32 * rewardsId) + 128
    if not rewardsId:
        if not totalStaked:
            mem[(32 * rewardsId) + 128] = 32
            mem[(32 * rewardsId) + 160] = rewardsId
            mem[(32 * rewardsId) + 192 len 32 * rewardsId] = mem[128 len 32 * rewardsId]
            return memory
              from (32 * rewardsId) + 128
               len (96 * rewardsId) + 64
        idx = 1
        while idx <= rewardsId:
            mem[0] = idx
            mem[32] = 104
            _117 = mem[64]
            mem[64] = mem[64] + 192
            mem[_117] = rewards[idx].field_0
            mem[_117 + 32] = rewards[idx].field_256
            mem[_117 + 64] = rewards[idx].field_512
            mem[_117 + 96] = rewards[idx].field_768
            mem[_117 + 128] = rewards[idx].field_1024
            mem[_117 + 160] = rewards[idx].field_1280
            if rewards[idx].field_512 < block.number:
                if block.number < rewards[idx].field_768:
                    if block.number < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if block.number - rewards[idx].field_1280:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 106)
                        _148 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_148] = userStates[address(arg1)][idx].field_0
                        mem[_148 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_148] = 1000000000000000000 * 10^18
                                if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                else:
                    if rewards[idx].field_768 < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if rewards[idx].field_768 - rewards[idx].field_1280:
                        if rewards[idx].field_768 - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / rewards[idx].field_768 - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 106)
                        _152 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_152] = userStates[address(arg1)][idx].field_0
                        mem[_152 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_152] = 1000000000000000000 * 10^18
                                if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * rewardsId] = call.data[calldata.size len 32 * rewardsId]
        if not totalStaked:
            mem[(32 * rewardsId) + 128] = 32
            mem[(32 * rewardsId) + 160] = rewardsId
            mem[(32 * rewardsId) + 192 len 32 * rewardsId] = call.data[calldata.size len 32 * rewardsId]
            return memory
              from (32 * rewardsId) + 128
               len (96 * rewardsId) + 64
        idx = 1
        while idx <= rewardsId:
            mem[0] = idx
            mem[32] = 104
            _121 = mem[64]
            mem[64] = mem[64] + 192
            mem[_121] = rewards[idx].field_0
            mem[_121 + 32] = rewards[idx].field_256
            mem[_121 + 64] = rewards[idx].field_512
            mem[_121 + 96] = rewards[idx].field_768
            mem[_121 + 128] = rewards[idx].field_1024
            mem[_121 + 160] = rewards[idx].field_1280
            if rewards[idx].field_512 < block.number:
                if block.number < rewards[idx].field_768:
                    if block.number < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if block.number - rewards[idx].field_1280:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 106)
                        _156 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_156] = userStates[address(arg1)][idx].field_0
                        mem[_156 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_156] = 1000000000000000000 * 10^18
                                if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                else:
                    if rewards[idx].field_768 < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if rewards[idx].field_768 - rewards[idx].field_1280:
                        if rewards[idx].field_768 - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / rewards[idx].field_768 - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 106)
                        _160 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_160] = userStates[address(arg1)][idx].field_0
                        mem[_160 + 32] = userStates[address(arg1)][idx].field_256
                        if userStates[address(arg1)][idx].field_0:
                            if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                revert with 'NH{q', 17
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                revert with 'NH{q', 17
                            mem[0] = arg1
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                revert with 'NH{q', 17
                            if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < userStates[address(arg1)][idx].field_0:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 - userStates[address(arg1)][idx].field_0 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked):
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (userStates[address(arg1)][idx].field_0 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
                            else:
                                mem[_160] = 1000000000000000000 * 10^18
                                if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                                    revert with 'NH{q', 17
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if rewards[idx].field_1024 - 1000000000000000000 * 10^18 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = arg1
                                mem[32] = 103
                                if rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18 and userStaked[address(arg1)] > -1 / rewards[idx].field_1024 + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1000000000000000000 * 10^18:
                                    revert with 'NH{q', 17
                                if userStates[address(arg1)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx - 1) + 128] = userStates[address(arg1)][idx].field_256 + ((rewards[idx].field_1024 * userStaked[address(arg1)]) - (1000000000000000000 * 10^18 * userStaked[address(arg1)]) + ((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked * userStaked[address(arg1)]) / 1000000000000000000 * 10^18)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function claimBatch(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _3192 = mem[(32 * idx) + 128]
        s = 1
        while s <= rewardsId:
            if not totalStaked:
                if userStates[address(_3192)][s].field_0:
                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                        revert with 'NH{q', 17
                    mem[0] = address(_3192)
                    mem[32] = 103
                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                    if userStates[address(_3192)][s].field_256 <= 0:
                        mem[mem[64]] = s
                        mem[mem[64] + 32] = address(_3192)
                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[s].field_0)
                        staticcall rewards[s].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4843] == mem[_4843]
                        if mem[_4843] <= userStates[address(_3192)][s].field_256:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3192)
                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        else:
                            _4893 = mem[64]
                            mem[mem[64] + 36] = address(_3192)
                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                            _4927 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_4927 + 32] = mem[_4927 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _4893 + 164
                            mem[_4893 + 100] = 32
                            mem[_4893 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(rewards[s].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _4983 = mem[_4927]
                            idx = 0
                            while idx < _4983:
                                mem[_4893 + idx + 164] = mem[_4927 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4983) > _4983:
                                mem[_4893 + _4983 + 164] = 0
                            call rewards[s].field_0.mem[_4893 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_4893 + 168 len _4983 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_4893 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_4893 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_4893 + idx + 232] = mem[_4893 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_4893 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(_3192)][s].field_256 = 0
                                mem[_4893 + 164] = s
                                mem[_4893 + 196] = address(_3192)
                                mem[_4893 + 228] = userStates[address(_3192)][s].field_0
                                mem[_4893 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _4893 + ceil32(return_data.size) + 165
                                mem[_4893 + 164] = return_data.size
                                mem[_4893 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_4893 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_4893 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_4893 + ceil32(return_data.size) + idx + 233] = mem[_4893 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_4893 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_4893 + 196] == bool(mem[_4893 + 196])
                                    if not mem[_4893 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(_3192)][s].field_256 = 0
                                mem[_4893 + ceil32(return_data.size) + 165] = s
                                mem[_4893 + ceil32(return_data.size) + 197] = address(_3192)
                                mem[_4893 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                mem[_4893 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                else:
                    if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                        if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                            revert with 'NH{q', 17
                        mem[0] = address(_3192)
                        mem[32] = 103
                        if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                        if userStates[address(_3192)][s].field_256 <= 0:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3192)
                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[s].field_0)
                            staticcall rewards[s].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4849] == mem[_4849]
                            if mem[_4849] <= userStates[address(_3192)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3192)
                                mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                _4901 = mem[64]
                                mem[mem[64] + 36] = address(_3192)
                                mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                _4934 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4934 + 32] = mem[_4934 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _4901 + 164
                                mem[_4901 + 100] = 32
                                mem[_4901 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(rewards[s].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4989 = mem[_4934]
                                idx = 0
                                while idx < _4989:
                                    mem[_4901 + idx + 164] = mem[_4934 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_4989) > _4989:
                                    mem[_4901 + _4989 + 164] = 0
                                call rewards[s].field_0.mem[_4901 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_4901 + 168 len _4989 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_4901 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4901 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_4901 + idx + 232] = mem[_4901 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4901 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3192)][s].field_256 = 0
                                    mem[_4901 + 164] = s
                                    mem[_4901 + 196] = address(_3192)
                                    mem[_4901 + 228] = userStates[address(_3192)][s].field_0
                                    mem[_4901 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _4901 + ceil32(return_data.size) + 165
                                    mem[_4901 + 164] = return_data.size
                                    mem[_4901 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_4901 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4901 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_4901 + ceil32(return_data.size) + idx + 233] = mem[_4901 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4901 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_4901 + 196] == bool(mem[_4901 + 196])
                                        if not mem[_4901 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3192)][s].field_256 = 0
                                    mem[_4901 + ceil32(return_data.size) + 165] = s
                                    mem[_4901 + ceil32(return_data.size) + 197] = address(_3192)
                                    mem[_4901 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                    mem[_4901 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                    else:
                        userStates[address(_3192)][s].field_0 = 1000000000000000000 * 10^18
                        if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                            revert with 'NH{q', 17
                        mem[0] = address(_3192)
                        mem[32] = 103
                        if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                        if userStates[address(_3192)][s].field_256 <= 0:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3192)
                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[s].field_0)
                            staticcall rewards[s].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4855] == mem[_4855]
                            if mem[_4855] <= userStates[address(_3192)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3192)
                                mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                _4907 = mem[64]
                                mem[mem[64] + 36] = address(_3192)
                                mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                _4940 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4940 + 32] = mem[_4940 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _4907 + 164
                                mem[_4907 + 100] = 32
                                mem[_4907 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(rewards[s].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _5000 = mem[_4940]
                                idx = 0
                                while idx < _5000:
                                    mem[_4907 + idx + 164] = mem[_4940 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5000) > _5000:
                                    mem[_4907 + _5000 + 164] = 0
                                call rewards[s].field_0.mem[_4907 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_4907 + 168 len _5000 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_4907 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4907 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_4907 + idx + 232] = mem[_4907 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4907 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3192)][s].field_256 = 0
                                    mem[_4907 + 164] = s
                                    mem[_4907 + 196] = address(_3192)
                                    mem[_4907 + 228] = userStates[address(_3192)][s].field_0
                                    mem[_4907 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _4907 + ceil32(return_data.size) + 165
                                    mem[_4907 + 164] = return_data.size
                                    mem[_4907 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_4907 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4907 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_4907 + ceil32(return_data.size) + idx + 233] = mem[_4907 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4907 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_4907 + 196] == bool(mem[_4907 + 196])
                                        if not mem[_4907 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3192)][s].field_256 = 0
                                    mem[_4907 + ceil32(return_data.size) + 165] = s
                                    mem[_4907 + ceil32(return_data.size) + 197] = address(_3192)
                                    mem[_4907 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                    mem[_4907 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
            else:
                if rewards[s].field_512 >= block.number:
                    if userStates[address(_3192)][s].field_0:
                        if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                            revert with 'NH{q', 17
                        mem[0] = address(_3192)
                        mem[32] = 103
                        if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                        if userStates[address(_3192)][s].field_256 <= 0:
                            mem[mem[64]] = s
                            mem[mem[64] + 32] = address(_3192)
                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[s].field_0)
                            staticcall rewards[s].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4847 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4847] == mem[_4847]
                            if mem[_4847] <= userStates[address(_3192)][s].field_256:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3192)
                                mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                _4898 = mem[64]
                                mem[mem[64] + 36] = address(_3192)
                                mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                _4931 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_4931 + 32] = mem[_4931 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _4898 + 164
                                mem[_4898 + 100] = 32
                                mem[_4898 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(rewards[s].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4988 = mem[_4931]
                                idx = 0
                                while idx < _4988:
                                    mem[_4898 + idx + 164] = mem[_4931 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_4988) > _4988:
                                    mem[_4898 + _4988 + 164] = 0
                                call rewards[s].field_0.mem[_4898 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_4898 + 168 len _4988 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_4898 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4898 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_4898 + idx + 232] = mem[_4898 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4898 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3192)][s].field_256 = 0
                                    mem[_4898 + 164] = s
                                    mem[_4898 + 196] = address(_3192)
                                    mem[_4898 + 228] = userStates[address(_3192)][s].field_0
                                    mem[_4898 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _4898 + ceil32(return_data.size) + 165
                                    mem[_4898 + 164] = return_data.size
                                    mem[_4898 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_4898 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4898 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_4898 + ceil32(return_data.size) + idx + 233] = mem[_4898 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_4898 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_4898 + 196] == bool(mem[_4898 + 196])
                                        if not mem[_4898 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(_3192)][s].field_256 = 0
                                    mem[_4898 + ceil32(return_data.size) + 165] = s
                                    mem[_4898 + ceil32(return_data.size) + 197] = address(_3192)
                                    mem[_4898 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                    mem[_4898 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                            if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                revert with 'NH{q', 17
                            mem[0] = address(_3192)
                            mem[32] = 103
                            if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                            if userStates[address(_3192)][s].field_256 <= 0:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3192)
                                mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[s].field_0)
                                staticcall rewards[s].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4854 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4854] == mem[_4854]
                                if mem[_4854] <= userStates[address(_3192)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3192)
                                    mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    _4905 = mem[64]
                                    mem[mem[64] + 36] = address(_3192)
                                    mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                    _4937 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4937 + 32] = mem[_4937 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _4905 + 164
                                    mem[_4905 + 100] = 32
                                    mem[_4905 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[s].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _4998 = mem[_4937]
                                    idx = 0
                                    while idx < _4998:
                                        mem[_4905 + idx + 164] = mem[_4937 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_4998) > _4998:
                                        mem[_4905 + _4998 + 164] = 0
                                    call rewards[s].field_0.mem[_4905 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4905 + 168 len _4998 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4905 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4905 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_4905 + idx + 232] = mem[_4905 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4905 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3192)][s].field_256 = 0
                                        mem[_4905 + 164] = s
                                        mem[_4905 + 196] = address(_3192)
                                        mem[_4905 + 228] = userStates[address(_3192)][s].field_0
                                        mem[_4905 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _4905 + ceil32(return_data.size) + 165
                                        mem[_4905 + 164] = return_data.size
                                        mem[_4905 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4905 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4905 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_4905 + ceil32(return_data.size) + idx + 233] = mem[_4905 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4905 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_4905 + 196] == bool(mem[_4905 + 196])
                                            if not mem[_4905 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3192)][s].field_256 = 0
                                        mem[_4905 + ceil32(return_data.size) + 165] = s
                                        mem[_4905 + ceil32(return_data.size) + 197] = address(_3192)
                                        mem[_4905 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                        mem[_4905 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        else:
                            userStates[address(_3192)][s].field_0 = 1000000000000000000 * 10^18
                            if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                revert with 'NH{q', 17
                            mem[0] = address(_3192)
                            mem[32] = 103
                            if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                            if userStates[address(_3192)][s].field_256 <= 0:
                                mem[mem[64]] = s
                                mem[mem[64] + 32] = address(_3192)
                                mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[s].field_0)
                                staticcall rewards[s].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4860 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4860] == mem[_4860]
                                if mem[_4860] <= userStates[address(_3192)][s].field_256:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3192)
                                    mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    _4910 = mem[64]
                                    mem[mem[64] + 36] = address(_3192)
                                    mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                    _4943 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_4943 + 32] = mem[_4943 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _4910 + 164
                                    mem[_4910 + 100] = 32
                                    mem[_4910 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[s].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _5010 = mem[_4943]
                                    idx = 0
                                    while idx < _5010:
                                        mem[_4910 + idx + 164] = mem[_4943 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_5010) > _5010:
                                        mem[_4910 + _5010 + 164] = 0
                                    call rewards[s].field_0.mem[_4910 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_4910 + 168 len _5010 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_4910 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4910 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_4910 + idx + 232] = mem[_4910 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4910 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3192)][s].field_256 = 0
                                        mem[_4910 + 164] = s
                                        mem[_4910 + 196] = address(_3192)
                                        mem[_4910 + 228] = userStates[address(_3192)][s].field_0
                                        mem[_4910 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _4910 + ceil32(return_data.size) + 165
                                        mem[_4910 + 164] = return_data.size
                                        mem[_4910 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_4910 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4910 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_4910 + ceil32(return_data.size) + idx + 233] = mem[_4910 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_4910 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_4910 + 196] == bool(mem[_4910 + 196])
                                            if not mem[_4910 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(_3192)][s].field_256 = 0
                                        mem[_4910 + ceil32(return_data.size) + 165] = s
                                        mem[_4910 + ceil32(return_data.size) + 197] = address(_3192)
                                        mem[_4910 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                        mem[_4910 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                else:
                    if block.number < rewards[s].field_768:
                        if block.number < rewards[s].field_1280:
                            revert with 'NH{q', 17
                        if not block.number - rewards[s].field_1280:
                            if userStates[address(_3192)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3192)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                if userStates[address(_3192)][s].field_256 <= 0:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3192)
                                    mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4879 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4879] == mem[_4879]
                                    if mem[_4879] <= userStates[address(_3192)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        _4917 = mem[64]
                                        mem[mem[64] + 36] = address(_3192)
                                        mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                        _4984 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4984 + 32] = mem[_4984 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _4917 + 164
                                        mem[_4917 + 100] = 32
                                        mem[_4917 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[s].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _5068 = mem[_4984]
                                        idx = 0
                                        while idx < _5068:
                                            mem[_4917 + idx + 164] = mem[_4984 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5068) > _5068:
                                            mem[_4917 + _5068 + 164] = 0
                                        call rewards[s].field_0.mem[_4917 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4917 + 168 len _5068 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4917 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4917 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_4917 + idx + 232] = mem[_4917 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4917 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_4917 + 164] = s
                                            mem[_4917 + 196] = address(_3192)
                                            mem[_4917 + 228] = userStates[address(_3192)][s].field_0
                                            mem[_4917 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _4917 + ceil32(return_data.size) + 165
                                            mem[_4917 + 164] = return_data.size
                                            mem[_4917 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4917 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4917 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_4917 + ceil32(return_data.size) + idx + 233] = mem[_4917 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4917 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_4917 + 196] == bool(mem[_4917 + 196])
                                                if not mem[_4917 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_4917 + ceil32(return_data.size) + 165] = s
                                            mem[_4917 + ceil32(return_data.size) + 197] = address(_3192)
                                            mem[_4917 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                            mem[_4917 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4884 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4884] == mem[_4884]
                                        if mem[_4884] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _4923 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _4992 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_4992 + 32] = mem[_4992 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _4923 + 164
                                            mem[_4923 + 100] = 32
                                            mem[_4923 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5074 = mem[_4992]
                                            idx = 0
                                            while idx < _5074:
                                                mem[_4923 + idx + 164] = mem[_4992 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5074) > _5074:
                                                mem[_4923 + _5074 + 164] = 0
                                            call rewards[s].field_0.mem[_4923 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_4923 + 168 len _5074 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_4923 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4923 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4923 + idx + 232] = mem[_4923 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4923 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4923 + 164] = s
                                                mem[_4923 + 196] = address(_3192)
                                                mem[_4923 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_4923 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _4923 + ceil32(return_data.size) + 165
                                                mem[_4923 + 164] = return_data.size
                                                mem[_4923 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_4923 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4923 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4923 + ceil32(return_data.size) + idx + 233] = mem[_4923 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4923 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_4923 + 196] == bool(mem[_4923 + 196])
                                                    if not mem[_4923 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4923 + ceil32(return_data.size) + 165] = s
                                                mem[_4923 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_4923 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_4923 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3192)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4889 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4889] == mem[_4889]
                                        if mem[_4889] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _4929 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _5003 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5003 + 32] = mem[_5003 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _4929 + 164
                                            mem[_4929 + 100] = 32
                                            mem[_4929 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5084 = mem[_5003]
                                            idx = 0
                                            while idx < _5084:
                                                mem[_4929 + idx + 164] = mem[_5003 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5084) > _5084:
                                                mem[_4929 + _5084 + 164] = 0
                                            call rewards[s].field_0.mem[_4929 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_4929 + 168 len _5084 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_4929 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4929 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4929 + idx + 232] = mem[_4929 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4929 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4929 + 164] = s
                                                mem[_4929 + 196] = address(_3192)
                                                mem[_4929 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_4929 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _4929 + ceil32(return_data.size) + 165
                                                mem[_4929 + 164] = return_data.size
                                                mem[_4929 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_4929 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4929 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4929 + ceil32(return_data.size) + idx + 233] = mem[_4929 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4929 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_4929 + 196] == bool(mem[_4929 + 196])
                                                    if not mem[_4929 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4929 + ceil32(return_data.size) + 165] = s
                                                mem[_4929 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_4929 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_4929 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        else:
                            if block.number - rewards[s].field_1280 and rewards[s].field_256 > -1 / block.number - rewards[s].field_1280:
                                revert with 'NH{q', 17
                            if (block.number * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[s].field_1024 > -((1000000000000000000 * 10^18 * block.number * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked) - 1:
                                revert with 'NH{q', 17
                            rewards[s].field_1024 += (1000000000000000000 * 10^18 * block.number * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked
                            rewards[s].field_1280 = block.number
                            if userStates[address(_3192)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3192)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                if userStates[address(_3192)][s].field_256 <= 0:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3192)
                                    mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5012 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5012] == mem[_5012]
                                    if mem[_5012] <= userStates[address(_3192)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        _5143 = mem[64]
                                        mem[mem[64] + 36] = address(_3192)
                                        mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                        _5437 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5437 + 32] = mem[_5437 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _5143 + 164
                                        mem[_5143 + 100] = 32
                                        mem[_5143 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[s].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _5729 = mem[_5437]
                                        idx = 0
                                        while idx < _5729:
                                            mem[_5143 + idx + 164] = mem[_5437 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5729) > _5729:
                                            mem[_5143 + _5729 + 164] = 0
                                        call rewards[s].field_0.mem[_5143 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5143 + 168 len _5729 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5143 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5143 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_5143 + idx + 232] = mem[_5143 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5143 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_5143 + 164] = s
                                            mem[_5143 + 196] = address(_3192)
                                            mem[_5143 + 228] = userStates[address(_3192)][s].field_0
                                            mem[_5143 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _5143 + ceil32(return_data.size) + 165
                                            mem[_5143 + 164] = return_data.size
                                            mem[_5143 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5143 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5143 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_5143 + ceil32(return_data.size) + idx + 233] = mem[_5143 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5143 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_5143 + 196] == bool(mem[_5143 + 196])
                                                if not mem[_5143 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_5143 + ceil32(return_data.size) + 165] = s
                                            mem[_5143 + ceil32(return_data.size) + 197] = address(_3192)
                                            mem[_5143 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                            mem[_5143 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5020 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5020] == mem[_5020]
                                        if mem[_5020] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5175 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _5458 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5458 + 32] = mem[_5458 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _5175 + 164
                                            mem[_5175 + 100] = 32
                                            mem[_5175 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5737 = mem[_5458]
                                            idx = 0
                                            while idx < _5737:
                                                mem[_5175 + idx + 164] = mem[_5458 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5737) > _5737:
                                                mem[_5175 + _5737 + 164] = 0
                                            call rewards[s].field_0.mem[_5175 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5175 + 168 len _5737 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5175 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5175 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5175 + idx + 232] = mem[_5175 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5175 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5175 + 164] = s
                                                mem[_5175 + 196] = address(_3192)
                                                mem[_5175 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_5175 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5175 + ceil32(return_data.size) + 165
                                                mem[_5175 + 164] = return_data.size
                                                mem[_5175 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5175 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5175 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5175 + ceil32(return_data.size) + idx + 233] = mem[_5175 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5175 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_5175 + 196] == bool(mem[_5175 + 196])
                                                    if not mem[_5175 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5175 + ceil32(return_data.size) + 165] = s
                                                mem[_5175 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_5175 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_5175 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3192)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5026 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5026] == mem[_5026]
                                        if mem[_5026] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5201 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _5488 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5488 + 32] = mem[_5488 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _5201 + 164
                                            mem[_5201 + 100] = 32
                                            mem[_5201 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5748 = mem[_5488]
                                            idx = 0
                                            while idx < _5748:
                                                mem[_5201 + idx + 164] = mem[_5488 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5748) > _5748:
                                                mem[_5201 + _5748 + 164] = 0
                                            call rewards[s].field_0.mem[_5201 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5201 + 168 len _5748 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5201 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5201 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5201 + idx + 232] = mem[_5201 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5201 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5201 + 164] = s
                                                mem[_5201 + 196] = address(_3192)
                                                mem[_5201 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_5201 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5201 + ceil32(return_data.size) + 165
                                                mem[_5201 + 164] = return_data.size
                                                mem[_5201 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5201 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5201 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5201 + ceil32(return_data.size) + idx + 233] = mem[_5201 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5201 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_5201 + 196] == bool(mem[_5201 + 196])
                                                    if not mem[_5201 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5201 + ceil32(return_data.size) + 165] = s
                                                mem[_5201 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_5201 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_5201 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[s].field_768 < rewards[s].field_1280:
                            revert with 'NH{q', 17
                        if not rewards[s].field_768 - rewards[s].field_1280:
                            if userStates[address(_3192)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3192)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                if userStates[address(_3192)][s].field_256 <= 0:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3192)
                                    mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4881 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4881] == mem[_4881]
                                    if mem[_4881] <= userStates[address(_3192)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        _4920 = mem[64]
                                        mem[mem[64] + 36] = address(_3192)
                                        mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                        _4986 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_4986 + 32] = mem[_4986 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _4920 + 164
                                        mem[_4920 + 100] = 32
                                        mem[_4920 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[s].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _5069 = mem[_4986]
                                        idx = 0
                                        while idx < _5069:
                                            mem[_4920 + idx + 164] = mem[_4986 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5069) > _5069:
                                            mem[_4920 + _5069 + 164] = 0
                                        call rewards[s].field_0.mem[_4920 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_4920 + 168 len _5069 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_4920 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4920 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_4920 + idx + 232] = mem[_4920 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4920 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_4920 + 164] = s
                                            mem[_4920 + 196] = address(_3192)
                                            mem[_4920 + 228] = userStates[address(_3192)][s].field_0
                                            mem[_4920 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _4920 + ceil32(return_data.size) + 165
                                            mem[_4920 + 164] = return_data.size
                                            mem[_4920 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_4920 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4920 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_4920 + ceil32(return_data.size) + idx + 233] = mem[_4920 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_4920 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_4920 + 196] == bool(mem[_4920 + 196])
                                                if not mem[_4920 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_4920 + ceil32(return_data.size) + 165] = s
                                            mem[_4920 + ceil32(return_data.size) + 197] = address(_3192)
                                            mem[_4920 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                            mem[_4920 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4885 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4885] == mem[_4885]
                                        if mem[_4885] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _4925 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _4996 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_4996 + 32] = mem[_4996 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _4925 + 164
                                            mem[_4925 + 100] = 32
                                            mem[_4925 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5075 = mem[_4996]
                                            idx = 0
                                            while idx < _5075:
                                                mem[_4925 + idx + 164] = mem[_4996 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5075) > _5075:
                                                mem[_4925 + _5075 + 164] = 0
                                            call rewards[s].field_0.mem[_4925 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_4925 + 168 len _5075 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_4925 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4925 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4925 + idx + 232] = mem[_4925 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4925 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4925 + 164] = s
                                                mem[_4925 + 196] = address(_3192)
                                                mem[_4925 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_4925 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _4925 + ceil32(return_data.size) + 165
                                                mem[_4925 + 164] = return_data.size
                                                mem[_4925 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_4925 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4925 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4925 + ceil32(return_data.size) + idx + 233] = mem[_4925 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4925 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_4925 + 196] == bool(mem[_4925 + 196])
                                                    if not mem[_4925 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4925 + ceil32(return_data.size) + 165] = s
                                                mem[_4925 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_4925 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_4925 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3192)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4890 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4890] == mem[_4890]
                                        if mem[_4890] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _4930 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _5007 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5007 + 32] = mem[_5007 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _4930 + 164
                                            mem[_4930 + 100] = 32
                                            mem[_4930 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5086 = mem[_5007]
                                            idx = 0
                                            while idx < _5086:
                                                mem[_4930 + idx + 164] = mem[_5007 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5086) > _5086:
                                                mem[_4930 + _5086 + 164] = 0
                                            call rewards[s].field_0.mem[_4930 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_4930 + 168 len _5086 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_4930 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4930 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4930 + idx + 232] = mem[_4930 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4930 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4930 + 164] = s
                                                mem[_4930 + 196] = address(_3192)
                                                mem[_4930 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_4930 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _4930 + ceil32(return_data.size) + 165
                                                mem[_4930 + 164] = return_data.size
                                                mem[_4930 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_4930 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4930 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_4930 + ceil32(return_data.size) + idx + 233] = mem[_4930 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_4930 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_4930 + 196] == bool(mem[_4930 + 196])
                                                    if not mem[_4930 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_4930 + ceil32(return_data.size) + 165] = s
                                                mem[_4930 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_4930 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_4930 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[s].field_768 - rewards[s].field_1280 and rewards[s].field_256 > -1 / rewards[s].field_768 - rewards[s].field_1280:
                                revert with 'NH{q', 17
                            if (rewards[s].field_768 * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[s].field_768 * rewards[s].field_256) - (rewards[s].field_1280 * rewards[s].field_256):
                                revert with 'NH{q', 17
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if rewards[s].field_1024 > -((1000000000000000000 * 10^18 * rewards[s].field_768 * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked) - 1:
                                revert with 'NH{q', 17
                            rewards[s].field_1024 += (1000000000000000000 * 10^18 * rewards[s].field_768 * rewards[s].field_256) - (1000000000000000000 * 10^18 * rewards[s].field_1280 * rewards[s].field_256) / totalStaked
                            rewards[s].field_1280 = rewards[s].field_768
                            if userStates[address(_3192)][s].field_0:
                                if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = address(_3192)
                                mem[32] = 103
                                if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                if userStates[address(_3192)][s].field_256 <= 0:
                                    mem[mem[64]] = s
                                    mem[mem[64] + 32] = address(_3192)
                                    mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                    mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[s].field_0)
                                    staticcall rewards[s].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5015 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5015] == mem[_5015]
                                    if mem[_5015] <= userStates[address(_3192)][s].field_256:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        _5148 = mem[64]
                                        mem[mem[64] + 36] = address(_3192)
                                        mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                        _5447 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5447 + 32] = mem[_5447 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _5148 + 164
                                        mem[_5148 + 100] = 32
                                        mem[_5148 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[s].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _5730 = mem[_5447]
                                        idx = 0
                                        while idx < _5730:
                                            mem[_5148 + idx + 164] = mem[_5447 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_5730) > _5730:
                                            mem[_5148 + _5730 + 164] = 0
                                        call rewards[s].field_0.mem[_5148 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5148 + 168 len _5730 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5148 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5148 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_5148 + idx + 232] = mem[_5148 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5148 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_5148 + 164] = s
                                            mem[_5148 + 196] = address(_3192)
                                            mem[_5148 + 228] = userStates[address(_3192)][s].field_0
                                            mem[_5148 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _5148 + ceil32(return_data.size) + 165
                                            mem[_5148 + 164] = return_data.size
                                            mem[_5148 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5148 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5148 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_5148 + ceil32(return_data.size) + idx + 233] = mem[_5148 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5148 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_5148 + 196] == bool(mem[_5148 + 196])
                                                if not mem[_5148 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(_3192)][s].field_256 = 0
                                            mem[_5148 + ceil32(return_data.size) + 165] = s
                                            mem[_5148 + ceil32(return_data.size) + 197] = address(_3192)
                                            mem[_5148 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                            mem[_5148 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                            else:
                                if rewards[s].field_1024 < 1000000000000000000 * 10^18:
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5022 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5022] == mem[_5022]
                                        if mem[_5022] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5179 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _5471 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5471 + 32] = mem[_5471 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _5179 + 164
                                            mem[_5179 + 100] = 32
                                            mem[_5179 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5738 = mem[_5471]
                                            idx = 0
                                            while idx < _5738:
                                                mem[_5179 + idx + 164] = mem[_5471 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5738) > _5738:
                                                mem[_5179 + _5738 + 164] = 0
                                            call rewards[s].field_0.mem[_5179 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5179 + 168 len _5738 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5179 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5179 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5179 + idx + 232] = mem[_5179 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5179 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5179 + 164] = s
                                                mem[_5179 + 196] = address(_3192)
                                                mem[_5179 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_5179 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5179 + ceil32(return_data.size) + 165
                                                mem[_5179 + 164] = return_data.size
                                                mem[_5179 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5179 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5179 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5179 + ceil32(return_data.size) + idx + 233] = mem[_5179 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5179 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_5179 + 196] == bool(mem[_5179 + 196])
                                                    if not mem[_5179 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5179 + ceil32(return_data.size) + 165] = s
                                                mem[_5179 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_5179 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_5179 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                else:
                                    userStates[address(_3192)][s].field_0 = 1000000000000000000 * 10^18
                                    if rewards[s].field_1024 < userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    mem[0] = address(_3192)
                                    mem[32] = 103
                                    if rewards[s].field_1024 - userStates[address(_3192)][s].field_0 and userStaked[address(_3192)] > -1 / rewards[s].field_1024 - userStates[address(_3192)][s].field_0:
                                        revert with 'NH{q', 17
                                    if userStates[address(_3192)][s].field_256 > -((rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    userStates[address(_3192)][s].field_256 += (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    userStates[address(_3192)][s].field_0 = rewards[s].field_1024
                                    if userStates[address(_3192)][s].field_256 <= 0:
                                        mem[mem[64]] = s
                                        mem[mem[64] + 32] = address(_3192)
                                        mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                        mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(rewards[s].field_0)
                                        staticcall rewards[s].field_0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5028 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5028] == mem[_5028]
                                        if mem[_5028] <= userStates[address(_3192)][s].field_256:
                                            mem[mem[64]] = s
                                            mem[mem[64] + 32] = address(_3192)
                                            mem[mem[64] + 64] = userStates[address(_3192)][s].field_0
                                            mem[mem[64] + 96] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                        else:
                                            _5203 = mem[64]
                                            mem[mem[64] + 36] = address(_3192)
                                            mem[mem[64] + 68] = userStates[address(_3192)][s].field_256
                                            _5503 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_5503 + 32] = mem[_5503 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                            mem[64] = _5203 + 164
                                            mem[_5203 + 100] = 32
                                            mem[_5203 + 132] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if ext_code.size(rewards[s].field_0) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            _5754 = mem[_5503]
                                            idx = 0
                                            while idx < _5754:
                                                mem[_5203 + idx + 164] = mem[_5503 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_5754) > _5754:
                                                mem[_5203 + _5754 + 164] = 0
                                            call rewards[s].field_0.mem[_5203 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5203 + 168 len _5754 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96] > 0:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_5203 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5203 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5203 + idx + 232] = mem[_5203 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5203 + 232]
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5203 + 164] = s
                                                mem[_5203 + 196] = address(_3192)
                                                mem[_5203 + 228] = userStates[address(_3192)][s].field_0
                                                mem[_5203 + 260] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
                                            else:
                                                mem[64] = _5203 + ceil32(return_data.size) + 165
                                                mem[_5203 + 164] = return_data.size
                                                mem[_5203 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_5203 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5203 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[_5203 + ceil32(return_data.size) + idx + 233] = mem[_5203 + idx + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_5203 + ceil32(return_data.size) + 233]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    require mem[_5203 + 196] == bool(mem[_5203 + 196])
                                                    if not mem[_5203 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                userStates[address(_3192)][s].field_256 = 0
                                                mem[_5203 + ceil32(return_data.size) + 165] = s
                                                mem[_5203 + ceil32(return_data.size) + 197] = address(_3192)
                                                mem[_5203 + ceil32(return_data.size) + 229] = userStates[address(_3192)][s].field_0
                                                mem[_5203 + ceil32(return_data.size) + 261] = (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
            emit 0x6c649450: s, address(_3192), userStates[address(_3192)][s].field_0, (rewards[s].field_1024 * userStaked[address(_3192)]) - (userStates[address(_3192)][s].field_0 * userStaked[address(_3192)]) / 1000000000000000000 * 10^18
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function deposit(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 1
    while idx <= rewardsId:
        if not totalStaked:
            if userStates[address(msg.sender)][idx].field_0:
                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 103
                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                    revert with 'NH{q', 17
                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                if userStates[address(msg.sender)][idx].field_256 <= 0:
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(rewards[idx].field_0)
                    staticcall rewards[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1823] == mem[_1823]
                    if mem[_1823] <= userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        _1881 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                        _1927 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1927 + 32] = mem[_1927 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _1881 + 164
                        mem[_1881 + 100] = 32
                        mem[_1881 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(rewards[idx].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _2015 = mem[_1927]
                        s = 0
                        while s < _2015:
                            mem[_1881 + s + 164] = mem[_1927 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2015) > _2015:
                            mem[_1881 + _2015 + 164] = 0
                        call rewards[idx].field_0.mem[_1881 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1881 + 168 len _2015 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1881 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1881 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1881 + idx + 232] = mem[_1881 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1881 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1881 + 164] = idx
                            mem[_1881 + 196] = msg.sender
                            mem[_1881 + 228] = userStates[address(msg.sender)][idx].field_0
                            mem[_1881 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[64] = _1881 + ceil32(return_data.size) + 165
                            mem[_1881 + 164] = return_data.size
                            mem[_1881 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1881 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1881 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1881 + ceil32(return_data.size) + idx + 233] = mem[_1881 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1881 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_1881 + 196] == bool(mem[_1881 + 196])
                                if not mem[_1881 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1881 + ceil32(return_data.size) + 165] = idx
                            mem[_1881 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_1881 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                            mem[_1881 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
            else:
                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if userStates[address(msg.sender)][idx].field_256 <= 0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1829] == mem[_1829]
                        if mem[_1829] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1889 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1934 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1934 + 32] = mem[_1934 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _1889 + 164
                            mem[_1889 + 100] = 32
                            mem[_1889 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(rewards[idx].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _2025 = mem[_1934]
                            s = 0
                            while s < _2025:
                                mem[_1889 + s + 164] = mem[_1934 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2025) > _2025:
                                mem[_1889 + _2025 + 164] = 0
                            call rewards[idx].field_0.mem[_1889 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1889 + 168 len _2025 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1889 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1889 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1889 + idx + 232] = mem[_1889 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1889 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1889 + 164] = idx
                                mem[_1889 + 196] = msg.sender
                                mem[_1889 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1889 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1889 + ceil32(return_data.size) + 165
                                mem[_1889 + 164] = return_data.size
                                mem[_1889 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1889 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1889 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1889 + ceil32(return_data.size) + idx + 233] = mem[_1889 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1889 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_1889 + 196] == bool(mem[_1889 + 196])
                                    if not mem[_1889 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1889 + ceil32(return_data.size) + 165] = idx
                                mem[_1889 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1889 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1889 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if userStates[address(msg.sender)][idx].field_256 <= 0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1835] == mem[_1835]
                        if mem[_1835] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1897 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1940 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1940 + 32] = mem[_1940 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _1897 + 164
                            mem[_1897 + 100] = 32
                            mem[_1897 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(rewards[idx].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _2046 = mem[_1940]
                            s = 0
                            while s < _2046:
                                mem[_1897 + s + 164] = mem[_1940 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2046) > _2046:
                                mem[_1897 + _2046 + 164] = 0
                            call rewards[idx].field_0.mem[_1897 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1897 + 168 len _2046 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1897 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1897 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1897 + idx + 232] = mem[_1897 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1897 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1897 + 164] = idx
                                mem[_1897 + 196] = msg.sender
                                mem[_1897 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1897 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1897 + ceil32(return_data.size) + 165
                                mem[_1897 + 164] = return_data.size
                                mem[_1897 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1897 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1897 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1897 + ceil32(return_data.size) + idx + 233] = mem[_1897 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1897 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_1897 + 196] == bool(mem[_1897 + 196])
                                    if not mem[_1897 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1897 + ceil32(return_data.size) + 165] = idx
                                mem[_1897 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1897 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1897 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        else:
            if rewards[idx].field_512 >= block.number:
                if userStates[address(msg.sender)][idx].field_0:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if userStates[address(msg.sender)][idx].field_256 <= 0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1827 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1827] == mem[_1827]
                        if mem[_1827] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1886 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1931 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1931 + 32] = mem[_1931 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _1886 + 164
                            mem[_1886 + 100] = 32
                            mem[_1886 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(rewards[idx].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _2024 = mem[_1931]
                            s = 0
                            while s < _2024:
                                mem[_1886 + s + 164] = mem[_1931 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2024) > _2024:
                                mem[_1886 + _2024 + 164] = 0
                            call rewards[idx].field_0.mem[_1886 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1886 + 168 len _2024 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1886 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1886 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1886 + idx + 232] = mem[_1886 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1886 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1886 + 164] = idx
                                mem[_1886 + 196] = msg.sender
                                mem[_1886 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1886 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1886 + ceil32(return_data.size) + 165
                                mem[_1886 + 164] = return_data.size
                                mem[_1886 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1886 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1886 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1886 + ceil32(return_data.size) + idx + 233] = mem[_1886 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1886 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_1886 + 196] == bool(mem[_1886 + 196])
                                    if not mem[_1886 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1886 + ceil32(return_data.size) + 165] = idx
                                mem[_1886 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1886 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1886 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                        if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 103
                        if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if userStates[address(msg.sender)][idx].field_256 <= 0:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1834 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1834] == mem[_1834]
                            if mem[_1834] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1895 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1937 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1937 + 32] = mem[_1937 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _1895 + 164
                                mem[_1895 + 100] = 32
                                mem[_1895 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(rewards[idx].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _2044 = mem[_1937]
                                s = 0
                                while s < _2044:
                                    mem[_1895 + s + 164] = mem[_1937 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2044) > _2044:
                                    mem[_1895 + _2044 + 164] = 0
                                call rewards[idx].field_0.mem[_1895 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1895 + 168 len _2044 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1895 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1895 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1895 + idx + 232] = mem[_1895 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1895 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1895 + 164] = idx
                                    mem[_1895 + 196] = msg.sender
                                    mem[_1895 + 228] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1895 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _1895 + ceil32(return_data.size) + 165
                                    mem[_1895 + 164] = return_data.size
                                    mem[_1895 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1895 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1895 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1895 + ceil32(return_data.size) + idx + 233] = mem[_1895 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1895 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_1895 + 196] == bool(mem[_1895 + 196])
                                        if not mem[_1895 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1895 + ceil32(return_data.size) + 165] = idx
                                    mem[_1895 + ceil32(return_data.size) + 197] = msg.sender
                                    mem[_1895 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1895 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                        if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 103
                        if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if userStates[address(msg.sender)][idx].field_256 <= 0:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1840 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1840] == mem[_1840]
                            if mem[_1840] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1902 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1944 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1944 + 32] = mem[_1944 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _1902 + 164
                                mem[_1902 + 100] = 32
                                mem[_1902 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(rewards[idx].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _2064 = mem[_1944]
                                s = 0
                                while s < _2064:
                                    mem[_1902 + s + 164] = mem[_1944 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2064) > _2064:
                                    mem[_1902 + _2064 + 164] = 0
                                call rewards[idx].field_0.mem[_1902 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1902 + 168 len _2064 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1902 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1902 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1902 + idx + 232] = mem[_1902 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1902 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1902 + 164] = idx
                                    mem[_1902 + 196] = msg.sender
                                    mem[_1902 + 228] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1902 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _1902 + ceil32(return_data.size) + 165
                                    mem[_1902 + 164] = return_data.size
                                    mem[_1902 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1902 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1902 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1902 + ceil32(return_data.size) + idx + 233] = mem[_1902 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1902 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_1902 + 196] == bool(mem[_1902 + 196])
                                        if not mem[_1902 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1902 + ceil32(return_data.size) + 165] = idx
                                    mem[_1902 + ceil32(return_data.size) + 197] = msg.sender
                                    mem[_1902 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1902 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
            else:
                if block.number < rewards[idx].field_768:
                    if block.number < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if not block.number - rewards[idx].field_1280:
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1865 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1865] == mem[_1865]
                                if mem[_1865] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _1916 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2020 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2020 + 32] = mem[_2020 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _1916 + 164
                                    mem[_1916 + 100] = 32
                                    mem[_1916 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2148 = mem[_2020]
                                    s = 0
                                    while s < _2148:
                                        mem[_1916 + s + 164] = mem[_2020 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2148) > _2148:
                                        mem[_1916 + _2148 + 164] = 0
                                    call rewards[idx].field_0.mem[_1916 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1916 + 168 len _2148 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_1916 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1916 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1916 + idx + 232] = mem[_1916 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1916 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1916 + 164] = idx
                                        mem[_1916 + 196] = msg.sender
                                        mem[_1916 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1916 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _1916 + ceil32(return_data.size) + 165
                                        mem[_1916 + 164] = return_data.size
                                        mem[_1916 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_1916 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1916 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1916 + ceil32(return_data.size) + idx + 233] = mem[_1916 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1916 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_1916 + 196] == bool(mem[_1916 + 196])
                                            if not mem[_1916 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1916 + ceil32(return_data.size) + 165] = idx
                                        mem[_1916 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_1916 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1916 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1871 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1871] == mem[_1871]
                                    if mem[_1871] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1923 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2038 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2038 + 32] = mem[_2038 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1923 + 164
                                        mem[_1923 + 100] = 32
                                        mem[_1923 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2154 = mem[_2038]
                                        s = 0
                                        while s < _2154:
                                            mem[_1923 + s + 164] = mem[_2038 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2154) > _2154:
                                            mem[_1923 + _2154 + 164] = 0
                                        call rewards[idx].field_0.mem[_1923 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1923 + 168 len _2154 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1923 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1923 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1923 + idx + 232] = mem[_1923 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1923 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1923 + 164] = idx
                                            mem[_1923 + 196] = msg.sender
                                            mem[_1923 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1923 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1923 + ceil32(return_data.size) + 165
                                            mem[_1923 + 164] = return_data.size
                                            mem[_1923 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1923 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1923 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1923 + ceil32(return_data.size) + idx + 233] = mem[_1923 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1923 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1923 + 196] == bool(mem[_1923 + 196])
                                                if not mem[_1923 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1923 + ceil32(return_data.size) + 165] = idx
                                            mem[_1923 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1923 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1923 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1877 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1877] == mem[_1877]
                                    if mem[_1877] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1929 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2057 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2057 + 32] = mem[_2057 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1929 + 164
                                        mem[_1929 + 100] = 32
                                        mem[_1929 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2168 = mem[_2057]
                                        s = 0
                                        while s < _2168:
                                            mem[_1929 + s + 164] = mem[_2057 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2168) > _2168:
                                            mem[_1929 + _2168 + 164] = 0
                                        call rewards[idx].field_0.mem[_1929 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1929 + 168 len _2168 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1929 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1929 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1929 + idx + 232] = mem[_1929 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1929 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1929 + 164] = idx
                                            mem[_1929 + 196] = msg.sender
                                            mem[_1929 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1929 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1929 + ceil32(return_data.size) + 165
                                            mem[_1929 + 164] = return_data.size
                                            mem[_1929 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1929 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1929 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1929 + ceil32(return_data.size) + idx + 233] = mem[_1929 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1929 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1929 + 196] == bool(mem[_1929 + 196])
                                                if not mem[_1929 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1929 + ceil32(return_data.size) + 165] = idx
                                            mem[_1929 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1929 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1929 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                            revert with 'NH{q', 17
                        rewards[idx].field_1024 += (1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked
                        rewards[idx].field_1280 = block.number
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2070 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2070] == mem[_2070]
                                if mem[_2070] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2253 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2565 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2565 + 32] = mem[_2565 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _2253 + 164
                                    mem[_2253 + 100] = 32
                                    mem[_2253 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2865 = mem[_2565]
                                    s = 0
                                    while s < _2865:
                                        mem[_2253 + s + 164] = mem[_2565 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2865) > _2865:
                                        mem[_2253 + _2865 + 164] = 0
                                    call rewards[idx].field_0.mem[_2253 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2253 + 168 len _2865 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2253 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2253 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2253 + idx + 232] = mem[_2253 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2253 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2253 + 164] = idx
                                        mem[_2253 + 196] = msg.sender
                                        mem[_2253 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2253 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2253 + ceil32(return_data.size) + 165
                                        mem[_2253 + 164] = return_data.size
                                        mem[_2253 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2253 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2253 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2253 + ceil32(return_data.size) + idx + 233] = mem[_2253 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2253 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_2253 + 196] == bool(mem[_2253 + 196])
                                            if not mem[_2253 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2253 + ceil32(return_data.size) + 165] = idx
                                        mem[_2253 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2253 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2253 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2084 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2084] == mem[_2084]
                                    if mem[_2084] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2287 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2586 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2586 + 32] = mem[_2586 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2287 + 164
                                        mem[_2287 + 100] = 32
                                        mem[_2287 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2873 = mem[_2586]
                                        s = 0
                                        while s < _2873:
                                            mem[_2287 + s + 164] = mem[_2586 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2873) > _2873:
                                            mem[_2287 + _2873 + 164] = 0
                                        call rewards[idx].field_0.mem[_2287 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2287 + 168 len _2873 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2287 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2287 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2287 + idx + 232] = mem[_2287 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2287 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2287 + 164] = idx
                                            mem[_2287 + 196] = msg.sender
                                            mem[_2287 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2287 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2287 + ceil32(return_data.size) + 165
                                            mem[_2287 + 164] = return_data.size
                                            mem[_2287 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2287 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2287 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2287 + ceil32(return_data.size) + idx + 233] = mem[_2287 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2287 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2287 + 196] == bool(mem[_2287 + 196])
                                                if not mem[_2287 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2287 + ceil32(return_data.size) + 165] = idx
                                            mem[_2287 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2287 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2287 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2096 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2096] == mem[_2096]
                                    if mem[_2096] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2313 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2616 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2616 + 32] = mem[_2616 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2313 + 164
                                        mem[_2313 + 100] = 32
                                        mem[_2313 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2884 = mem[_2616]
                                        s = 0
                                        while s < _2884:
                                            mem[_2313 + s + 164] = mem[_2616 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2884) > _2884:
                                            mem[_2313 + _2884 + 164] = 0
                                        call rewards[idx].field_0.mem[_2313 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2313 + 168 len _2884 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2313 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2313 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2313 + idx + 232] = mem[_2313 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2313 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2313 + 164] = idx
                                            mem[_2313 + 196] = msg.sender
                                            mem[_2313 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2313 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2313 + ceil32(return_data.size) + 165
                                            mem[_2313 + 164] = return_data.size
                                            mem[_2313 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2313 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2313 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2313 + ceil32(return_data.size) + idx + 233] = mem[_2313 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2313 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2313 + 196] == bool(mem[_2313 + 196])
                                                if not mem[_2313 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2313 + ceil32(return_data.size) + 165] = idx
                                            mem[_2313 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2313 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2313 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    if rewards[idx].field_768 < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if not rewards[idx].field_768 - rewards[idx].field_1280:
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1867 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1867] == mem[_1867]
                                if mem[_1867] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _1919 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2022 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2022 + 32] = mem[_2022 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _1919 + 164
                                    mem[_1919 + 100] = 32
                                    mem[_1919 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2149 = mem[_2022]
                                    s = 0
                                    while s < _2149:
                                        mem[_1919 + s + 164] = mem[_2022 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2149) > _2149:
                                        mem[_1919 + _2149 + 164] = 0
                                    call rewards[idx].field_0.mem[_1919 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1919 + 168 len _2149 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_1919 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1919 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1919 + idx + 232] = mem[_1919 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1919 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1919 + 164] = idx
                                        mem[_1919 + 196] = msg.sender
                                        mem[_1919 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1919 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _1919 + ceil32(return_data.size) + 165
                                        mem[_1919 + 164] = return_data.size
                                        mem[_1919 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_1919 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1919 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1919 + ceil32(return_data.size) + idx + 233] = mem[_1919 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1919 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_1919 + 196] == bool(mem[_1919 + 196])
                                            if not mem[_1919 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1919 + ceil32(return_data.size) + 165] = idx
                                        mem[_1919 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_1919 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1919 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1872 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1872] == mem[_1872]
                                    if mem[_1872] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1925 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2042 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2042 + 32] = mem[_2042 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1925 + 164
                                        mem[_1925 + 100] = 32
                                        mem[_1925 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2155 = mem[_2042]
                                        s = 0
                                        while s < _2155:
                                            mem[_1925 + s + 164] = mem[_2042 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2155) > _2155:
                                            mem[_1925 + _2155 + 164] = 0
                                        call rewards[idx].field_0.mem[_1925 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1925 + 168 len _2155 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1925 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1925 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1925 + idx + 232] = mem[_1925 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1925 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1925 + 164] = idx
                                            mem[_1925 + 196] = msg.sender
                                            mem[_1925 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1925 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1925 + ceil32(return_data.size) + 165
                                            mem[_1925 + 164] = return_data.size
                                            mem[_1925 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1925 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1925 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1925 + ceil32(return_data.size) + idx + 233] = mem[_1925 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1925 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1925 + 196] == bool(mem[_1925 + 196])
                                                if not mem[_1925 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1925 + ceil32(return_data.size) + 165] = idx
                                            mem[_1925 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1925 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1925 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1878 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1878] == mem[_1878]
                                    if mem[_1878] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1930 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2061 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2061 + 32] = mem[_2061 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1930 + 164
                                        mem[_1930 + 100] = 32
                                        mem[_1930 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2170 = mem[_2061]
                                        s = 0
                                        while s < _2170:
                                            mem[_1930 + s + 164] = mem[_2061 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2170) > _2170:
                                            mem[_1930 + _2170 + 164] = 0
                                        call rewards[idx].field_0.mem[_1930 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1930 + 168 len _2170 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1930 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1930 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1930 + idx + 232] = mem[_1930 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1930 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1930 + 164] = idx
                                            mem[_1930 + 196] = msg.sender
                                            mem[_1930 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1930 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1930 + ceil32(return_data.size) + 165
                                            mem[_1930 + 164] = return_data.size
                                            mem[_1930 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1930 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1930 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1930 + ceil32(return_data.size) + idx + 233] = mem[_1930 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1930 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1930 + 196] == bool(mem[_1930 + 196])
                                                if not mem[_1930 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1930 + ceil32(return_data.size) + 165] = idx
                                            mem[_1930 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1930 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1930 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[idx].field_768 - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / rewards[idx].field_768 - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                            revert with 'NH{q', 17
                        rewards[idx].field_1024 += (1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked
                        rewards[idx].field_1280 = rewards[idx].field_768
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2073 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2073] == mem[_2073]
                                if mem[_2073] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2258 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2575 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2575 + 32] = mem[_2575 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _2258 + 164
                                    mem[_2258 + 100] = 32
                                    mem[_2258 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2866 = mem[_2575]
                                    s = 0
                                    while s < _2866:
                                        mem[_2258 + s + 164] = mem[_2575 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2866) > _2866:
                                        mem[_2258 + _2866 + 164] = 0
                                    call rewards[idx].field_0.mem[_2258 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2258 + 168 len _2866 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2258 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2258 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2258 + idx + 232] = mem[_2258 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2258 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2258 + 164] = idx
                                        mem[_2258 + 196] = msg.sender
                                        mem[_2258 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2258 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2258 + ceil32(return_data.size) + 165
                                        mem[_2258 + 164] = return_data.size
                                        mem[_2258 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2258 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2258 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2258 + ceil32(return_data.size) + idx + 233] = mem[_2258 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2258 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_2258 + 196] == bool(mem[_2258 + 196])
                                            if not mem[_2258 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2258 + ceil32(return_data.size) + 165] = idx
                                        mem[_2258 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2258 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2258 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2086 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2086] == mem[_2086]
                                    if mem[_2086] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2291 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2599 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2599 + 32] = mem[_2599 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2291 + 164
                                        mem[_2291 + 100] = 32
                                        mem[_2291 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2874 = mem[_2599]
                                        s = 0
                                        while s < _2874:
                                            mem[_2291 + s + 164] = mem[_2599 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2874) > _2874:
                                            mem[_2291 + _2874 + 164] = 0
                                        call rewards[idx].field_0.mem[_2291 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2291 + 168 len _2874 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2291 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2291 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2291 + idx + 232] = mem[_2291 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2291 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2291 + 164] = idx
                                            mem[_2291 + 196] = msg.sender
                                            mem[_2291 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2291 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2291 + ceil32(return_data.size) + 165
                                            mem[_2291 + 164] = return_data.size
                                            mem[_2291 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2291 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2291 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2291 + ceil32(return_data.size) + idx + 233] = mem[_2291 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2291 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2291 + 196] == bool(mem[_2291 + 196])
                                                if not mem[_2291 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2291 + ceil32(return_data.size) + 165] = idx
                                            mem[_2291 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2291 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2291 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2098 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2098] == mem[_2098]
                                    if mem[_2098] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2315 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2631 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2631 + 32] = mem[_2631 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2315 + 164
                                        mem[_2315 + 100] = 32
                                        mem[_2315 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2890 = mem[_2631]
                                        s = 0
                                        while s < _2890:
                                            mem[_2315 + s + 164] = mem[_2631 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2890) > _2890:
                                            mem[_2315 + _2890 + 164] = 0
                                        call rewards[idx].field_0.mem[_2315 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2315 + 168 len _2890 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2315 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2315 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2315 + idx + 232] = mem[_2315 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2315 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2315 + 164] = idx
                                            mem[_2315 + 196] = msg.sender
                                            mem[_2315 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2315 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2315 + ceil32(return_data.size) + 165
                                            mem[_2315 + 164] = return_data.size
                                            mem[_2315 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2315 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2315 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2315 + ceil32(return_data.size) + idx + 233] = mem[_2315 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2315 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2315 + 196] == bool(mem[_2315 + 196])
                                                if not mem[_2315 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2315 + ceil32(return_data.size) + 165] = idx
                                            mem[_2315 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2315 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2315 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        emit 0x6c649450: idx, msg.sender, userStates[address(msg.sender)][idx].field_0, (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1777 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1778 = mem[_1777]
    require mem[_1777] == mem[_1777]
    mem[0] = msg.sender
    mem[32] = 103
    if arg1 <= mem[_1777]:
        if userStaked[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        userStaked[address(msg.sender)] += arg1
        if totalStaked > -arg1 - 1:
            revert with 'NH{q', 17
        totalStaked += arg1
        _1799 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = arg1
        _1851 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_1799 + 132] = 32
        mem[_1799 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stakeTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1903 = mem[_1851]
        mem[_1799 + 196 len ceil32(mem[_1851])] = mem[_1851 + 32 len ceil32(mem[_1851])]
        if ceil32(_1903) > _1903:
            mem[_1799 + _1903 + 196] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1799 + 200 len _1903 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1799 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_1799 + 228] == bool(mem[_1799 + 228])
                if not mem[_1799 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Deposit(msg.sender, arg1, block.number);
    else:
        if userStaked[address(msg.sender)] > -_1778 - 1:
            revert with 'NH{q', 17
        userStaked[address(msg.sender)] += _1778
        if totalStaked > -_1778 - 1:
            revert with 'NH{q', 17
        totalStaked += _1778
        _1801 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = _1778
        _1856 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_1801 + 132] = 32
        mem[_1801 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stakeTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1904 = mem[_1856]
        mem[_1801 + 196 len ceil32(mem[_1856])] = mem[_1856 + 32 len ceil32(mem[_1856])]
        if ceil32(_1904) > _1904:
            mem[_1801 + _1904 + 196] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1801 + 200 len _1904 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1801 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_1801 + 228] == bool(mem[_1801 + 228])
                if not mem[_1801 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Deposit(msg.sender, _1778, block.number);
}

function withdraw(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 1
    while idx <= rewardsId:
        if not totalStaked:
            if userStates[address(msg.sender)][idx].field_0:
                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 103
                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                    revert with 'NH{q', 17
                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                if userStates[address(msg.sender)][idx].field_256 <= 0:
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(rewards[idx].field_0)
                    staticcall rewards[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1843] == mem[_1843]
                    if mem[_1843] <= userStates[address(msg.sender)][idx].field_256:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        _1906 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                        _1954 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1954 + 32] = mem[_1954 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[64] = _1906 + 164
                        mem[_1906 + 100] = 32
                        mem[_1906 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(rewards[idx].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _2067 = mem[_1954]
                        s = 0
                        while s < _2067:
                            mem[_1906 + s + 164] = mem[_1954 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2067) > _2067:
                            mem[_1906 + _2067 + 164] = 0
                        call rewards[idx].field_0.mem[_1906 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1906 + 168 len _2067 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1906 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1906 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1906 + idx + 232] = mem[_1906 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1906 + 232]
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1906 + 164] = idx
                            mem[_1906 + 196] = msg.sender
                            mem[_1906 + 228] = userStates[address(msg.sender)][idx].field_0
                            mem[_1906 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[64] = _1906 + ceil32(return_data.size) + 165
                            mem[_1906 + 164] = return_data.size
                            mem[_1906 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1906 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1906 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1906 + ceil32(return_data.size) + idx + 233] = mem[_1906 + idx + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1906 + ceil32(return_data.size) + 233]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_1906 + 196] == bool(mem[_1906 + 196])
                                if not mem[_1906 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            userStates[address(msg.sender)][idx].field_256 = 0
                            mem[_1906 + ceil32(return_data.size) + 165] = idx
                            mem[_1906 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_1906 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                            mem[_1906 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
            else:
                if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if userStates[address(msg.sender)][idx].field_256 <= 0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1849] == mem[_1849]
                        if mem[_1849] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1915 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1962 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1962 + 32] = mem[_1962 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _1915 + 164
                            mem[_1915 + 100] = 32
                            mem[_1915 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(rewards[idx].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _2079 = mem[_1962]
                            s = 0
                            while s < _2079:
                                mem[_1915 + s + 164] = mem[_1962 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2079) > _2079:
                                mem[_1915 + _2079 + 164] = 0
                            call rewards[idx].field_0.mem[_1915 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1915 + 168 len _2079 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1915 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1915 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1915 + idx + 232] = mem[_1915 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1915 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1915 + 164] = idx
                                mem[_1915 + 196] = msg.sender
                                mem[_1915 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1915 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1915 + ceil32(return_data.size) + 165
                                mem[_1915 + 164] = return_data.size
                                mem[_1915 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1915 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1915 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1915 + ceil32(return_data.size) + idx + 233] = mem[_1915 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1915 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_1915 + 196] == bool(mem[_1915 + 196])
                                    if not mem[_1915 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1915 + ceil32(return_data.size) + 165] = idx
                                mem[_1915 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1915 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1915 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if userStates[address(msg.sender)][idx].field_256 <= 0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1855] == mem[_1855]
                        if mem[_1855] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1922 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1970 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1970 + 32] = mem[_1970 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _1922 + 164
                            mem[_1922 + 100] = 32
                            mem[_1922 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(rewards[idx].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _2094 = mem[_1970]
                            s = 0
                            while s < _2094:
                                mem[_1922 + s + 164] = mem[_1970 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2094) > _2094:
                                mem[_1922 + _2094 + 164] = 0
                            call rewards[idx].field_0.mem[_1922 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1922 + 168 len _2094 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1922 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1922 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1922 + idx + 232] = mem[_1922 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1922 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1922 + 164] = idx
                                mem[_1922 + 196] = msg.sender
                                mem[_1922 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1922 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1922 + ceil32(return_data.size) + 165
                                mem[_1922 + 164] = return_data.size
                                mem[_1922 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1922 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1922 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1922 + ceil32(return_data.size) + idx + 233] = mem[_1922 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1922 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_1922 + 196] == bool(mem[_1922 + 196])
                                    if not mem[_1922 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1922 + ceil32(return_data.size) + 165] = idx
                                mem[_1922 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1922 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1922 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        else:
            if rewards[idx].field_512 >= block.number:
                if userStates[address(msg.sender)][idx].field_0:
                    if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 103
                    if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                    if userStates[address(msg.sender)][idx].field_256 <= 0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1847] == mem[_1847]
                        if mem[_1847] <= userStates[address(msg.sender)][idx].field_256:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            _1912 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                            _1959 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1959 + 32] = mem[_1959 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _1912 + 164
                            mem[_1912 + 100] = 32
                            mem[_1912 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if ext_code.size(rewards[idx].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _2078 = mem[_1959]
                            s = 0
                            while s < _2078:
                                mem[_1912 + s + 164] = mem[_1959 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2078) > _2078:
                                mem[_1912 + _2078 + 164] = 0
                            call rewards[idx].field_0.mem[_1912 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1912 + 168 len _2078 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1912 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1912 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1912 + idx + 232] = mem[_1912 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1912 + 232]
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1912 + 164] = idx
                                mem[_1912 + 196] = msg.sender
                                mem[_1912 + 228] = userStates[address(msg.sender)][idx].field_0
                                mem[_1912 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[64] = _1912 + ceil32(return_data.size) + 165
                                mem[_1912 + 164] = return_data.size
                                mem[_1912 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1912 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1912 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_1912 + ceil32(return_data.size) + idx + 233] = mem[_1912 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1912 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    require mem[_1912 + 196] == bool(mem[_1912 + 196])
                                    if not mem[_1912 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                userStates[address(msg.sender)][idx].field_256 = 0
                                mem[_1912 + ceil32(return_data.size) + 165] = idx
                                mem[_1912 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_1912 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                mem[_1912 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                        if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 103
                        if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if userStates[address(msg.sender)][idx].field_256 <= 0:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1854 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1854] == mem[_1854]
                            if mem[_1854] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1920 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1967 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1967 + 32] = mem[_1967 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _1920 + 164
                                mem[_1920 + 100] = 32
                                mem[_1920 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(rewards[idx].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _2092 = mem[_1967]
                                s = 0
                                while s < _2092:
                                    mem[_1920 + s + 164] = mem[_1967 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2092) > _2092:
                                    mem[_1920 + _2092 + 164] = 0
                                call rewards[idx].field_0.mem[_1920 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1920 + 168 len _2092 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1920 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1920 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1920 + idx + 232] = mem[_1920 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1920 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1920 + 164] = idx
                                    mem[_1920 + 196] = msg.sender
                                    mem[_1920 + 228] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1920 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _1920 + ceil32(return_data.size) + 165
                                    mem[_1920 + 164] = return_data.size
                                    mem[_1920 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1920 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1920 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1920 + ceil32(return_data.size) + idx + 233] = mem[_1920 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1920 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_1920 + 196] == bool(mem[_1920 + 196])
                                        if not mem[_1920 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1920 + ceil32(return_data.size) + 165] = idx
                                    mem[_1920 + ceil32(return_data.size) + 197] = msg.sender
                                    mem[_1920 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1920 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                        if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 103
                        if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                        if userStates[address(msg.sender)][idx].field_256 <= 0:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                            mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1862] == mem[_1862]
                            if mem[_1862] <= userStates[address(msg.sender)][idx].field_256:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                _1926 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                _1981 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1981 + 32] = mem[_1981 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = _1926 + 164
                                mem[_1926 + 100] = 32
                                mem[_1926 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if ext_code.size(rewards[idx].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _2108 = mem[_1981]
                                s = 0
                                while s < _2108:
                                    mem[_1926 + s + 164] = mem[_1981 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2108) > _2108:
                                    mem[_1926 + _2108 + 164] = 0
                                call rewards[idx].field_0.mem[_1926 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1926 + 168 len _2108 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1926 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1926 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1926 + idx + 232] = mem[_1926 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1926 + 232]
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1926 + 164] = idx
                                    mem[_1926 + 196] = msg.sender
                                    mem[_1926 + 228] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1926 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[64] = _1926 + ceil32(return_data.size) + 165
                                    mem[_1926 + 164] = return_data.size
                                    mem[_1926 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1926 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1926 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[_1926 + ceil32(return_data.size) + idx + 233] = mem[_1926 + idx + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1926 + ceil32(return_data.size) + 233]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        require mem[_1926 + 196] == bool(mem[_1926 + 196])
                                        if not mem[_1926 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    userStates[address(msg.sender)][idx].field_256 = 0
                                    mem[_1926 + ceil32(return_data.size) + 165] = idx
                                    mem[_1926 + ceil32(return_data.size) + 197] = msg.sender
                                    mem[_1926 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                    mem[_1926 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
            else:
                if block.number < rewards[idx].field_768:
                    if block.number < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if not block.number - rewards[idx].field_1280:
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1891 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1891] == mem[_1891]
                                if mem[_1891] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _1941 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2074 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2074 + 32] = mem[_2074 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _1941 + 164
                                    mem[_1941 + 100] = 32
                                    mem[_1941 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2194 = mem[_2074]
                                    s = 0
                                    while s < _2194:
                                        mem[_1941 + s + 164] = mem[_2074 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2194) > _2194:
                                        mem[_1941 + _2194 + 164] = 0
                                    call rewards[idx].field_0.mem[_1941 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1941 + 168 len _2194 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_1941 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1941 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1941 + idx + 232] = mem[_1941 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1941 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1941 + 164] = idx
                                        mem[_1941 + 196] = msg.sender
                                        mem[_1941 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1941 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _1941 + ceil32(return_data.size) + 165
                                        mem[_1941 + 164] = return_data.size
                                        mem[_1941 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_1941 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1941 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1941 + ceil32(return_data.size) + idx + 233] = mem[_1941 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1941 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_1941 + 196] == bool(mem[_1941 + 196])
                                            if not mem[_1941 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1941 + ceil32(return_data.size) + 165] = idx
                                        mem[_1941 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_1941 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1941 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1896 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1896] == mem[_1896]
                                    if mem[_1896] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1950 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2086 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2086 + 32] = mem[_2086 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1950 + 164
                                        mem[_1950 + 100] = 32
                                        mem[_1950 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2204 = mem[_2086]
                                        s = 0
                                        while s < _2204:
                                            mem[_1950 + s + 164] = mem[_2086 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2204) > _2204:
                                            mem[_1950 + _2204 + 164] = 0
                                        call rewards[idx].field_0.mem[_1950 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1950 + 168 len _2204 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1950 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1950 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1950 + idx + 232] = mem[_1950 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1950 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1950 + 164] = idx
                                            mem[_1950 + 196] = msg.sender
                                            mem[_1950 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1950 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1950 + ceil32(return_data.size) + 165
                                            mem[_1950 + 164] = return_data.size
                                            mem[_1950 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1950 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1950 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1950 + ceil32(return_data.size) + idx + 233] = mem[_1950 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1950 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1950 + 196] == bool(mem[_1950 + 196])
                                                if not mem[_1950 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1950 + ceil32(return_data.size) + 165] = idx
                                            mem[_1950 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1950 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1950 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1902 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1902] == mem[_1902]
                                    if mem[_1902] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1957 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2101 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2101 + 32] = mem[_2101 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1957 + 164
                                        mem[_1957 + 100] = 32
                                        mem[_1957 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2216 = mem[_2101]
                                        s = 0
                                        while s < _2216:
                                            mem[_1957 + s + 164] = mem[_2101 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2216) > _2216:
                                            mem[_1957 + _2216 + 164] = 0
                                        call rewards[idx].field_0.mem[_1957 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1957 + 168 len _2216 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1957 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1957 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1957 + idx + 232] = mem[_1957 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1957 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1957 + 164] = idx
                                            mem[_1957 + 196] = msg.sender
                                            mem[_1957 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1957 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1957 + ceil32(return_data.size) + 165
                                            mem[_1957 + 164] = return_data.size
                                            mem[_1957 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1957 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1957 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1957 + ceil32(return_data.size) + idx + 233] = mem[_1957 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1957 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1957 + 196] == bool(mem[_1957 + 196])
                                                if not mem[_1957 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1957 + ceil32(return_data.size) + 165] = idx
                                            mem[_1957 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1957 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1957 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if block.number - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / block.number - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (block.number * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > -((1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                            revert with 'NH{q', 17
                        rewards[idx].field_1024 += (1000000000000000000 * 10^18 * block.number * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked
                        rewards[idx].field_1280 = block.number
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2112 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2112] == mem[_2112]
                                if mem[_2112] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2289 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2593 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2593 + 32] = mem[_2593 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _2289 + 164
                                    mem[_2289 + 100] = 32
                                    mem[_2289 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2885 = mem[_2593]
                                    s = 0
                                    while s < _2885:
                                        mem[_2289 + s + 164] = mem[_2593 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2885) > _2885:
                                        mem[_2289 + _2885 + 164] = 0
                                    call rewards[idx].field_0.mem[_2289 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2289 + 168 len _2885 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2289 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2289 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2289 + idx + 232] = mem[_2289 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2289 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2289 + 164] = idx
                                        mem[_2289 + 196] = msg.sender
                                        mem[_2289 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2289 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2289 + ceil32(return_data.size) + 165
                                        mem[_2289 + 164] = return_data.size
                                        mem[_2289 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2289 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2289 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2289 + ceil32(return_data.size) + idx + 233] = mem[_2289 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2289 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_2289 + 196] == bool(mem[_2289 + 196])
                                            if not mem[_2289 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2289 + ceil32(return_data.size) + 165] = idx
                                        mem[_2289 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2289 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2289 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2120 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2120] == mem[_2120]
                                    if mem[_2120] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2323 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2614 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2614 + 32] = mem[_2614 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2323 + 164
                                        mem[_2323 + 100] = 32
                                        mem[_2323 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2893 = mem[_2614]
                                        s = 0
                                        while s < _2893:
                                            mem[_2323 + s + 164] = mem[_2614 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2893) > _2893:
                                            mem[_2323 + _2893 + 164] = 0
                                        call rewards[idx].field_0.mem[_2323 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2323 + 168 len _2893 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2323 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2323 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2323 + idx + 232] = mem[_2323 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2323 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2323 + 164] = idx
                                            mem[_2323 + 196] = msg.sender
                                            mem[_2323 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2323 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2323 + ceil32(return_data.size) + 165
                                            mem[_2323 + 164] = return_data.size
                                            mem[_2323 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2323 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2323 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2323 + ceil32(return_data.size) + idx + 233] = mem[_2323 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2323 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2323 + 196] == bool(mem[_2323 + 196])
                                                if not mem[_2323 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2323 + ceil32(return_data.size) + 165] = idx
                                            mem[_2323 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2323 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2323 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2126 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2126] == mem[_2126]
                                    if mem[_2126] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2349 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2644 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2644 + 32] = mem[_2644 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2349 + 164
                                        mem[_2349 + 100] = 32
                                        mem[_2349 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2904 = mem[_2644]
                                        s = 0
                                        while s < _2904:
                                            mem[_2349 + s + 164] = mem[_2644 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2904) > _2904:
                                            mem[_2349 + _2904 + 164] = 0
                                        call rewards[idx].field_0.mem[_2349 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2349 + 168 len _2904 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2349 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2349 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2349 + idx + 232] = mem[_2349 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2349 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2349 + 164] = idx
                                            mem[_2349 + 196] = msg.sender
                                            mem[_2349 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2349 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2349 + ceil32(return_data.size) + 165
                                            mem[_2349 + 164] = return_data.size
                                            mem[_2349 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2349 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2349 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2349 + ceil32(return_data.size) + idx + 233] = mem[_2349 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2349 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2349 + 196] == bool(mem[_2349 + 196])
                                                if not mem[_2349 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2349 + ceil32(return_data.size) + 165] = idx
                                            mem[_2349 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2349 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2349 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                else:
                    if rewards[idx].field_768 < rewards[idx].field_1280:
                        revert with 'NH{q', 17
                    if not rewards[idx].field_768 - rewards[idx].field_1280:
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1893 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1893] == mem[_1893]
                                if mem[_1893] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _1944 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2076 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2076 + 32] = mem[_2076 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _1944 + 164
                                    mem[_1944 + 100] = 32
                                    mem[_1944 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2195 = mem[_2076]
                                    s = 0
                                    while s < _2195:
                                        mem[_1944 + s + 164] = mem[_2076 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2195) > _2195:
                                        mem[_1944 + _2195 + 164] = 0
                                    call rewards[idx].field_0.mem[_1944 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1944 + 168 len _2195 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_1944 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1944 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1944 + idx + 232] = mem[_1944 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1944 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1944 + 164] = idx
                                        mem[_1944 + 196] = msg.sender
                                        mem[_1944 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1944 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _1944 + ceil32(return_data.size) + 165
                                        mem[_1944 + 164] = return_data.size
                                        mem[_1944 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_1944 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_1944 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_1944 + ceil32(return_data.size) + idx + 233] = mem[_1944 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_1944 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_1944 + 196] == bool(mem[_1944 + 196])
                                            if not mem[_1944 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_1944 + ceil32(return_data.size) + 165] = idx
                                        mem[_1944 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_1944 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_1944 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1897 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1897] == mem[_1897]
                                    if mem[_1897] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1952 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2090 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2090 + 32] = mem[_2090 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1952 + 164
                                        mem[_1952 + 100] = 32
                                        mem[_1952 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2205 = mem[_2090]
                                        s = 0
                                        while s < _2205:
                                            mem[_1952 + s + 164] = mem[_2090 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2205) > _2205:
                                            mem[_1952 + _2205 + 164] = 0
                                        call rewards[idx].field_0.mem[_1952 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1952 + 168 len _2205 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1952 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1952 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1952 + idx + 232] = mem[_1952 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1952 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1952 + 164] = idx
                                            mem[_1952 + 196] = msg.sender
                                            mem[_1952 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1952 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1952 + ceil32(return_data.size) + 165
                                            mem[_1952 + 164] = return_data.size
                                            mem[_1952 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1952 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1952 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1952 + ceil32(return_data.size) + idx + 233] = mem[_1952 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1952 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1952 + 196] == bool(mem[_1952 + 196])
                                                if not mem[_1952 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1952 + ceil32(return_data.size) + 165] = idx
                                            mem[_1952 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1952 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1952 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1903 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1903] == mem[_1903]
                                    if mem[_1903] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _1958 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2105 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2105 + 32] = mem[_2105 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _1958 + 164
                                        mem[_1958 + 100] = 32
                                        mem[_1958 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2218 = mem[_2105]
                                        s = 0
                                        while s < _2218:
                                            mem[_1958 + s + 164] = mem[_2105 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2218) > _2218:
                                            mem[_1958 + _2218 + 164] = 0
                                        call rewards[idx].field_0.mem[_1958 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1958 + 168 len _2218 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1958 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1958 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1958 + idx + 232] = mem[_1958 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1958 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1958 + 164] = idx
                                            mem[_1958 + 196] = msg.sender
                                            mem[_1958 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1958 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _1958 + ceil32(return_data.size) + 165
                                            mem[_1958 + 164] = return_data.size
                                            mem[_1958 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1958 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1958 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_1958 + ceil32(return_data.size) + idx + 233] = mem[_1958 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1958 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_1958 + 196] == bool(mem[_1958 + 196])
                                                if not mem[_1958 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_1958 + ceil32(return_data.size) + 165] = idx
                                            mem[_1958 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_1958 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_1958 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                    else:
                        if rewards[idx].field_768 - rewards[idx].field_1280 and rewards[idx].field_256 > -1 / rewards[idx].field_768 - rewards[idx].field_1280:
                            revert with 'NH{q', 17
                        if (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256) and 1000000000000000000 * 10^18 > -1 / (rewards[idx].field_768 * rewards[idx].field_256) - (rewards[idx].field_1280 * rewards[idx].field_256):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if rewards[idx].field_1024 > -((1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked) - 1:
                            revert with 'NH{q', 17
                        rewards[idx].field_1024 += (1000000000000000000 * 10^18 * rewards[idx].field_768 * rewards[idx].field_256) - (1000000000000000000 * 10^18 * rewards[idx].field_1280 * rewards[idx].field_256) / totalStaked
                        rewards[idx].field_1280 = rewards[idx].field_768
                        if userStates[address(msg.sender)][idx].field_0:
                            if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 103
                            if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                revert with 'NH{q', 17
                            if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                            if userStates[address(msg.sender)][idx].field_256 <= 0:
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = msg.sender
                                mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2115 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2115] == mem[_2115]
                                if mem[_2115] <= userStates[address(msg.sender)][idx].field_256:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    _2294 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                    _2603 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_2603 + 32] = mem[_2603 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[64] = _2294 + 164
                                    mem[_2294 + 100] = 32
                                    mem[_2294 + 132] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if ext_code.size(rewards[idx].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    _2886 = mem[_2603]
                                    s = 0
                                    while s < _2886:
                                        mem[_2294 + s + 164] = mem[_2603 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2886) > _2886:
                                        mem[_2294 + _2886 + 164] = 0
                                    call rewards[idx].field_0.mem[_2294 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2294 + 168 len _2886 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96] > 0:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_2294 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2294 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2294 + idx + 232] = mem[_2294 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2294 + 232]
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2294 + 164] = idx
                                        mem[_2294 + 196] = msg.sender
                                        mem[_2294 + 228] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2294 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        mem[64] = _2294 + ceil32(return_data.size) + 165
                                        mem[_2294 + 164] = return_data.size
                                        mem[_2294 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2294 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2294 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[_2294 + ceil32(return_data.size) + idx + 233] = mem[_2294 + idx + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_2294 + ceil32(return_data.size) + 233]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            require mem[_2294 + 196] == bool(mem[_2294 + 196])
                                            if not mem[_2294 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        userStates[address(msg.sender)][idx].field_256 = 0
                                        mem[_2294 + ceil32(return_data.size) + 165] = idx
                                        mem[_2294 + ceil32(return_data.size) + 197] = msg.sender
                                        mem[_2294 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                        mem[_2294 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                        else:
                            if rewards[idx].field_1024 < 1000000000000000000 * 10^18:
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2122 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2122] == mem[_2122]
                                    if mem[_2122] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2327 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2627 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2627 + 32] = mem[_2627 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2327 + 164
                                        mem[_2327 + 100] = 32
                                        mem[_2327 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2894 = mem[_2627]
                                        s = 0
                                        while s < _2894:
                                            mem[_2327 + s + 164] = mem[_2627 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2894) > _2894:
                                            mem[_2327 + _2894 + 164] = 0
                                        call rewards[idx].field_0.mem[_2327 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2327 + 168 len _2894 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2327 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2327 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2327 + idx + 232] = mem[_2327 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2327 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2327 + 164] = idx
                                            mem[_2327 + 196] = msg.sender
                                            mem[_2327 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2327 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2327 + ceil32(return_data.size) + 165
                                            mem[_2327 + 164] = return_data.size
                                            mem[_2327 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2327 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2327 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2327 + ceil32(return_data.size) + idx + 233] = mem[_2327 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2327 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2327 + 196] == bool(mem[_2327 + 196])
                                                if not mem[_2327 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2327 + ceil32(return_data.size) + 165] = idx
                                            mem[_2327 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2327 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2327 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                            else:
                                userStates[address(msg.sender)][idx].field_0 = 1000000000000000000 * 10^18
                                if rewards[idx].field_1024 < userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 103
                                if rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0 and userStaked[address(msg.sender)] > -1 / rewards[idx].field_1024 - userStates[address(msg.sender)][idx].field_0:
                                    revert with 'NH{q', 17
                                if userStates[address(msg.sender)][idx].field_256 > -((rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                userStates[address(msg.sender)][idx].field_256 += (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                userStates[address(msg.sender)][idx].field_0 = rewards[idx].field_1024
                                if userStates[address(msg.sender)][idx].field_256 <= 0:
                                    mem[mem[64]] = idx
                                    mem[mem[64] + 32] = msg.sender
                                    mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                    mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2128 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2128] == mem[_2128]
                                    if mem[_2128] <= userStates[address(msg.sender)][idx].field_256:
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = msg.sender
                                        mem[mem[64] + 64] = userStates[address(msg.sender)][idx].field_0
                                        mem[mem[64] + 96] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                    else:
                                        _2351 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = userStates[address(msg.sender)][idx].field_256
                                        _2659 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2659 + 32] = mem[_2659 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                        mem[64] = _2351 + 164
                                        mem[_2351 + 100] = 32
                                        mem[_2351 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if ext_code.size(rewards[idx].field_0) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        _2910 = mem[_2659]
                                        s = 0
                                        while s < _2910:
                                            mem[_2351 + s + 164] = mem[_2659 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2910) > _2910:
                                            mem[_2351 + _2910 + 164] = 0
                                        call rewards[idx].field_0.mem[_2351 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_2351 + 168 len _2910 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96] > 0:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_2351 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2351 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2351 + idx + 232] = mem[_2351 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2351 + 232]
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2351 + 164] = idx
                                            mem[_2351 + 196] = msg.sender
                                            mem[_2351 + 228] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2351 + 260] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
                                        else:
                                            mem[64] = _2351 + ceil32(return_data.size) + 165
                                            mem[_2351 + 164] = return_data.size
                                            mem[_2351 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2351 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2351 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[_2351 + ceil32(return_data.size) + idx + 233] = mem[_2351 + idx + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_2351 + ceil32(return_data.size) + 233]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                require mem[_2351 + 196] == bool(mem[_2351 + 196])
                                                if not mem[_2351 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            userStates[address(msg.sender)][idx].field_256 = 0
                                            mem[_2351 + ceil32(return_data.size) + 165] = idx
                                            mem[_2351 + ceil32(return_data.size) + 197] = msg.sender
                                            mem[_2351 + ceil32(return_data.size) + 229] = userStates[address(msg.sender)][idx].field_0
                                            mem[_2351 + ceil32(return_data.size) + 261] = (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        emit 0x6c649450: idx, msg.sender, userStates[address(msg.sender)][idx].field_0, (rewards[idx].field_1024 * userStaked[address(msg.sender)]) - (userStates[address(msg.sender)][idx].field_0 * userStaked[address(msg.sender)]) / 1000000000000000000 * 10^18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 103
    if arg1 <= userStaked[address(msg.sender)]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1791 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1791] == mem[_1791]
        if mem[_1791] < arg1:
            revert with 0, 'Insufficient balance'
        mem[0] = msg.sender
        mem[32] = 103
        if userStaked[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        userStaked[address(msg.sender)] -= arg1
        if totalStaked < arg1:
            revert with 'NH{q', 17
        totalStaked -= arg1
        _1820 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = arg1
        _1856 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1820 + 100] = 32
        mem[_1820 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stakeTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1901 = mem[_1856]
        mem[_1820 + 164 len ceil32(mem[_1856])] = mem[_1856 + 32 len ceil32(mem[_1856])]
        if ceil32(_1901) > _1901:
            mem[_1820 + _1901 + 164] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1820 + 168 len _1901 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1820 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_1820 + 196] == bool(mem[_1820 + 196])
                if not mem[_1820 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(msg.sender, arg1, block.number);
    else:
        mem[0] = msg.sender
        mem[32] = 103
        mem[mem[64] + 4] = this.address
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1792 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1792] == mem[_1792]
        if mem[_1792] < userStaked[address(msg.sender)]:
            revert with 0, 'Insufficient balance'
        mem[0] = msg.sender
        mem[32] = 103
        if userStaked[address(msg.sender)] < userStaked[address(msg.sender)]:
            revert with 'NH{q', 17
        userStaked[address(msg.sender)] = 0
        if totalStaked < userStaked[address(msg.sender)]:
            revert with 'NH{q', 17
        totalStaked -= userStaked[address(msg.sender)]
        _1824 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = userStaked[address(msg.sender)]
        _1865 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_1824 + 100] = 32
        mem[_1824 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stakeTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1909 = mem[_1865]
        mem[_1824 + 164 len ceil32(mem[_1865])] = mem[_1865 + 32 len ceil32(mem[_1865])]
        if ceil32(_1909) > _1909:
            mem[_1824 + _1909 + 164] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args mem[_1824 + 168 len _1909 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_1824 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_1824 + 196] == bool(mem[_1824 + 196])
                if not mem[_1824 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(msg.sender, userStaked[address(msg.sender)], block.number);
}



}
